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
	서버(server){
	
	웹에서 서비스를 제공하는 컴퓨터 시스템을 말한다. 서버는 우리말로 레스토랑에서 "시중드는 사람" 정도로
	비유 할 수 있다. 우리는 주로 정보를 검색하기 위해 포털 사이트를 이용하고, 필요한 물품을 구매하기 위해 쇼핑몰
	을 이용하게 되는데, 이런 서비스를 제공하는 웹 애플리케이션은 서버 컴퓨터에 파일을 형태로 저장되어 있다.
	
	}
	
	웹 서버(web Server){
	
	사용자로부터 HTTP를 통해 요청을 받거나, 웹 컨테이너가 전달해준 결과물을 정적인 페이지로 생성하여 사용자에게
	응답해주는 소프트웨어를 말한다. 웹 페이지는 주로 HTML, CSS, js 등으로 구성되어 있다.
	
	웹 서버는 클라이언트로부터 해당 HTTP 요청을 받아들이고,
	해당 요청에 대한 적절한 응답을 생성하여 클라이언트에게 전송하는 소프트웨어입니다.
	여기서 HTTP는 HyperText Transfer Protocol의 약자로, 웹 서버와 클라이언트 간의 통신을 위한 표준 프로토콜입니다.
	
	웹 서버는 작성된 html페이지 등을 네트워크 망에 종속되지 않고, 웹서비스를 할 수 있도록 어플리케이션으로,
	클라이언트에게 요청을 받으면 해당 요청을 판단하여 정적인 자원은 WAS를 거치지 않고 바로 응답해주고,
	동적인 자원은 WAS에 요청을 전달하여 WAS에서 받은 결과를 클라이언트에게 응답한다.
	
	Web Server
	- 웹 서버는 클라이언트가 요청한 정적인 콘텐츠를 HTTP 프로토콜을 통하여 제공해주는 서버입니다.
	위에서 언급한 정적 페이지를 보내줍니다. 정적인 콘텐츠 제공 이 가장 큰 역할입니다.
	- 다른 역할으로는 동적인 요청이 클라이언트로부터 들어왔을 때,
	해당 요청을 웹 서버에서 처리할 수 없기 때문에 컨테이너(Container)로 보내주는 역할을 합니다.
	ex) Nginx, Appach HTTP Server, IIS
	​
	기능 1)
	- 정적인 컨텐츠 제공
	- WAS를 거치지 않고 바로 자원을 제공
	​
	기능 2)
	- 동적인 컨텐츠 제공을 위한 요청 전달
	- 클라이언트(웹 브라우저)의 요청(Request)을 WAS에 보내고, WAS가 처리한 결과를 클라이언트에게 전달
	  (응답, Response)한다.
	출처: https://inpa.tistory.com/entry/WEB-🌐-웹-서비스-구조-정리 [Inpa Dev 👨‍💻:티스토리]

	}
	
	웹 컨테이너(web Container){
	
	웹 서버가 전송해준 요청을 기초로 동적인 페이지를 생성하여 웹 서버로 돌려준다. "동적"인 페이지라고
	표현하는 이유는 사용자마다 다른 결과로 응답할 수 있기 때문인데, 간단한 예로 로그인한 아이디를 보고 각자에
	맞는 페이지를 구성해 보내주는 것이있다.
	
	웹 컨테이너는 서블릿과 JSP와 같은 서버 측 컴포넌트를 실행하고 관리하는 소프트웨어 환경을 제공하는 서버 컴포넌트입니다.
	주로 웹 애플리케이션 서버(WAS) 내에 내장되어 있거나, WAS의 일부로서 동작합니다.
	웹 컨테이너는 다양한 역할을 수행하는데, 주로 다음과 같은 기능을 포함합니다.
	("컴포넌트"는 소프트웨어 개발에서 특정 기능을 수행하는 독립적이고 재사용 가능한 모듈을 나타냅니다.)
	
	웹 컨테이너 (Container)
	- 컨테이너는 동적인 데이터들을 처리하여 정적인 페이지로 생성해주는 소프트웨어 모듈.
	​
	사용자가 로그인해서 My Page 메뉴에 들어간다고 가정해보겠습니다.
	이 메뉴에서는 각자 사용자에 따라 보여질 정보가 다릅니다. 사용자의 요청이 들어오면 웹 서버는 정적인 요소만 클라이언트
	측에 보낼 수 있고, 동적으로 처리해야 하는 부분은 처리할 수 없습니다.
	컨테이너는 이러한 부분을 대신 처리해서 웹 서버에 정적인 파일로 만들어서 보내주는 모듈이라고 생각하면 될 것 같습니다.
	​
	출처: https://inpa.tistory.com/entry/WEB-🌐-웹-서비스-구조-정리 [Inpa Dev 👨‍💻:티스토리]
			
			
		웹 컨테이너의 작동
		1) 클라이언트는 웹서버로 request(요청)을 보낸다.
		2) 서블릿을 포함하는 WAS는 컨테이너로 요청을 보낸다.
		3) 컨테이너가 요청을 각 서블릿에게 전달한다.
		4) 서블릿 메서드가 로드된다.
		5) 서블릿은 컨테이너에 관련 response(응답)을 넘겨준다.
		6) 컨테이너는 이를 서버에 전달한다. 서버는 응답을 클라이언트에게 전달한다.
		출처: https://inpa.tistory.com/entry/WEB-🌐-웹-서비스-구조-정리 [Inpa Dev 👨‍💻:티스토리]
                                      
	}
	
	WAS(Web Apllication Server){
	
	웹 애플리케이션이 실행될 수 있는 환경을 제공하는 소프트웨어로, 컴퓨터에서 운영체제 와 비슷한 역할을 하는
	소프트웨어라고 할수 있다. WAS는 앞에서 설명한 웹 서버와 웹 컨테이너를 포함한 개념이다, 이책에서 
	이용하는 톰캣이 대표적인 예이며, 그외에 웹 로직, 웹스피어 등의 제품이 있다.
	
	<웹 서버와 컨테이너를 붙여놓은 서버>
	WAS는 간단히 말씀드리면 Web Server + Web Container(Sevlet Container)로 되어있습니다. 
	그래서 정적 컨텐츠를 제공하면서도(Web Server), 웹 컨테이너를 이용해 내부 로직을 거쳐 동적 페이지(Web Container)를
	보여줄 수 있게 됩니다.
	자바는 웹 구현 기술로 Servlet를 사용합니다. 이 Servlet 관리하고 jsp파일을 실행할 수 있게 해주는 것이
	Servlet Container입니다. 
	
	WAS는 웹 서버와 웹 컨테이너로 웹 상에서 사용하는 컴포넌트를 올려놓고 사용하게 되는 서버이다.
	인터넷 상에서 HTTP를 통해 사용자 컴퓨터나 장치에 애플리케이션을 수행해주는 미들웨어(소프트웨어 엔진)이다.
	웹 애플리케이션 서버는 동적 서버 콘텐츠를 수행하는 것으로 일반적인 웹 서버와 구별 되며,
	주로 데이터베이스 서버와 같이 수행된다.
	여기서 웹 컨테이너란, JSP와 Servlet을 실행시킬 수 있는 소프트웨어를 웹 컨테이너라고 한다.
	
	<WAS의 기본 기능>
	프로그램 실행 환경과 데이터베이스 접속 기능 제공
	여러 개의 트랜잭션(쪼갤 수 없는 업무 처리의 최소 단위) 관리
	업무 처리하는 비즈니스 로직 수행
	Web Service 플랫폼으로서의 역할

	
	<WEB(웹서버) 과 WAS의 차이점>
	1. Web Container 유무
	Web Container의 유무로 WEB와 WAS를 나눌 수 있다.
	Web Container가 있으면 WAS로 분류된다.

	2. 목적이 다르다.
	WEB(웹서버)는 HTML 문서같은 정적인 데이터를 처리하는 서버이다. 이미지나 단순 html 파일과 같은 리소스를 제공하는
	서버를 웹 서버를 통하면 WAS를 이용하는 것보다 안정적이다.
	WAS는 동적인 데이터를 처리하는 서버이다. DB와 연결되어 데이터를 주고 받거나 프로그램으로 데이터 조작이
	필요한 경우에 WAS를 활용해야 한다.

	우리가 만드는 웹 페이지는 정적 컨텐츠와 동적 컨텐츠를 함께 노출하게 한다. WAS가 정적 데이터를 처리하게 되면,
	동적 컨텐츠의 처리가 지연될 것이고, 이로 인한 페이지 노출시간이 늘어나게 된다.
	WAS는 동적 처리에 최적화 되어 있는 서비스이기 때문에 처리 속도를 위해, 정적처리는 웹서버에서 처리를 하고,
	동적 컨텐츠는 WAS에서 처리하게 된다.

	사용자가 클라이언트(브라우저)에 요청을 하게 되면 이를 웹서버에서 반응하여 WAS의 처리를 거쳐 웹 페이지로
	다시 웹서버에서 클라이언트(브라우저)에 응답 메시지를 주는 것이다.

	추가적으로 JSP를 배울 때, 대체적으로 Apache와 Tomcat을 사용한다. ASP를 구동하기 위해서는 IIS를 사용한다.
	ASP의 환경이 MS계열 서비스라면 WAS의 기능을 담당하는 부분이 있어 별도의 WAS가 필요하지 않다.

	
	<아파치(Apache)란?>

	아파치 소프트웨어 재단의 오픈소스 프로젝트이다.
	웹서버로 불리며 클라이언트 요청이 왔을때만 응답하는 정적 웹페이지에 사용된다.

	웹서버 = 80번 포트로 클라이언트 요청(POST,GET,DELETE)이 왔을때만 응답함.
	정적인 데이터만 처리한다. (HTML,CSS,이미지 등)
	http 웹 서버는 http 요청을 처리할 수 있는 웹서버이다. 아파치 http 서버는 http요청을 처리하는 웹 서버이다.
	클라이언트가 GET, POST, DELETE 등의 메소드를 이용해 요청을 하면 이 프로그램이 어떤 결과를 돌려주는 기능을 한다.
	
	
	<톰캣 (Tomcat)이란?>>
	
	tomcat은 흔히 WAS(Web Application Server)라고 말한다.
	dynamic(동적)인 웹을 만들기 위한 웹 컨테이너, 서블릿 컨테이너라고 불리며,
	웹서버에서 정적으로 처리해야할 데이터를 제외한 JSP, ASP, PHP 등은 웹 컨테이너(톰캣)에게 전달한다.
	동적인 데이터 처리가 가능하고, DB연결, 데이터 조작, 다른 응용프로그램과 상호 작용이 가능하다.

	톰캣은 8080포트로 처리한다.
	💡 JSP (JavaServer Pages)
	HTML 코드에 JAVA 코드를 넣어 동적웹페이지를 생성하는 웹어플리케이션 도구

	💡 PHP (Hypertext Preprocessor)
	C언어를 기반으로 만들어진 서버 측에서 실행되는 서버 사이드 스크립트 언어
	PHP는 동적 웹 페이지를 쉽고 빠르게 만들 수 있도록 해주는 데 그 목적이 있습니다.
	PHP로 작성된 코드를 HTML 코드 안에 추가하면, 웹 서버는 해당 PHP 코드를 해석하여 동적 웹 페이지를 생성합니다.

	💡ASP (Active Server Page)
	동적으로 서버에서 작동하는 페이지를 의미한다.
	서버 측의 스크립트로 서버사이드 스크립트라고 해서 서버에서 실행된다.
	PHP와는 다르게 윈도우 운영체제에서만 작동한다는 단점이 있다.

	WAS는 웹서버와 웹 컨테이너의 결합으로 다양한 기능을 컨테이너에 구현하여 다양한 역할을 수행할 수 있는 서버를 말한다.

	클라이언트 요청이 있을 때 내부의 프로그램을 통해 결과를 만들어내고 이것을 다시 클라이언트에 전달해주는 역할을 하는
	것이 바로 웹 컨테이너이다.

	아파치 웹 서버와 차이는 이 컨테이너의 기능이 가능하냐의 차이가 가장 크다.
	
	
	<아파치 톰캣 (Apache Tomcat)이란?>
	
	아파치만 사용하면 정적인 웹페이지만 가능하고, 톰캣만 사용하면 동적인 웹페이지 처리가 가능하지만 아파치에서
	필요한 기능을 못가져온다.
	또한 여러 사용자가 요청할시에 톰캣에 과부하가 걸린다.

	아파치와 톰캣을 같이 쓰면 아파치는 정적인 데이터만 처리하고, JSP처리는 Web Container(톰캣의 일부)로
	보내주어 분산처리 할 수 있다.

	아파치 : 80포트
	톰캣 : 8080포트

	💡실제로는 80포트로 다 처리하므로, 8080포트는 알아서 보내준다. 8080포트를 다루거나 보려면 리눅스 단에서 처리하거나 
	수동적으로 포트 처리할 때 빼고는 보기 힘들다.
	
	
	<WAS와 WebServer를 분리하는 이유>

	기능을 분리하여 서버의 부하 방지
	한곳에 집중되는 부하를 여러 서버로 분산하여 로드밸런싱(부하분산)을 할 수 있다.
	물리적으로 분리하여 보안 강화
	내부/외부 네트워크 사이에 WEB 서버를 두고 DB서버와 연결되어있는 WAS를 내부망에 위치시켜 해킹등의 위협으로
	부터 보호하기 위함
	여러대의 WAS를 연결 가능 (로드밸런싱의 역할 및 fail over, fail back 처리에 유리)
	여러 웹어플리케이션을 서비스 가능(java서버, c#서버, php서버 등 하나의 웹 서비스를 통해 서비스 가능)
	WEB서버가 클라이언트의 요청을 캐싱하여 동일한 요청이 들어왔을때 WAS에 전달하지 않고 캐시된 내용을 바로 전달하기
	때문에 성능상의 이점을 얻을 수 있게 된다.
	출처:https://velog.io/@remon/%EA%B0%9C%EB%B0%9C-%EA%B8%B0%EB%B3%B8-%EC%A7%80%EC%8B%9D-WEB%EC%95%84%ED%8C%8C%EC%B9%98%EA%B3%BC-WAS%ED%86%B0%EC%BA%A3-%EC%B0%A8%EC%9D%B4
	
	}
	
		프로토콜(Protocol){
		
		네트워크를 통해 컴퓨터들이 정보를 주고받는 절차 혹은 통신 규약을 말한다. 한국인과 미국인이
		각자의 모국어로만 말을 한다면 제대로 소통이 안되듯이 컴퓨터도 마찬가지다. 이때 프로토콜은 서로
		다른 컴퓨터들이 대화하는 데 필요한 공통 언어 역할을 해준다. 앞에서 설명한 HTTP도 프로토콜의 한종류이다.
		다른 프로토콜로는 파일 전송을 위한 FTP 이메일 전송을 위한 SMTP 등이 있다.
		
		
		}

		포트(){
		
		포트를 직역하면 항구라는 뜻인데 컴퓨터 사이에서 데이터를 주고받을 수 있는 통로를 말한다
		인터넷에서는 IP주소를 통해 서버 컴퓨터의 위치를 파악한다, 그런 다음 그 컴퓨터가 제공하는 특정 서비스는
		포트 번호를 통해 알 수 있습니다. 우리가 이용하는 인터넷상의 모든 서비스는 IP주소와 함께 포트 번호까지
		지정해야 제대로 요청을 전달할 수 있다, 대표적으로 HTTP는 80번 포트를 , 보안이 적용된 HTTPS는 443번
		포트를 사용한다,
			
		}
		
		HTTP(HyperText Transfer protocol / HTTPS( HTTP Secure)){
			
		보통 www라고 줄여쓰는 월드 와이드 웹 에서 웹 서버와 사용자 사이의 통신을 위해 사용하는 통신 프로토콜이다
		사용자가 요청하면 웹서버상 응답하는 단순한 구조의 프로토콜이다. HTTPS는 암호화된 HTTP다.
				
		하이퍼텍스트 전송 프로토콜(HTTP)은 월드 와이드 웹의 토대이며 하이퍼텍스트 링크를 사용하여 웹 페이지를 로드하는
		데 사용됩니다.
		HTTP는 네트워크 장치 간에 정보를 전송하도록 설계된 애플리케이션 계층 프로토콜이며 네트워크 프로토콜 스택의
		다른 계층 위에서 실행됩니다.
		HTTP를 통한 일반적인 흐름에는 클라이언트 시스템에서 서버에 요청한 다음 서버에서 응답 메시지를 보내는 작업이 포함됩니다.
			
			
		}
*/

%>

</body>
</html>