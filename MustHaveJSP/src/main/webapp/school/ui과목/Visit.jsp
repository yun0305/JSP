<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%!
    
    public int p;
    
    
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>매 10번쨰 고객에게는 행운의 선물을 드립니다</h1>
	<%
    p++;
	
	if(p!=10){
		
    	out.println("축하합니다."+p+"번째 고객이십니다.");
    	
	}
	
    if(p%10==0){
    	String Inpo = "<h2>축하합니다. 당첨되셨습니다<h2>";
    	out.println("축하합니다. 10번째 고객이십니다.");
    	out.println(Inpo);
    }
    
    
    %>

</body>
</html>