/**
 * 
 */
 
 

var mapContainer = document.getElementById('map'), // 지도를 표시할 div
mapOption = {
    center: new kakao.maps.LatLng(37.56646, 126.98121), // 지도의 중심좌표
    level: 7, // 지도의 확대 레벨
    mapTypeId : kakao.maps.MapTypeId.ROADMAP // 지도종류
};

// 지도를 생성한다
var map = new kakao.maps.Map(mapContainer, mapOption);

/** 지도 기본 생성 및 중심 좌표**/
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 7
		// 지도의 확대 레벨 
		};

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		
		
		
/** 마커 삭제 관련 변수 및 함수**/
		var markers = []//마커 배열
		
		// 배열에 추가된 마커들을 지도에 표시하거나 삭제하는 함수입니다
		function setMarkers(map) {
		    for (var i = 0; i < markers.length; i++) {
		        markers[i].setMap(map);
		    }            
		}
		
/***** 지도 현재 위치 표시 *****/	
			// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
		if (navigator.geolocation) {

			// GeoLocation을 이용해서 접속 위치를 얻어옵니다
			navigator.geolocation.getCurrentPosition(function(position) {

				var lat = position.coords.latitude, // 위도
				lon = position.coords.longitude; // 경도

				var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
				message = '<div style="padding:5px;">현재 위치입니다.</div>'; // 인포윈도우에 표시될 내용입니다

				// 마커와 인포윈도우를 표시합니다
				displayMarker(locPosition);
				
				
				
/***** ajax로 현재 위치 기반 3km이내 매장 불러오기 *****/
				$.ajax({
					url : "/mapLoc",
					data : {
						'lat' : lat,
						'lon' : lon
					},
					dataType : "json",
					type : "GET",
					success : function(data) {
						//console.log("data : "+ data.length)
						//alert(JSON.stringify(data));//json 형태로 데이터 확인만

						// 매장 위도 경도 각각 변수 저장
						for (var i = 0; i < data.length; i++) {
							//db에서 불러온 매장 위치 변수로 지정하기
							var name = data[i].storeName
							var lat = data[i].latitude
							var lon = data[i].longitude
							
							// 이름, 위도, 경도 확인
						/* 	console.log("name" + name);
							console.log("lat" + lat);
							console.log("lon" + lon); */

						

							// 마커를 표시할 위치와 title 객체 배열입니다 
							var positions = [ {
								title : name,
								latlng : new kakao.maps.LatLng(lat, lon)
							}

							];

							for (var j = 0; j < positions.length; j++) {

								// 마커를 생성합니다
								var marker = new kakao.maps.Marker({
									map : map, // 마커를 표시할 지도
									position : positions[j].latlng, // 마커를 표시할 위치
								});
								
								 // 마커에 표시할 인포윈도우를 생성합니다 
							    var infowindow = new kakao.maps.InfoWindow({
							        content: positions[j].title // 인포윈도우에 표시할 내용
							    });

							  // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
							    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
							    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
							    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
							    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
								
								
								
								} //마커 생성 for 끝 
								
								markers.push(marker); // 생성된 마커를 배열에 추가합니다
						}//success for문 끝
					},//success 함수 끝
					error : function(err) {
						alert('err!!!');
						console.log(err);
					}
				})// ajax 끝

			}); // 현재 위치 불러오기 끝

		} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

			var locPosition = new kakao.maps.LatLng(33.450701, 126.570667), message = '현재 위치를 불러올 수 없습니다. 주소를 입력해주세요.'

			displayMarker(locPosition, message);
		}

