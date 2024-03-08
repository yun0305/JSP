<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage = "true"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 지시어 - errorPage/isErrorPage 속성</title>
</head>
<body>

	요청 처리 과정에서 에러가 발생하였습니다.<br>
	빠른 시간 내에 문제를 해결하도록 하겠습니다.
<p>
에러 타입: <%= exception.getClass().getName() %> <br>
에러 메시지: <b><%= exception.getMessage() %></b>
<%
	/*
	에러 페이지에서는 반드시 isErrorPage 속성을 true로 설정해줘야 한다 그래야만 발생된 에러 내용을
	그대로 넘겨 받을 수 있다, 참고로  15번줄 에서는 페이지  내용을 구성하기 위해 exception 내장객체로부터
	발생한 예외의 타입과 메세지를 얻어 왔습니다.(내장 객체는 2장에서 배움)
	
	
	*/
	
%>

	
</body>
</html>
