<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespace = "true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	/*
	앞에 예제들을 실행한 후 -> 마우스 우클릭 ->[페이지 소스 보기]를 클릭해서 보면 상단에 항상 공백이 있는 걸
	확인할 수 있습니다. Import.jsp를 실행한 후 소스 보기를 해보면 html 코드 위에 지시어 만큼의 공백이 있을것이다.
	아마 3줄의 공백이 있는데 page 지시어가 웹 서버에서 처리된 후 공백으로 남게 되는 것이다.
	
	일반적으로 큰 문제가 없지만 안드로이드와 같은 외부 기기와 연동 시 가끔 문제를 일으키기도 한다. 공백도
	컴퓨터 입장에서는 엄연한 하나의 문자이기 때문이다. 그래서 지시어 때문에 생성된 불필요한 공백을 제거하고 싶다면
	trimDirectiveWhitespaces 속성을 사용한다.
	
	이제 실행해 보면 공백이 사라져 있을 것이다.
	*/
	%>

</body>
</html>