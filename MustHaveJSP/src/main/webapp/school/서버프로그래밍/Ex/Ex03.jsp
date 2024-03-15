<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import  = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

	Date today = new Date();
	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
	String t = df.format(today);
	out.print("오늘날짜 : " + t);
	
%>



</body>
</html>