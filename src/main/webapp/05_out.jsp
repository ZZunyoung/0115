<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>05_out.jsp</title>
</head>
<body>
<c:out value="안녕"/><p>

<c:out value="안녕"></c:out><p>

<%
	request.setAttribute("name","홍길동");
%>

<c:out value="${name}"></c:out><p>

<%
	request.setAttribute("age","1");
%>


<c:out value="${age}"></c:out><p>

<c:out value="${age}" default="나이정보없음"></c:out><p>

<c:out value="${age2}" default="나이정보없음"></c:out><p>
</body>
</html>