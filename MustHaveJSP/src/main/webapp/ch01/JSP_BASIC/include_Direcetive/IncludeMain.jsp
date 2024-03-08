<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "include_File.jsp" %><!-- 다른 JSP 파일 포함-->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		out.println("오늘 날짜" + today);
		out.println("내일 날짜" + tomorrow);
	//include_File.jsp 에서 선언한 변수 사용
	
	/*
	include 지시어를 이용하여 include_File.jsp 파일을 포함시켜 봤다. 그러면 대상 파일의 소스 자체가
	이 문서에 포함된다. 그 결과 include_File.jsp에서 선언한 변수인 today와 tomorrow를 사용할수 있게된다.
	
	include 지시어로 다른 문서를 포함시키면 먼저 파일 내용 그대로를 문서에 삽입 한후 컴파일 이 진행된다 따라서
	하나의 페이지가 된다.
	
	*/
	%>
	


</body>
</html>