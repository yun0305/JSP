<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ page import = "java.util.Date" %> 
<%@ page import = "java.text.SimpleDateFormat" %>
<%
	Date dt = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyy-MM-dd");	
	
	String dayInpo = sdf.format(dt);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= dayInpo %>


</body>
</html>