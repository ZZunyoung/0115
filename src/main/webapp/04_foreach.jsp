<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>04_foreach.jsp</title>
</head>
<body>
<c:forEach var="i" begin="1" end="10" step="1">
	안녕하세요 ${i}<br> <!-- jstl에서 선언된 변수는 dl표현식으로 표현 가능 -->
</c:forEach>
<hr>
<select>
<c:forEach var="i" begin="1900" end="2021">
	<option value="${i}"> ${i} </option>
</c:forEach>
</select>
<hr>
<select>
<c:forEach var="i" begin="2200" end="1900" >
	<option value="${i}"> ${i} </option>
</c:forEach>
</select>
<hr>
<select>
<c:forEach var="i" begin="0" end="122">
	<option value="${2022-i}"> ${2022-i} </option>
</c:forEach>
</select>
<hr>

<%
	String[] name={"홍길동","슈퍼맨","뽀로로","오징어","에디","도라에몽"};// jsp소스

	request.setAttribute("name",name);


%>

${name[0]}
${name[1]}
${name[2]}
${name[3]}
${name[4]}
${name[5]}
<hr>

<c:forEach var="i" begin="0" end="5" step="1" varStatus="chk">
	${name[i]} i[${chk.index}] ${chk.current} ${chk.begin} ${chk.end} ${chk.step}<br>
</c:forEach>
<hr>
<c:forEach items="${name}" var="nam" varStatus="chk">
	${nam} ${chk.index} ${chk.current} ${chk.first} ${chk.last}<br>
</c:forEach>

</body>
</html>