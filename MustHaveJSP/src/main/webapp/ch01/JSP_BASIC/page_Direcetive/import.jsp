<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!--지시어-->
    
<%@ page import = "java.text.SimpleDateFormat"%>
<!--page 지시어 속성중에 import가 있다. 필요한 외부 클래스를 임포트 시킬수 있다.-->
<%@ page import = "java.util.Date" %>    <!--클래스명 입력후 Ctrl + space 를 눌러보면 자동으로 나온다-->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 지시어 - import 속성</title>
</head>
<body>

<%

Date today = new Date();
SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
String todayStr = dateFormat.format(today);
out.println("오늘 날짜"+todayStr);// 오늘 날짜를 웹 브라우저 에서 출력

%>
<!-- 이 코드는 Date와 SimpleDateFormat 클래스를 이용해서 오늘 날짜를 출력 하고 있습니다.
	이 두 클래스는 java.lang 패키지에 속하지 않는다. 그래서 현재 문서에서 사용하기 위해서는 페이지 상단에
	page 지서어를 사용해서 임포트 해줘야 합니다 

 -->


</body>
</html>