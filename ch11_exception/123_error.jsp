<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	계산되지 않은 잘못된 값이 입력 되었소
	<p>입력한 값1: <%=request.getParameter("num1") %></p>
	<p>입력한 값2: <%=request.getParameter("num2") %></p>
</body>
</html>