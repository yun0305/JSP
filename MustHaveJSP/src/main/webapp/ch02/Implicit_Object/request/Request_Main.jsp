<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - request</title>
</head>
<body>
	<%
		/*
		request 내장 객체는 JSP에서 가장 많이 사용되는 객체로 클라이언트(주로 웹 브라우저)가 전송한 요청
		정보를 담고 있는 객체이다
		
		1.클라이언트와 서버에 대한 정보읽기
		2.클라이언트가 전송한 요청 매개변수에 대한 정보 읽기
		3.요청 헤더 및 쿠키 정보읽기
		
		예제와 함께 하나하나 해보자
		
		클라이언트와 서버의 환경 정보 읽기
		첫 번째로 request 내장 객체를 통해 클라이언트와 서버의 환경 정보를 알아 내보겠다. 클라이언트는 웹 브라우저를 통해
		서버 측으로 요청을 하게 된다. 이때 요청은 GET 방식 혹은 POST 방식으로 구분되고 요청 URL, 포트 번호, 쿼리스트링 등을
		명시할 수 있다.
		request 내장객체를 이용하면 이러한 정보를 얻어올수 있다.
		
		현재 Main.jsp는 클라이언트 요청 을 전송하기 위한 페이지로 HTML로만 구성되어 있다. 요청 페이지라고 이해하자.
		*/
	%>
		

	<h1>1. 클라이언트와 서버의 환경정보 읽기</h1>
	
	<p><a href = "./RequestWebInfo.jsp?eng=Hello&han=안녕">GET 방식 전송</a><!-- (1)GET 방식으로 요청 --></p>
	
	<br/>
	<h3>form 태그로 전송</h3>
	
	<form action = "RequestWebInfo.jsp" method = "post"> <!--(2) POST 방식으로 요청 -->
	
		영어 : <input type = "text" name = "eng" value = "Bye"><br/>
		한글 : <input type = "text" name = "han" value = "잘 가"><br/>
			  <input type = "submit" value = "POST 방식 전송">
	</form>
	
	<h2>2. 클라이언트의 요청 매개변수 읽기</h2>
	<form action = "RequestParameter.jsp"><!--(3) 다양한 input 태그 사용 -->
		아이디 : <input type = "text" name = "id" value=""><br>
		성별:
		<input type = "radio" name = "sex" value="man" >남자
		<input type = "radio" name = "sex" value = "woman" checked="checked">여자<br>
		
		관심사항 :
		<input type = "checkbox" name = "favo" value ="경제">경제
		<input type = "checkbox" name = "favo" value ="정치">정치
		<input type = "checkbox" name = "favo" value ="연애">연애<br>
		
		자기소개 : 
		<textarea name ="intro" cols="30" rows="4"></textarea><br>
		<input type = "submit" value = "전송하기">
	</form>
	
	<h2>3. HTTP 요청 헤더 정보 읽기</h3><!-- (4)HTTP 요청 헤더 정보 읽기 -->
	<a href = "RequestHeader.jsp"> 요청 헤더 정보 읽기</a>
	

<!-- 
	GET 방식:
	데이터 전송 방식: URL에 데이터를 붙여서 전송합니다.
	데이터 전송 위치: URL의 끝에 쿼리 문자열(query string) 형태로 데이터를 전송합니다.
	데이터 제한: URL에 데이터를 노출하기 때문에 전송 데이터의 크기에 제한이 있습니다.
	캐싱: 결과가 URL에 노출되기 때문에 브라우저에서 캐싱할 수 있습니다.
	보안: 사용자가 입력한 데이터가 URL에 노출되므로 보안에 취약할 수 있습니다.
	사용 예시: 검색 폼과 같이 데이터가 노출되어도 상관없는 경우에 사용합니다.
	
	POST 방식:
	데이터 전송 방식: 데이터를 HTTP 요청의 본문(body)에 숨겨서 전송합니다.
	데이터 전송 위치: URL에 데이터가 노출되지 않고, 본문에 포함되어 전송됩니다.
	데이터 제한: POST는 더 많은 데이터를 전송할 수 있으며, 일반적으로 제한이 덜 있습니다.
	캐싱: 결과가 URL에 노출되지 않아 브라우저에서 캐싱하기 어렵습니다.
	보안: 데이터가 노출되지 않고, 암호화되어 전송되므로 GET에 비해 보안적으로 우수합니다.
	사용 예시: 로그인 폼과 같이 민감한 데이터를 전송할 때 사용합니다.
	
	따라서, GET은 주로 데이터가 노출되어도 되는 경우, POST는 데이터를 숨겨서 전송해야 하는 민감한 정보를 다룰 때 사용됩니다.
	
	절대/상대 경로 : https://velog.io/@bami/%ED%8C%8C%EC%9D%BC-%EA%B2%BD%EB%A1%9C-%EC%A0%88%EB%8C%80-%EA%B2%BD%EB%A1%9C%EC%99%80-%EC%83%81%EB%8C%80-%EA%B2%BD%EB%A1%9C	
 -->

</body>
</html>


