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
	String dept = "소프트웨어 융합";
	String name = "허윤";
	String shcool = "경복대";
	int stnum = 2001092;

	out.println("안녕하세요. 저는 "+name+"입니다.<br>"+"학번은 "+stnum+"이고 "+shcool+dept+"에 재학중입니다.");
%>



</body>
</html>