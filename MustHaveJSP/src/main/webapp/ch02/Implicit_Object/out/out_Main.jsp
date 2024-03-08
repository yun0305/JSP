<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page - 101 ~ 102</title>
</head>
<body>
	
	<% 	//책 참조
		//버퍼 내용 삭제
		out.println("출력되지 않는 텍스트");//버퍼에 저장(1)
		out.clearBuffer();//버퍼를 비움 (윗 중의 출력 결과 사라짐)(2)
		out.println("<h2>out 내장 객체<h2>");
		//버퍼 크기정보 확인
		out.print("출력 버퍼의 크기 : " + out.getBufferSize() + "<br>");//(3)
		out.print("남은 버퍼의 크기 : " + out.getRemaining()+"<br>");//(4)
		
		out.flush();// 버퍼 내용 출력(5)
		
		out.print("flush 후 버퍼의 크기 : " + out.getRemaining()+"<br>");//(6)
		
		//다양한 타입의 값 출력(7)
		out.print(1);
		out.print(false);
		out.print('가');
	%>
	
	
</body>
</html>