/** 지도에 현재 위치 마커 찍기 **/
		// 지도에 마커와 인포윈도우를 표시하는 함수입니다
		function displayMarker(locPosition, message) {
			
			// 본인 위치 마커는 다른 이미지로 설정
				var imageSrc = '/resources/user/images/map/pngkit_beach-icon-png_7637826.png' // 마커이미지의 주소입니다    
	    		var imageSize = new kakao.maps.Size(35, 50) // 마커이미지의 크기입니다
				var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize)
				
			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
				map : map,
				position : locPosition,
				image: markerImage // 마커이미지 설정 
				
			});

			/*var iwContent = message, // 인포윈도우에 표시할 내용
			iwRemoveable = true;*/

			// 인포윈도우를 생성합니다
			/* var infowindow = new kakao.maps.InfoWindow({
				content : iwContent,
				removable : iwRemoveable
			}); */
			
			// 생성된 마커를 배열에 추가합니다
			markers.push(marker);
			// 인포윈도우를 마커위에 표시합니다 
			//infowindow.open(map, marker);

			// 지도 중심좌표를 접속위치로 변경합니다
			map.setCenter(locPosition);
			
			

		}

	

/***** 지도 주소 검색 위치 표시 *****/

		//우편주소 서비스
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div
		mapOption = {
			center : new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
			level : 7
		// 지도의 확대 레벨
		};

		//지도를 미리 생성
		
		//주소-좌표 변환 객체를 생성
		var geocoder = new daum.maps.services.Geocoder();

		function sample5_execDaumPostcode() {
			new daum.Postcode({
				oncomplete : function(data) {
					var addr = data.address; // 최종 주소 변수

					// 주소 정보를 해당 필드에 넣는다.
					document.getElementById("sample5_address").value = addr;
					// 주소로 상세 정보를 검색
					geocoder.addressSearch(data.address, function(results,
							status) {
						// 정상적으로 검색이 완료됐으면
						if (status === daum.maps.services.Status.OK) {
							
							//기존 마커 제거
							 setMarkers(null);
						// 본인 위치 마커는 다른 이미지로 설정	 
							var imageSrc = '/resources/user/images/map/pngkit_beach-icon-png_7637826.png' // 마커이미지의 주소입니다    
	    					var imageSize = new kakao.maps.Size(33, 50) // 마커이미지의 크기입니다
							var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize)
								
							// 마커를 생성합니다
							var marker = new kakao.maps.Marker({
								map : map,
								position : new daum.maps.LatLng(37.537187,
										127.005476),
								image: markerImage // 마커이미지 설정 
								
							});

							
						/*	//마커 생성
							var marker = new daum.maps.Marker({
								position : new daum.maps.LatLng(37.537187,
										127.005476),
								map : map
							});*/
							markers.push(marker); // 생성된 마커를 배열에 추가합니다
							
							

							var result = results[0]; //첫번째 결과의 값을 활용
						

							// 해당 주소에 대한 좌표를 받아서
							var coords = new daum.maps.LatLng(result.y,
									result.x);
							//ajax에 넣을 좌표
							var mylon  = result.x;
							var mylat = result.y;
							console.log("y" + mylat + ":" + "x" + mylon)
							
							
							
							
							// 지도를 보여준다.
							mapContainer.style.display = "block";
							map.relayout();
							// 지도 중심을 변경한다.
							map.setCenter(coords);
							// 마커를 결과값으로 받은 위치로 옮긴다.
							marker.setPosition(coords)
							//console.log("myLat " + coorde)
							
							
/***** 주소 검색 시 매장 위치 나오는 ajax *****/
							$.ajax({
					url : "/mapLoc",
					data : {
						'lat' : mylat,
						'lon' : mylon
					},
					dataType : "json",
					type : "GET",
					success : function(data) {
						//console.log("data : "+ data.length)
						//alert(JSON.stringify(data));//json 형태로 데이터 확인만

						// 매장 위도 경도 각각 변수 저장
						for (var i = 0; i < data.length; i++) {
							//db에서 불러온 매장 위치 변수로 지정하기
							var name = data[i].storeName
							var lat = data[i].latitude
							var lon = data[i].longitude
							

							// 마커를 표시할 위치와 title 객체 배열입니다 
							var positions = [{
								title : name,
								latlng : new kakao.maps.LatLng(lat, lon)
							}];

							for (var j = 0; j < positions.length; j++) {

								// 마커를 생성합니다
								var marker = new kakao.maps.Marker({
									map : map, // 마커를 표시할 지도
									position : positions[j].latlng, // 마커를 표시할 위치
									title : positions[j].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다

								});
								
								
								
																 // 마커에 표시할 인포윈도우를 생성합니다 
							    var infowindow = new kakao.maps.InfoWindow({
							        content: positions[j].title // 인포윈도우에 표시할 내용
							    });

  // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
								
								
								
								} //마커 생성 for문 끝
							markers.push(marker); // 생성된 마커를 배열에 추가합니다
						}//success for문 끝
					},//success 함수 끝
					error : function(err) {
						alert('err!!!');
						console.log(err);
					}
				})// ajax 끝
							
						}//검색 성공 if문 끝
					});
				}
			}).open();

		}
		
		
