<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>B.jsp</h1>
<%
String strId = request.getParameter("id");
out.println("아이디: " + strId);
%>
<br />

<%
String strPwd = request.getParameter("pwd");
out.println("비밀번호: " + strPwd);
%>
<br />
</body>
</html>