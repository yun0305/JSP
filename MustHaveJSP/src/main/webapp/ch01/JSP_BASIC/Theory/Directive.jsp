<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
/*
	

	기본구문은 다은과 같다 : 코드 1~2번째줄    

	보다시피 지시어 종류 뒤에 다수의 속성을 지정할 수 있는 구조다. 사용할 수 있는 속성은 지시어마다 다르며, 
	지시어 종류는 다음 세 가지가 있다.

	1.page 지시어 : JSP 페이지에 대한 정보를 설정한다.
	2.indlude 지시어 : 외부 파일을 현재 JSP 페이지에 포함시킨다.
	3.taglib 지시어 : 표현 언어에서 사용할 자바 클래스나 JSTL을 선언한다.
	(page 지시어의 속성을 책에서 표로 설명한다 참고하자.)

	Language, contentType, pageEncoding 속성
	이클립스에서 JSP 파일을 생성하면 다음의 3가지 속성을 포함한 page 지시어가 기본적으로 삽입된다.

	(현재 코드 1번줄과 2번줄를 보자)
	
	이 지시어를 해석하면 다음과 같다.
	language: 스크립팅 언어는 자바를 사용한다
	contentType : 문서의 타입, 즉 MIME타입은 text/html 이고 캐릭터셋은 UTF-8 이다
	pageEncoding : 소스코드의 인코딩 방식은 UTF-8이다

	캐릭터셋이나 인코딩의 기본값은 IOS-8859-1 인데, 영어와 서유럽어 문자만 포함하고 있어서 한글은 제대로 출력
	되지 않는다 그래서 한글을 표현하기 위해서는 EUC-KR이나 UTP-8을 사용해야 하며 최근에는 다국어를 지원하는 
	UTF-8를 주로 사용하고 있다.
 


*/
%>
</body>
</html>