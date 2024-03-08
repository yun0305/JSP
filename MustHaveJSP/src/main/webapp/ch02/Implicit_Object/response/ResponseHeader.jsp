<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Collection" %>
<%@ page import = "java.text.SimpleDateFormat" %>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%		
		/*
			<이번에 배운 메소드>
		
		add계열 메소드 : 새로운 헤더명으로 값을 추가한다. 동일한 헤더명이 있으면 동일한 이름으로 값을 추가한다.
		set계열 메소드 : 기존의 헤더값을 수정한다. 단 동일한 헤더명이 존재하지 않는다면 새롭게 추가한다.


		response.setHeader(name,value) 이름이 name인 헤더의 값을 value로 지정한다.
		response.setIntHeader(name,value) 이름이 name인 헤더의 값을 int형 값인 value로 지정한다.
		response.setDateHeader(name,date) 이름이 name인 헤더의 값을 long형 값이 date로 지정한다.
		
		response.addHeader(name,value) 이름이 name이고 값이 String형 value인 헤더를 추가한다.
		response.addIntHeader(name,value) 이름이 name이고 값이 Int형 value인 헤더를 추가한다.
		response.addDateHeader(name,value) 이름이 name이고 값이 long형 date인 헤더를 추가한다.
		
		response.getHeaderNames() 요청과 관련된 모든 해더의 이름을 구한다.
		response.getHeader(name) 이름이 name인 해더의 값을 String으로 구한다.
		response.getHeaders(name) 이름이 name인 모든 헤더의 값을 String[]으로 구한다.
		
		
		
		*/

		//응답 헤더에 값 추가 하기전 추가할 값을 받아온다. 
		SimpleDateFormat s = new SimpleDateFormat("yyyy-mm-dd");//(1)
		long add_date = s.parse(request.getParameter("add_date")).getTime();//(1)
		/*
		우선 응답 헤더에 추가할 값들을 준비하는 코드를 살펴본다 (1)에서는 0000-00-00(년-월-일) 형식으로 전송된 add_date
		메개변수의 값을 long 타입으로 변경한다. 변경된 값은 타임 스탬프라고 하는데 1970년 1월 1일 0시 0분 0초부터 현재까지의 시간을
		밀리초 단위로 환산한 값을 말한다.
		
		<추가 : 메소드 설명>
		parse 메소드는 문자열을 Date 객체로 변환합니다.
		getTime(): Date 객체의 getTime 메소드는 1970년 1월 1일 자정부터 현재까지의 시간을 밀리초로 반환합니다.
		따라서 add_date에는 해당 날짜의 밀리초 값이 저장됩니다.
		*/
		
		int add_int = Integer.parseInt(request.getParameter("add_int"));//(2)
		String add_str = request.getParameter("add_str");

		/*
		한편 폼값으로 전송되는 값은 항상 String 타입이므로 add_int 값도 문자열로 받아진다. 따라서 정수 형태로 사용할 때는 반드시
		변환해야 한다.
		*/
		
		//응답 헤더에 값 추가
		response.addDateHeader("myBirthday", add_date);
		response.addIntHeader("myNumber",add_int);
		response.addIntHeader("myNumber",1004);//(3)추가
		response.addHeader("myName",add_str);
		response.setHeader("myName","안중근");//(4)수정
		/*
		응답 헤더에 값을 추가하는 코드이다. 먼저 add 계열의 메소드로 헤더값을 추가한다. 특히 (3)에서는 바로 위에서 추가한
		myNumber 라는 동일한 헤더명으로 새로운 값을 추가하고 있는데 add 계열이므로 같은 헤더명으로 값이 하나 더 추가된다.
		반면 (4)처럼 set계열의 메소드를 사용하면 이전 값이 수정된다.(같은 이름의 헤더가 없었다면 새로 추가된다.)
		*/
		
	%>
	
	
	<h2>응답 헤더 정보 출력하기</h2><!-- (5) -->
	<%
	Collection<String> headerNames = response.getHeaderNames();
	for(String hName : headerNames){
		String hValue = response.getHeader(hName);
		
	%>
		<li><%= hName %> : <%= hValue %></li>
	
	<%
	}
	//설명 책 참조 page 100~101
	%>
	
	<h2>myNuber만 출력하기</h2><!-- (6) -->
	
	<%
	Collection<String> myNumber = response.getHeaders("myNumber");
	for(String myNum : myNumber){
		
	%>
	<li>myNumber : <%= myNum %></li>
	<%
	}
	%>
</body>
</html>