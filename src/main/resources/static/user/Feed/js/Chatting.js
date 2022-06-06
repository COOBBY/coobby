/**
 * 
 */
/* 채팅방 목록 */



document.addEventListener("DOMContentLoaded", function(){
	var tag;
 	var ws;
	window.onload = function(){
		getRoom();
		createRoom();
		
	}

	function createChatingRoom(res){
		console.log(res)
		if(res != null){
			tag = "<tr><th class='num'>순서</th><th class='room'>방 이름</th><th class='go'></th></tr>";
			res.forEach(function(d, idx){
				var rn = d.roomName.trim();
				var roomNumber = d.roomNumber;
				tag += "<tr>"+
							"<td class='num'>"+(idx+1)+"</td>"+
							"<td class='room'>"+ rn +"</td>"+
							"<td class='go'><button type='button' onClick='goRoom(\""+roomNumber+"\", \""+rn+"\")'>참여</button></td>" +
						"</tr>";	
				console.log(tag);
			});
			/*'goRoom(\""+roomNumber+"\", \""+rn+"\")'*/
			console.log(tag)
			$("#roomList").empty().append(tag);
		}
	}
		
			function getRoom(){
		commonAjax('/getRoom', "", 'post', function(result){
			createChatingRoom(result);
		});
	}
	
	function createRoom(){
		$("#createRoom").click(function(){
			var msg = {	roomName : $('#roomName').val()	};

			commonAjax('/createRoom', msg, 'post', function(result){
				createChatingRoom(result);
			});

			$("#roomName").val("");
		});
	}

	

	function commonAjax(url, parameter, type, calbak, contentType){
		$.ajax({
			url: url,
			data: parameter,
			type: type,
			contentType : contentType!=null?contentType:'application/x-www-form-urlencoded; charset=UTF-8',
			success: function (res) {
				calbak(res);
			},
			error : function(err){
				console.log('error');
				calbak(err);
			}
		});
	}
	});
	
	
function goRoom(number, name){
      location.href="/moveChating?roomName="+name+"&"+"roomNumber="+number;
   }
