<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>환영합니다</title>
</head>
<body>
    <%
        Cookie[] cookies = request.getCookies();
        String userId = null;

        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("userID")) {
                    userId = cookie.getValue();
                    break;
                }
            }
        }

        if (userId != null) {
            out.println("<h2>" + userId + "님 반갑습니다.</h2>");
        } else {
            out.println("<h2>인증되지 않은 사용자입니다.</h2>");
            out.println("<a href='selfEx_cookie.jsp'>로그인 페이지로 돌아가기</a>");
        }
    %>
  <a href='selfEx_cookie_out.jsp'>로그아웃</a>

</body>
</html>
