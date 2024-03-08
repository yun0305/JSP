<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 103~106</title>
</head>
<body>
	
	<h2>web.xml에 설정한 내용 읽어오기</h2>
	초기화 매개변수 : <%= application.getInitParameter("INIT_PARAM") %><!--(1)-->
	
	<h2>서버의 물리적 경로 얻어오기</h2>
	application 내장객체 : <%= application.getRealPath("/application") %><!--(2)-->
	
	<h2>선언부에서 application 내장 객체 사용하기</h2>
	
	<%!
		public String useImplicitObject(){//(3)
			return this.getServletContext().getRealPath("/application");
		}
		
		public String useImplicitObject(ServletContext app){//(4)	
			return app.getRealPath("/application");
		}
	%>
	<ul>
		<li>this 사용 : <%= useImplicitObject() %></li><!--(5)-->
		<li>내장 객체를 인수로 전달 : <%=useImplicitObject(application) %></li><!--(6)-->
	</ul>
	
	
	
</body>
</html>