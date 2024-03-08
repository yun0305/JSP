<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    errorPage = "IsErrorPage.jsp"%><!-- 에러 페이지 지정 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<% 
int myAge = Integer.parseInt(request.getParameter("age"))+10;
out.println("10년 후 당신의 나이는"+ myAge+"입니다.");

/*
두 번째는 개발자가 지정한 JSP 화면을 보여주는 방법인데, 이때 errorPage,isErrorPage 속성을 사용합니다.
우선 errorPage 속성을  page지시어에 추가해 줍니다. 이렇게 하면 페이지에서 에러가 발생 했을 때 직접 처리하지 않고
errorPage 속성으로 지정한 페이지를 웹 브라우저에 출력한다.
즉, 이 페이지에서 에러가 발생하면 웹 브라우저에는 IsErrorPage.jsp가 출력됩니다.

IserrorPage.jsp는 따로 구성해 줘야한다,

*/

%>
</body>
</html>