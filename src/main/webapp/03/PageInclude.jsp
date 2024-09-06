<%@ page import="common1.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <h4>Include 페이지</h4>
 

<%
  // 1. 속성 읽기: page 영역에 저장된 속성을 읽어와서 형변환 함
  // String 객체는 주석으로 처리하고, 대신 2번에서 직접 출력하도록 함.
  int pInteger2 = (Integer)(pageContext.getAttribute("pageInteger"));
  // String pString2 = pageContext.getAttribute("pageString").toString();
  Person pPerson2 = (Person)(pageContext.getAttribute("pagePerson"));
%>

 
 <ul>
		<li>Integer 객체 : <%= pInteger2 %></li>
		<!-- 1번에서 주석처리한 String을 직접 출력  -->
		<li>String 객체 : <%= pageContext.getAttribute("pageString") %></li>
		<li>Person 객체 : <%= pPerson2.getName() %>, <%= pPerson2.getAge() %></li>
 </ul>