<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Random" %>
    
    <%!
   		public int p;
		
    	public int RandomNumber(){
			Random num = new Random();
			int result2 = num.nextInt(10);
			return result2;
			
		}
    	    
    %>
   	
   	<%
   		int newPage = 0;
   	p++;
   	newPage++;
   	
   	%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>오늘의 행운의 수</h1>
	페이지 누적된수 : <%=p%><br>
	새로운 페이지 요청수 : <%=newPage%><br>
	<strong>행운의 수<strong> : <%=RandomNumber()%>
</body>
</html>