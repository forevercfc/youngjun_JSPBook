<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>160_cookie.jsp</title>
</head>
<body>
<h1> 쿠키클래스는 쿠키를 삭제하는 기능을 벼로도 제공하지 않으며 브라우저가 종료되어도 쿠키의 만료시간이 남아있다면 클아이언트는 쿠키를 게속 보관한다.
쿠키를 더 보관할 필요가 없다면 쿠키의 유효기간을 만료하면 된다.
JsessionId는 서버에서 사용자를 식별하기 위한 식별자로 자동으로 쿠키에 생성해주기에 세션이 끊기지 않는이상 유지되는 값이며 브라우저에서 강제삭제는 가능하지만 새로고침시 다시 뜬다
</h1>
	<%
	Cookie[] cookies = request.getCookies();
	
	for(int i=0; i<cookies.length;i++){
		cookies[i].setMaxAge(0); //초단위
		response.addCookie(cookies[i]);
	}
	response.sendRedirect("159_cookie.jsp");
	%>
</body>
</html>