/***** 내 위치 찾기 버튼 눌렀을 때 위치 표시 *****/


function locationLoadSuccess(pos){

// 현재 위치 받아오기
var currentPos = new kakao.maps.LatLng(pos.coords.latitude,pos.coords.longitude);

var mLat = currentPos.getLat();
var mLon = currentPos.getLng();



// 지도 이동(기존 위치와 가깝다면 부드럽게 이동)
map.panTo(currentPos);
setMarkers(null); // 기존에 마커가 있다면 제거

	// 본인 위치 마커는 다른 이미지로 설정	 
							var imageSrc = '/resources/user/images/map/pngkit_beach-icon-png_7637826.png' // 마커이미지의 주소입니다    
	    					var imageSize = new kakao.maps.Size(33, 50) // 마커이미지의 크기입니다
							var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize)
	// 마커를 생성합니다
							var marker = new kakao.maps.Marker({
								map : map,
								position : currentPos,
								image: markerImage // 마커이미지 설정 
								
							});

/*// 마커 생성
var marker = new kakao.maps.Marker({
    position: currentPos
}); 
*/
markers.push(marker); // 생성된 마커를 배열에 추가합니다


marker.setMap(map); // 생성한 마커 찍기 
$.ajax({
		url : "/mapLoc",
		data : {
			'lat' : mLat,
						'lon' : mLon
					},
					dataType : "json",
					type : "GET",
					success : function(data) {
						//console.log("data : "+ data.length)
						//alert(JSON.stringify(data));//json 형태로 데이터 확인만
					
						// 매장 위도 경도 각각 변수 저장
						for (var i = 0; i < data.length; i++) {
							//db에서 불러온 매장 위치 변수로 지정하기
							var name = data[i].storeName
							var lat = data[i].latitude
							var lon = data[i].longitude
							

							// 마커를 표시할 위치와 title 객체 배열입니다 
							var positions = [{
								title : name,
								latlng : new kakao.maps.LatLng(lat, lon)
							}];

							for (var j = 0; j < positions.length; j++) {

								// 마커를 생성합니다
								
								var marker = new kakao.maps.Marker({
									map : map, // 마커를 표시할 지도
									position : positions[j].latlng, // 마커를 표시할 위치
									//title : positions[j].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다

								});
								
																								 // 마커에 표시할 인포윈도우를 생성합니다 
							    var infowindow = new kakao.maps.InfoWindow({
							        content: positions[j].title // 인포윈도우에 표시할 내용
							    });

						  // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
						    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
						    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
						    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
						    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
								
								
								
								} //마커 생성 for문 끝
							markers.push(marker); // 생성된 마커를 배열에 추가합니다
						}//success for문 끝
					},//success 함수 끝
					error : function(err) {
						alert('err!!!');
						console.log(err);
					}
				})// ajax 끝

};


		
	

function locationLoadError(pos){
alert('위치를 불러올 수 없습니다. 주소를 입력해주세요');
};

// 위치 가져오기 버튼 클릭시
function getCurrentPosBtn(){
navigator.geolocation.getCurrentPosition(locationLoadSuccess,locationLoadError);
};



		// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
function makeOverListener(map, marker, infowindow) {
    return function() {
        infowindow.open(map, marker);
    };
}

// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
function makeOutListener(infowindow) {
    return function() {
        infowindow.close();
    };
}
	