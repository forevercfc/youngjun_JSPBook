<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page errorPage="111_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>110_errorPage.jsp</title>
</head>
<body>
<h1>예외처리 방법의 우선순위</h1>
<ul>
	<li>1. try-catch문으로 처리한 경우 예외처리</li>
	<li>2. page디렉티브 태그 이용한 예외처리</li>
	<li>3. web.xml설정한 예외</li>
</ul>

<%=request.getParameter("name").toUpperCase() %>




</body>
</html>