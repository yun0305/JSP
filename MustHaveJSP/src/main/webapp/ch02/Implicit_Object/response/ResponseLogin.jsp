<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - Response</title>
</head>
<body>
	
	<%
		/*
			<이번에 배운 메소드>
			response.sendRedirect(.jsp파일);
			request.getRequestDispatcher(.jsp?쿼리스트링).forward(request , response);
		
		*/
		
	
		String id = request.getParameter("user_id");//(1)
		String pwd = request.getParameter("user_pwd");//(1)
		
		/*
		1에서 request 내장 객체로 전송된 매개변수를 얻어온 다음
		2에서 회원 인증 을 진행한다 아직 데이터 베이스 연동법을 배우지 않았기 때문에
		아이디와 패스워드는 각각 리터럴로 하드코딩 해놨다.
		*/
		
		if(id.equalsIgnoreCase("heuyoon19")){//(2)
			if(pwd.equalsIgnoreCase("heoyoon909734@")){//(2)
				response.sendRedirect("ResponseWelcome.jsp");//(3)
				/*
				인증에 성공하면  (3)이 실행되며, sendRedirect() 메소드에 건넨 응답 페이지로 이동한다.
				ResponseWelcome.jsp는 로그인 성공 페이지다
				*/
			}
			else{
				request.getRequestDispatcher("Response_Main.jsp?loginErr=1").forward(request, response);//(4)
			}
		}
		else{
			request.getRequestDispatcher("Response_Main.jsp?loginErr=1").forward(request, response);//(4)
			/*
			반면 인증에 실패하면 request 내장 객체를 통헤 로그인 페이지, 즉 ResponseMain.jsp 로 포워드 된다.
			포워드는 페이지 이동과는 다르게 제어 흐름을 넘겨주고자 할 때 사용한다. 이때 쿼리스트링으로 loginErr 매개변수를 전달해서
			로그인 성공 여부를 알려주고 있다. (포워드는 3장에서..)
			*/
		}
	
	%>
	
	
	
</body>
</html>