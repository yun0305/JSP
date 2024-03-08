<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 112~114</title>
</head>
<body>
	
	<%
		/*
		내장 객체의 영역이란 각 객체가 저장되는 매모리의 유효기간이라 이하하면된다. 자바에서 메소드의 지역변수가 메소드를 벗어나면
		소멸하 듯 말이다 자바는 클래스 단위로 구성되지만 JSP 같은 웹어플리케이션은 페이지 단위로 구성된다. A페이지에서 선언한 변수를
		B페이지로 이동한 후에도 접근할 수 있으려면 자바와는 조금 다르게 접근해야 한다. 그래서 JSP에서는 영역을 통해 내장 객체에 저장된
		속성값을 공유할 수 있도록 한다.
		
		내장 객체의 영역은 총 4가지가 있다.
		
		page영역 : 동일한 페이지에서만 공유된다.
		request영역 : 하나의 요청에 의해 호출된 페이지와 포워드된 페이지 까지 공유된다.
		session 영역 : 클라이언트가 접속한 후 웹 브라우저를 닫을 때까지 공유된다.
		application 영역 : 한 번 저장되면 웹 애플리케이션이 종료될 때까지 유지된다.
		
		이처럼 각 영역은 접근할 수 있는 범위에서 차이가 있다. 다음은 이를 시각적으로 표현해본 그림이다.(page 113그림 참조)
		
	 	각영역의 범위의 크기는 application > session > request> page 순이다 오른쪽처럼 애플리케이션 구조에 따라 더 큰 범위의
	 	더 작은 범위의 영역을 하나이상 포함할 수 있다. 한편 이들의 API 문서는 모두 같다 다음은 영역이 제공하는 주요 메서드 들이다.
	 	
	 	void setAttribute(String name,Object value){
	 		
	 		각영역에 속성을 저장한다.
	 		첫 번쨰 인수는 속성명, 두번쨰 인수는 저장할 값이다.
	 		값의 타입은 Object이므로 모든 타입의 객체를 저장할 수 있다.
	 	}
		
	 	Object getAttribute(String name){
	 		
	 		영역에 저장된 속성값을 얻어옵니다.
	 		Object로 자동 형변환되어 저장되므로 원래 타입으로 다운캐스팅 후 사용해야한다.
	 		
	 	}
	 	
	 	
	 	void removeAttribute(String name){
	 		
	 		영역에 저장된 속성을 삭제한다.
	 		삭제할 속성명이 존재하지 않더라도 에러는 발생하지 않는다.
	 		
	 	}
		
	 	이번장에서는 다양한 예제와 함께 각 영역들을 어떻게 활용하는지 자세히 알아보겠다.
	 	
		*/
		
	
	%>
	

</body>
</html>