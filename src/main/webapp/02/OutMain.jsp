<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" buffer="1kb"%>
 <!--      autoFlush="false" --> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	out.print("출력되지 않는 텍스트");
	// clearBuffer(): 버퍼를 지움 (윗 줄의 출력 결과 사라짐)
	out.clearBuffer();
	
	out.print("<h2>out 내장 객체<h2>");
	
	// 버퍼 크기 정보 확인
	out.print("남은버퍼:"+ out.getRemaining()+"<br>");
	out.print("출력버퍼:"+ out.getBufferSize()+"<br>");
	
	// 버퍼 내용 출력
	out.flush();
	out.print("남은버퍼:"+ out.getRemaining()+"<br>");
	
	out.print(123);
	out.print(false);
	out.print('공');
	out.print("고양이");
	
	
	
%>

</body>
</html>