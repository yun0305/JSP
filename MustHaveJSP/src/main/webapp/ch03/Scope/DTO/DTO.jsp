<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 114~119</title>
</head>
<body>

		데이터 전송 객체란 주로 데이터를 저장하거나 전송하는 데 쓰이는 객체로 다른 로직 없이 순수하게 데이터만을 담고있다
		데이터만 가지고 있는 객체라 하여 값 객체라고도 한다. DTO는 자바빈즈 규약에 따라 작성한다.
		
		자바 빈즈란 자바로 작성한 소프트웨어 컴포넌트로, 다음의 규약을 따르는 자바 클래스를 말한다.
		
		자바빈즈 규약
		1.자바 빈즈는 default 패키지 이외에 속해야 한다.
		2.멤버 변수의 접근제한자는 private 로 선언해야 한다.
		3.기본생성자가 있어야한다.
		4.멤버 변수에 접근할수 있는 getter, setter 가 있어야 한다.
		5.getter, setter 의 접근제한자는 public 으로 해야한다.
		
		이제부터 person이란 이름의 DTO를 작성해보겠다. 말했다시피 DTO는 일반적인 자바 클래스다 JSP파일이 아니다.
		이클립스에서 JSP는 webapp 하위에 생성된다, 하지만 클래스, 즉 자바 파일은 javareoures 하위의 src에 생성해야 한다,
		
		
		

</body>
</html>