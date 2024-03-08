
<%--
	1.클라이언트가 요청을 할때마다  새로운 request 객체가 생성된다.
	
	2.같은 요청을 처리하는게 사용되는 모든 JSP 페이지가 공유된다.
	
	3.단 페이지 이동 시에는 소멸되어 사용할수 없게된다.
	
	4.request 영역은 하나의 요청에 응답이 완료되면 소멸하게 된다.
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "common.Person" %>   
<%
	request.setAttribute("requestString","request 영역의 문자열");
	request.setAttribute("requestPerson", new Person("허윤",31));
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Page 124 ~ 128</title>
</head>
<body>
	<%
		request.removeAttribute("requestString");
		request.removeAttribute("requestInteger");
	%>
	<h2>request 영역의 속성값 읽기</h2>
	<%
		Person rPerson = (Person)(request.getAttribute("requestPerson"));
	%>
	<ul>
		
		<li>String 객체</li> : <%= request.getAttribute("requestString") %>
		<li>Person 객체</li> : <%= rPerson.getName() %>, <%= rPerson.getAge()%>
	
	</ul>
	<%
		request.getRequestDispatcher("Request_Forward.jsp?paramHan=한글&paramEng=English")
		.forward(request, response);
	
	
	 %>
	 <%--
	 /*
		request 내장객체를 통해 실제로 포워드를 수행하는 코드이다. 형태는 다음과 같다.
	*/
	
		request.getRequestDispatcher("포워드할 파일 결로").forward(request, response);	
	 
	 
	  --%>
	 
</body>
</html>