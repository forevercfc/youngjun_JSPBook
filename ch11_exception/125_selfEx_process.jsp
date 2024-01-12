<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- <%@ page errorPage="126_error_selfEx.jsp" %> --%>
<html>
<head>
    <meta charset="UTF-8">
    <title>125_selfEx_process.jsp</title>
</head>
<body>
    <% 
        try {
            String id = request.getParameter("id");
            String pw = request.getParameter("pw");

            if (id == null || id.isEmpty()) {
                throw new Exception("아이디를 입력해야 합니다.");
            } else if (pw == null || pw.isEmpty()) {
                throw new Exception("비밀번호를 입력해야 합니다.");
            } else {
                out.println("로그인 성공");
              
            }
        } catch(Exception e) {
            out.println("<p>오류: " + e.getMessage() + "</p>");
        }
    %>
</body>
</html>
