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
	String str1 = "JSP";
	String str2 = "안녕하세요.";
	int by = 2001;
%>
		
	<h2>처음 만들어보는 <%= str1 %></h2>
	
<%
	out.println(str2 + str1 +" 입니다 <br>"); 
	out.println("저는 "+by+"년도에 태어났습니다.");
%>		
		

</body>
</html>