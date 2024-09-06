<!-- 1. 먼저 코드에서 외부 클래스인 common2.Person 을 사용하기 위해 import 함 -->
<%@ page import="common1.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 2. pageContext 객체를 통해 page 영역에 속성값 저장
	객체가 아닌 기본 타입값 (int, float..)들은 wrapper 클래스로
	auto boxing 된 후 저장된다. 
 -->
<%
pageContext.setAttribute("pageInteger", 1000);
pageContext.setAttribute("pageString", "페이지 영역의 문자열");
pageContext.setAttribute("pagePerson", new Person("한석봉", 99));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 영역</title>
</head>
<body>
	<h2>page 영역의 속성값 읽기</h2>
	
	<%
	/* 3. 2번에서 저장한 속성들을 여기서 다시 읽어옴
		  단, 모든 속성이 Object 타입으로 저장되어 있으므로 다시 원래의 타입으로 형변환 했음.
	*/
	int pInteger = (Integer)(pageContext.getAttribute("pageInteger"));
	// 4. String 타입인 경우, toString() 메서드를 통해 문자열로 변환하여 출력 가능
	String pString = pageContext.getAttribute("pageString").toString();
	Person pPerson = (Person)(pageContext.getAttribute("pagePerson"));
	%>
	<ul>
		<li>Integer 객체 : <%= pInteger %></li>
		<li>String 객체 : <%= pString %></li>
		<!--  5. Person은 DTO (Data Transfer Object)라서 멤버 변수가
				 private 으로 선언되었으므로 getter()를 이용함
		-->
		<li>Person 객체 : <%= pPerson.getName() %>, <%= pPerson.getAge() %></li>
	</ul>
	
	<h2>include 된 파일에서 page 영역 읽어오기</h2>
	<!--  6. include 지시어로 다른 JSP 파일을 포함시킴, 말 그대로 '포함' 관계이므로 '같은 페이지'가 됨
		  따라서 page 영역이 그대로 유지가 된다. 
	 -->
	<%@ include file = "PageInclude.jsp"  %>
	
	<h2>페이지 이동 후 page 영역 읽어오기</h2>
	<!-- 7. <a> 태그로 감싼 링크를 클릭하면 '다른 페이지'로 '이동' 하게 됨.
			따라서 이전 페이지에서 만든 page 영역은 소멸 됨.
	-->
	<a href="PageLocation.jsp">PageLocation.jsp 바로가기</a>
</body>
</html>