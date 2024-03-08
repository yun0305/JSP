<%@page import = "java.time.LocalDateTime" %>
<%@page import = "java.time.LocalDate" %>>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	LocalDate today = LocalDate.now();//오늘 날짜
	LocalDateTime tomorrow = LocalDateTime.now().plusDays(1);//내일 날짜
%>
<!-- 
		
	간단히 오늘 날짜와 내일 날짜를 구하는 코드를 담고 있는 파일이다
	이 파일은 다음에 작성할 IncludeMain.jsp에 포함시킬 페이지므로 HTML 태그는 모두 제거한 후 작성한다,
	단 page 지시어 까지 제거하면 JSP가 동작하지 않으므로 주의해야 한다. JSP파일에서 page 지시어는 필수라는
	사실은 잊어서는 안된다.	
		
		
	많은 웹 사이트에서 상단 메뉴나 하단 정보(회사 연락처 등)가 여러 페이지에서 반복되어 사용되는것 볼수 있다.
	또한 뒤에서 학습할 세션 확인과 같은 작업도 모든 페이지에 삽입해야 하는 경우가 많다. 이럴 떄 반복되는 부분을
	별도의 파일에 작성해두고 필요한 페이지에서 include 지시어로 포함시킬수 있다.
	
	include 지시어 형식은 다음과 같다
	(include file = "포함할 파일의 경로")
	 
	그럼 예제를 통해 알아보도록 하자 2개의 파일을 작성할 것이다. 먼저 포함시킬 첫 번째 JSP를 생성한다.
 -->


