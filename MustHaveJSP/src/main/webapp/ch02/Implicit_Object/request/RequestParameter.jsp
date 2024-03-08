<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - request</title>
</head>
<body>

<%
	//<클라이언트의 요청 매개변수 읽기>
	request.setCharacterEncoding("UTF-8");//(1)
	
	/*
		 한글 인코딩이 깨질수 있으므로 request.setCharacterEncoding("UTF-8"); 로 설정해준다
	*/
	
	
	String id = request.getParameter("id");//(2)
	String sex = request.getParameter("sex");
	String[] favo = request.getParameterValues("favo");//(3)

	/*
	name 값(변수)에 맞는 데이터가 넘어와서 각각 id,sex,favo 변수에 전달 받았다. 
	*/
	String favoStr = "";//(4)
	
	if(favo != null){
		for(int i=0; i<favo.length;i++){
			favoStr += favo[i]+" ";
		}
	}
	/*
		input 태그가 checkbox인 경우라도 선택값이 하나라면 getParameter()로 받을 수 있다.
		하지만 type 속성이 checkbox 인 경우는 대부분 값이 여러개 선택하기 위해 사용하므로
		String[] favo = request.getParameterValues("favo");로 받고 for 문을 돌려 
		String 변수를 사용해서 하나의 문자열로 합친다.
		
	*/
	
	
	
	String intro = request.getParameter("intro").replace("\r\n", "<br>");//(5)
	/*
	마지막으로 textarea 태그는 텍스트를 여러 줄 입력할 수 있다. 그래서 출력 시에는 엔터 키를 <br> 태그로 변환해야
	줄바꿈이 제대로 반영된다. 엔터는 특수 기호 \r\n 으로 입력된다.
	
	*/
				
				
%>
	
	<ul>
		<li>아이디 : <%= id %></li>
		<li>성별 : <%= sex %></li>
		<li>관심사항 : <%= favoStr %></li>
		<li>자기소개 : <%= intro %></li>	
	</ul>



</body>
</html>