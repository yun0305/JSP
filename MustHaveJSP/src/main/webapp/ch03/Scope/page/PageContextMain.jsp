
<%--
	1.jsp 페이지는 page 영역을 사용하기 위한 pageContext 객체를 할당 받게 된다. 이객체에 저장된 정보는 해당 페이지에서만 사용할 수
	있다.
	 
	2.해당 페이지를 벗어나면 소멸한다.
	
	3.include 지시어로 포함한 파일은 하나의 페이지로 통합되므로 page 영역이 공유된다.


 --%>
<%@ page import = "common.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    pageContext.setAttribute("pageInteger", 1000);
    pageContext.setAttribute("pageString", "페이지 영역에 문자열");
    pageContext.setAttribute("pagePerson",new Person("허윤",24));
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>119~124</title>
</head>
<body>
	
	<h2>영역의 속성값 읽기</h2>
	<%
	int pInteger = (Integer)(pageContext.getAttribute("pageInteger"));
	String pString = pageContext.getAttribute("pageString").toString();
	Person pPerson = (Person)(pageContext.getAttribute("pagePerson"));
	%>
	
	<ul>
		<li>Integer 객체 <%= pInteger %></li>
		<li>String 객체 <%= pString %></li>
		<li>Person 객체 <%= pPerson.getName()%>, <%= pPerson.getAge()%></li>
	</ul>

	<h2>include된 파일에서 page 영역 읽어오기</h2>
	<%@include file = "PageInclude.jsp"%>
	
	<h2>페이지 이동 후 page 영역 읽어오기</h2>
	<a href = "PageLocation.jsp">PageLocation.jsp 바로가기</a>

</body>
</html>
