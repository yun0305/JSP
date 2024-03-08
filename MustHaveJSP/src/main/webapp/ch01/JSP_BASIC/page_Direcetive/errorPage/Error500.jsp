<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 지시어 - errorPage, isErrorPage 속성</title>
</head>
<body>
<%


int myAge = Integer.parseInt(request.getParameter("age"))+10;//에러 발생
out.println("10년 후 당신의 나이는 " + myAge+"입니다.");// 실행되지 않음
/*JSP는 실행 도중에 에러가 발생하면 "HTTP Status 500" 에러 화면을 웹 브라우저에 표시해 줍니다
개발을 진행하는 중이라면 어떤 에러가 발생 되었는지 확인할 수 있으므로 도움이 됩니다. 하지만 실제로 서비스하는
도중 에러 화면이 뜬다면 고객의 신뢰를 잃는 요인이 도리할것입니다. 또한 에러가 발생된 코드의 일부가 노출되므로
보안 측면에서도 좋지 않습니다

에러가 발생 하는 코드를 작성하여 결과를 확인해 보고, 이어서 이를 적절히 처리할 수 있는 방법을 알아보겠습니다.
*/


/*
myAge 줄에서 내장 객체인 request로부터 "age"라는 이름의 매개변수 값을 받아와 정수로 변환합니다.
하지만 최초 실행 시에는 매개변수가 없으므로 null값이 전달되어 예외가 발생합니다.
(내장 객체에 대해서는 2장 참고)

그래서 예제를 실행하면 에러가 표시되고 스크립틀릿 안에 작성한 코드가 그대로 노출된다.

고객이 웹서핑 도중 이런 페이지를 보게 된다면 사이트에 대한 실뢰가 많이 떨어져 두 번 다시 방문하지 않을수도 있다.
따라서 이런 상황은 미연에 방지하는 것이 좋다 방법은 두가지이다. 

1.try/catch (예외처리)를 사용하여 직접 에러를 처리한다.
2.errorPage, isErrorPase 속성을 사용하여 디자인이 적용된 페이지로 대체합니다.

먼저 try/catch 로 예외를 직접 처리해 보겠습니다.
(JSP_기본 폴터 안에 ErrorTryCatch.jsp로 이동)

*/
%>




</body>
</html>