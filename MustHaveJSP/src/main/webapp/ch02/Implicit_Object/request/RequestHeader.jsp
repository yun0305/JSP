<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.util.Enumeration" %>>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>3. 요청 헤더 정보 출력하기</h2>
	<%
	
	/*
	HTTP 프로토콜은 헤더에 부가적인 정보를 담도록 하고 있다. 웹 브라우저의 종류나 선호하는 언어 등 일반적인 HTML
	문서 데이터 외의 추가 정보를 서버와 클라이언트가 교환할 수 있도록 문서의 선두에 삽입할 수 있다. 먼저 요청
	헤더를 읽어오는 방법을 알아보겠다.
		<>이번에 사용한 메소드&클래스>
		Enumeration header = request.getHeaderName();
		header.hasMoreElements();
		Header.nextElements();
		request.getHeader();
	
	*/
		Enumeration headers = request.getHeaderNames();//(1)//헤더의 이름 반환
		/*
			getHeaderName() 메소드는 모든 요청 헤더의 이름을 반환한다. 반환 타임은Enumberation 이다
		*/
		while(headers.hasMoreElements()){//(2)//헤더가 있으면 true 없으면 false
			/*
			while문에서 hasMoreElements() 메소드를 이용해서 출력할요청 헤더명이 더 있는지 확인한다.
			*/
			String headerName = (String)headers.nextElement();//(3)// 다음 헤더의 이름을 얻어온다
			/*
			헤더명이 더 있다면 요청 헤더의 이름을 얻어온 다음 
			*/
			String headerValue = request.getHeader(headerName);//(4)//getHeader()메소드의 매개값으로 전달 받아서 해당 매개값의 헤더값을 가져온다.
			out.println("헤더명 : " + headerName+ ", 헤더값 : " + headerValue +"<br/>");
			
			
			
		}

		/*
		user-agent : 웹 브라우저의 종류를 알 수 있다. 크롬, 파이어 폭스, 익스플로러 등 여러 가지 웹 브라우저에서
		테스트 해보면 조금씩 다른 결과가 출력될 것이다.
		
		referer 리퍼러는 웹을 서핑하면서 링크를 통해 다른 사이트로 방문 시 남는 흔적을 말합니다. 예를 들어 
		Request_Main.jsp에서 클릭해서 이동하면 리퍼러가 출력되지만, RequestedHeader.jsp를
		직접 실행하면 리퍼러는 출력되지 않을것이다 리퍼러는 웹 사이트 방문객이 어떤 경로로 접속했는지 알아볼때 유용하다.
		
		*/
		
		
		%>
	<p>이 파일을 직접 실행하면 referer 정보는 출력되지 않습니다.</p>



</body>
</html>