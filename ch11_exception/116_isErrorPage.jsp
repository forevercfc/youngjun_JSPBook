<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>116_isErrorPage.jsp</title>
</head>
<body>
	<p>오류가 발발하였소</p>
	<p>예외 : <%=exception %></p>
	<p>toString() : <%=exception.toString() %></p>
	<p>예외 유형 : <%=exception.getClass().getName() %></p>
	<p>오류 메시지 : <%=exception.getMessage() %></p>
	<p>isErrorPage="true" 해당 디렉티브 태그가 있어야 예외 내장객체를 사용할수 있다.</p>
	
</body>
</html>