<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ResponseLogin</title>
</head>
<body>
<%
// request 내장 객체로 전송된 매개 변수를 얻어옴
String id = request.getParameter("user_id");
String pwd = request.getParameter("user_pwd");

// 아이디가 must, 비밀번호가 1234
if(id.equalsIgnoreCase("must") && pwd.equalsIgnoreCase("1234")) {
	// 로그인 성공
	// out.println("로그인 성공");
	response.sendRedirect("ResponseWelcome.jsp");
} else {
	// out.println("로그인 실패");
	// forward는 실행의 흐름만 특정한 페이지로 넘겨주는 역할을 함
	request.getRequestDispatcher("ResponseMain.jsp?loginErr=1").forward(request, response);
}
%>
</body>
</html>