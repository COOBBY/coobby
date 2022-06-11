/*
 * package com.todaySee.home.service;
 * 
 * import java.io.BufferedReader; import java.io.InputStream; import
 * java.io.InputStreamReader; import java.io.OutputStream; import
 * java.net.Socket; import java.nio.ByteBuffer; import java.nio.ByteOrder;
 * import java.util.ArrayList; import java.util.List; import java.util.Random;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.data.domain.Page; import
 * org.springframework.data.domain.PageRequest; import
 * org.springframework.data.domain.Pageable; import
 * org.springframework.data.domain.Sort; import
 * org.springframework.stereotype.Service;
 * 
 * import com.todaySee.domain.Content; import com.todaySee.domain.Genre; import
 * com.todaySee.domain.UserVO; import
 * com.todaySee.persistence.ContentRepository; import
 * com.todaySee.persistence.GenreRepositroy; import
 * com.todaySee.persistence.UserRepository;
 * 
 * @Service public class HomeServiceImpl implements HomeService{
 * 
 * @Autowired private ContentRepository contentRepo;
 * 
 * @Autowired private UserRepository userRepository;
 * 
 * @Autowired private GenreRepositroy genreRepository;
 * 
 * 
 *//**
	 * 장르별 컨텐츠 화면에 출력
	 * 
	 * @param genreNumber (장르 번호)
	 * @return List<Content> - 장르 번호에 따른 컨텐츠 정보를 List로 담음
	 *//*
		 * @Override public Page<Content> getGenresContentList(Integer genreNumber,
		 * Integer page) {
		 * 
		 * if(page == null) page = 1;
		 * 
		 * // genreNumber 값이 null일 경우 1(드라마)가 출력되도록 함 if(genreNumber == null)
		 * genreNumber = 1;
		 * 
		 * PageRequest pageRequest = PageRequest.of(page, 32,Sort.by(Sort.Direction.ASC,
		 * "c.content_title"));
		 * 
		 * return contentRepo.getGenresContentList(genreNumber, pageRequest); }// end of
		 * getGenresContentList()
		 * 
		 * 
		 * @Override public List<Content> recommendedContentList(Integer userNumber) {
		 * 
		 * // 검색한 콘텐츠 정보를 담을 리스트 생성 List<Content> recommendedContentList = new
		 * ArrayList<Content>();
		 * 
		 * // 소켓을 선언과 접속 try (Socket client = new Socket("localhost", 9001)) {
		 * 
		 * // 소켓이 접속이 완료되면 inputstream과 outputstream을 받는다. try (OutputStream sender =
		 * client.getOutputStream();) { System.out.println("전송시작");
		 * 
		 * // 회원의 아이디를 보낼거니까 int -> String으로 형변환 String msg =
		 * String.valueOf(userNumber);
		 * 
		 * // string -> byte 배열 형변환 byte[] data = msg.getBytes();
		 * 
		 * // ByteBuffer를 통해 데이터 길이를 byte형식으로 변환한다. ByteBuffer b =
		 * ByteBuffer.allocate(4);
		 * 
		 * // byte포멧은 little 엔디언이다. b.order(ByteOrder.LITTLE_ENDIAN);
		 * 
		 * b.putInt(data.length);
		 * 
		 * // 데이터 길이 전송 sender.write(b.array(), 0, 4);
		 * 
		 * // 데이터 전송 sender.write(data); data = new byte[4];
		 * 
		 * 
		 * // 한글깨짐 방지를 위해 BufferedReader로 받아줌 InputStream receiver =
		 * client.getInputStream();
		 * 
		 * BufferedReader reader = new BufferedReader(new InputStreamReader(receiver,
		 * "UTF-8"));
		 * 
		 * String message = ""; // 파이썬에서 보낸 정보를 담을 변수 선언
		 * 
		 * // 영어, 숫자, 한글을 제외한 모든 문자열을 제거 String match =
		 * "[^\uAC00-\uD7A3xfe0-9a-zA-Z\\s]";
		 * 
		 * // 메시지가 넘어올 때까지 while문 while((message = reader.readLine()) != null) { message
		 * =message.replaceAll(match, "");
		 * 
		 * // 넘어온 contentNumber를 통해 해당 콘텐츠 정보 검색하여 리스트에 담기
		 * recommendedContentList.add(contentRepo.recommendedContent(Integer.valueOf(
		 * message)));
		 * 
		 * System.out.println("파이썬에서 넘어옴 : "+message); }// end of while }// end of try }
		 * catch (Throwable e) { e.printStackTrace(); }//end of try~catch
		 * 
		 * return recommendedContentList; }//end of RecommendedContentList()
		 */