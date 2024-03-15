<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!

	public int luckyNum(){
	return (int)(Math.random()*100);
}

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 

		if(luckyNum()%5==0){
			out.println("행운번호"+luckyNum()+"축하합니다 당첨되셨어요");
		}

%>

</body>
</html>