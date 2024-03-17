<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	/*
		request 내장 객체가 클라이언트의 요청 정보를 저장하는 역할을 했다면, response 내장 객체는 그와 반대로
		요청에 대한 응답을 웹 브라우저로 보내주는 역할을 한다. 주요기능으로는 페이지 이동을 위한 리다이렉트(Redirect)와
		http 헤더의 응답 헤더 추가가 있다. 이 두 기능 외에도 몇가지 더 있으나 JSP에서는 거의 사용하지 않는다.
		
		<sendRedirect() 로 페이지 이동하기>
		페이지를 이동하기 위해 HTML은 <a>태그 를 사용하고 , 자바스크립트는 location 객체를 사용한다.
		JSP 에서는 response 내장 객체의 sendRedirect()로 이용한다. 다음 그림 참조....(page 95)
		
		*/

	%>
		
	<h2>1. 로그인 폼</h2>
	<%
		String loginErr = request.getParameter("loginErr");//(1)
		/*
		외부에서 loginErr 라는 값을 받아와서 만약 NULL 이 아니라면 로그인 실패라는 메세지를 화면에 출력한다.
		*/
		if(loginErr != null){//(2)
			
			out.println("로그인 실패");
			
		}
	
	%>
	
	<form action = "./ResponseLogin.jsp" method = "post"> <!--(3)-->
	<!--  
		./ResponseLogin.jsp 현재 디랙토리 안에 있는 ResponseLogin.jsp 페이지에 
		아이디 값과 패스워드 값을 보냄
	 -->		
		아이디 : <input type = "text" name = "user_id" placeholder = "아이디"> <br>
		패스워드 : <input type = "password" name ="user_pwd" placeholder ="비밀 번호"><br>
		
		<input type ="submit" value = "로그인">
	
	</form>
	<br>
	<hr>
	<br>
	
	<h2>2. HTTP 응답 헤더 설정하기</h2>
	<form action ="./ResponseHeader.jsp" method = "get">
		날짜 형식 : <input type = "text" name = "add_date" value = "2021-10-25"><br>
		숫자 형식 : <input type = "text" name = "add_int" value = "8282"><br>
		문자 형식 : <input type = "text" name = "add_str" value = "허윤"><br>
		<input type="submit" value = "응답 헤더 설정 & 출력">
	</form>
	
	
	

</body>
</html>