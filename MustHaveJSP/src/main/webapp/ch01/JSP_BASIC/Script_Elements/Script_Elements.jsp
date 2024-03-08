<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%! 
	 
	public int add(int num1, int num2){
		return num1+num2;
}


%><!-- 선언부에 메소드 선언 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		/*
		스크립트 요소는 jsp에서 자바 코드를 직접 작성할수 있게 해준다. 용도에 따라 선언부, 스크립틀릿, 표현식이 있다.
		
		JSP는 클라이언트의 요청을 받아 실행될 때 서블릿으로 변환되고 클래스로 컴파일된 후 응답하게 된다. 이 변환 과정에서 
		_jspService() 메소드가 생성되는데, 변환된 코드의 위치는 스크립트의 요소에 따라_jspService() 메소드 내부 혹은
		외부에 놓일수 있다.
		
		
		
		
		*<선언부>*
	선언부에서는 스크립틀릿이나 표현식에서 사용할 멤버 변수나 메소드를 선언한다. 서블릿으로 변환시 _jspService() 메소드
	외부에 선언된다
	<%! 으로 시작	
	
		*<스크립틀릿>*
	JSP 페이지가 요청을 받을 때 실행돼야 할 자바 코드를 작성하는 영역이다. 서블릿으로 반환시 _jspService()메소드 내부에
	그대로 선언된다.
	<% 으로 시작
	
	자바에서는 메소드 내부에 또다른 메소드를 선언하는게 불가능하다. 이건 자바의 문법이다. 만약 스크립틀릿에 메소드를 선언한다면 
	_jspService() 내부에 또다른 메소드를 선언하는 꼴이므로 에러가 발생한다. 즉 스크립틀릿에서는 선언부에서
	정의한 메소드를 호출만 할 수 있을 뿐,다른 메소드를 선언할 수는 없다.
	
		*<표현식>*
	프로그래밍 언어에서 표현식은 "실행결과로 하나의 값이 남는 문장" 을 뜻한다. 즉, 변수, 상수, 연산자를 사용한 식, 반환값이 있는
	메소드 호출 등이 모두 표현식에 속한다. JSP의 표현식도 이와 마찬가지로, 주로 변수의 값을 웹 브라우저 화면에 출력할 때
	사용합니다. 스클립틀릿 안에서 변수를 출력할 때는 out.print()를 사용하지만, 좀더 단순한 방법으로 출력하기 위해 사용된다.
	
	지금까지 설명한 3가지 스크립트 요소를 예제로 알아보겠다.
	<%= 으로 시작
	
		*/
		
		int result = add(10,20);
		
	%>
	
	덧셈 결과 1 : <%= result %><br>
	덧셈 결과 2 : <%= add(30,40) %> 

	<!-- 이하 자세한 설명은 책 page 80부터 참조 -->


</body>
</html>