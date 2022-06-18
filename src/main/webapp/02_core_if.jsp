<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <!-- 
 	core 태그를 사용하려면 3번줄 링크를 추가
 	jstlXXX.jar파일을 //webapp/WEB-INF/lib안에 추가
 
 	java의 jre 폴더에 넣어도 되지만, spring을 사용할 때 충돌이 생기는 경우가 있어서
  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_core_if.jsp</title>
</head>
<body>
<c:if test="true">
	참일 경우만 실행
</c:if>
<c:if test="false">
	거짓일때 실행
</c:if>

<hr>
<% 
	request.setAttribute("kor",50);
%>
<c:if test="${kor>=60}">
	국어점수는 합격입니다.
</c:if>
<c:if test="${kor<60}">
	국어점수는 불합격입니다.
</c:if>
<!-- 

jstl의 core 태그는 if에 대해서 else가 없어서 if문의 test에 true, false조건을 둘다 처리해야 됨

 -->
</body>
</html>