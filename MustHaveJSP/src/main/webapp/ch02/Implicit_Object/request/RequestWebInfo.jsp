<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%request.setCharacterEncoding("UTF-8");// 받는 페이지 쪽에 선언해 줘야한다. %>
	<h2>1. 클라이언트와 서버의 환경정보 읽기</h2>
	<ul>
		<li>데이터 전송방식 : <%= request.getMethod() %></li>
		<!-- getMethod() 메소드는 get 과 post 같은 전송 방식을 반환합니다. 앞서 get 방식
		전송 링크를 클릭했다면 get 을 post 방식을 클릭했다면 post를 반환할 것이다. -->
		
		<li>URL: <%=  request.getRequestURL()%></li>
		<li>URI: <%= request.getRequestURI()%></li>
		<!-- getRepuestURL()과 getRequestURI() 메소드는 요청 주소를 반환한다.
		여기서 URL과 URI의 차이는 호스트를 포함하느냐 여부이다. URL은 호스트를 포함한 전체주소
		를 뜻하며 URI는 호스트를 제외한 컨텍스트 루트부터의 주소를 뜻한다.(컨텍스트 루트는 
		호스트 명 다음에 나오는 프로젝트명 정도로 생각하면 된다.) -->
		
		<li>프로토콜: <%= request.getProtocol() %></li>
		<li>서버명: <%= request.getServerName() %></li>
		<li>서버 포트: <%= request.getServerPort() %></li>
		
		<li>클라이언트 IP 주소: <%= request.getRemoteAddr() %></li>
		<!-- getRemoteAddr() 메소드는 클라이언트의 IP 주소를 반환한다. localhost 로
		접속했을때는 0:0:0:0:0:0:0:1과 같이 출력된다. 윈도우10 에서는 IPv6를 반환하는게 기본이기 때문인데.
		WAS 설정을 IPv4로 변경하면 127.0.0.1로 출력된다.  -->
		
		<li>쿼리 스트리밍: <%= request.getQueryString()%></li>
		<!-- getQueryString()메소드는 요청 주소 뒷부분의 매개변수전달을 위한 쿼리스트링 전체를 반환한다.
		쿼리스트링중 특정 키값을 얻어오려면 밑에 getParameter()메소드에 인자값을 넣어주면 된다 -->
		
		<li>전송된 값 1: <%= request.getParameter("eng") %></li>
		<li>전송된 값 2: <%= request.getParameter("han") %></li>
		<!-- RequestMain.jsp 실행 화면에서 get 방식 전송을 클릭했을때의 결과는 다음과 같다
		주소표시줄을 보면 쿼리스트링으로 매개변수가 2개 전달되었고. 출력도 정상적으로 되었다. -->
		
		
	</ul>
	

</body>
</html>