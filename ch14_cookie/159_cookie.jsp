<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>159_cookie.jsp</title>
</head>
<body>
	<h1>생성된 쿠키의 정보를 얻어오려면 request객체의 getCookie()를 이용해서 쿠키 객체를 배열로 얻어온 후 getName()을 이용해서 쿠키의 이름과 값을 얻어올 수 있다.</h1>
	<%
		Cookie[] cookies = request.getCookies();
	out.print("현재 설정된 쿠키 개수 : "+cookies.length+"<br>");
	out.print("========================<br>");
	
	for(int i=0; i<cookies.length;i++){
		out.print("설정된 쿠키의 속성명["+i+"]"+cookies[i].getName()+"<br>");
		out.print("설정된 쿠키의 속성값["+i+"]"+cookies[i].getValue()+"<br>");
	}
	%>
</body>
</html>