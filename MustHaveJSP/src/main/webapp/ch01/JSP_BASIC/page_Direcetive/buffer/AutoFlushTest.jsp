<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" buffer = "1kb" autoFlush = "false"%>
    <!-- page 지시어를 보면 buffer 속성은 1kb autoFlush는 flase로 설정해주었다. 즉, 버퍼 크기를 줄인 후
	버퍼가 가득 차면 에러가 나도록 헀다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		for(int i=1; i<100;i++){//버퍼 채우기
			
			out.println("abcde12345");	
		}
		
	/*
	for문을 이용해 10글자(10바이트)로 구성된 문자열을 100번 반복 출력한다.
	즉, 버퍼 크기에 해당하는 1kb를 출력한다. 이 파일에는 <html>과 같은 태그가 포함되어 있으므로 결과적으로 1kb
	를 넘기게 된다.
	
	그래서 실행해 보면 오류 메세지로 JSP 버퍼 오버플로우 오류가 발생한다
	오류의 정확한 내용은 buffer속성으로 설정한 1kb를 초과하여 에러가 발생했고 보다시피 이와 같이 설정하면
	JSP가능을 온전하게 사용할 수 없으므로 특수한 경우가 아니라면 거의 사용되지 않는다.
	
	
	
	*/
		
	
		
		
	
	
	%>

</body>
</html>