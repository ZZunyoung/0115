<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>06_set.jsp</title>
</head>
<body>
<%
	String name="홍길동";
	int kor = 99;
	
	request.setAttribute("name",name);
	//request.setAttribute("kor",kor);
%>

<c:set var="kor" value="<%=kor%>"></c:set>

이름 : ${name}, 국어 : ${kor}<p>

<c:set var="age" value="33"></c:set>
나이 : ${age}<p>

<c:set var="age" value="${age+1}"></c:set>
나이 : ${age}<p>

<c:set var="test" value="${name} ${kor} ${age}"/>

변수 나열 : ${test}<p>

<c:set var="test" value="${kor}+${age}"></c:set>
문자열로 인식 : ${test}<p>

<c:set var="test" value="${age+kor}"></c:set>

숫자 계산은 el표현식 안에서 : ${test}


</body>
</html>