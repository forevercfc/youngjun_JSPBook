<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 처리기</title>
</head>
<body>
    <% 
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");

        if (id != null && pw != null && id.equals("admin") && pw.equals("admin1234")) {
            Cookie c_id = new Cookie("userID", id);
            Cookie c_pw = new Cookie("userPW", pw);

            response.addCookie(c_id);
            response.addCookie(c_pw);

            response.sendRedirect("selfEx_welcome.jsp");
        } else {
            out.println("쿠키 설정에 실패했습니다. <br>");
            out.println("<a href='selfEx_cookie.jsp'>로그인 페이지로 돌아가기</a>");
        }
    %>
</body>
</html>
