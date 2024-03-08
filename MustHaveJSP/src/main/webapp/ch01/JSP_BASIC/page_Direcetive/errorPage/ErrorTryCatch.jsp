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

	try{// 예외 발생 부분을 try/catch로 잡는다
		
		int myAge = Integer.parseInt(request.getParameter("age"))+10;
		out.println("10년 후 당신의 나이는"+ myAge+"입니다.");
		
	}
	catch(Exception e){
		out.println(e.getMessage());	
	}

/*
	보다시피 예외발생 부분을 try/catch로 잡고 이페이지는 실행 즉시 예외가 발생하므로 catch절이 실행된다.
	다음은 이페이지의 실행 결과다/
	
	결과 : "예외 발생 : 매개변수 age가 null입니다."
	앞에서 봤던 뭔가 무시무시한 화면이 아닌 일반적인 화면이 나타났다. 에러 내용이나 관련 코드는 말끔히
	사라졌다. 에러의 구체적인 내용은 로그를 통해 개발자만 확인할수 있다.
	
	두번째는 개발자가 지정한 JSP 화면을 보여주는 방법인데 이때 errorPage, isErrorPage 속성을 사용한다.
	
	ErrorPage.jsp로 이동

*/
%>

</body>
</html>