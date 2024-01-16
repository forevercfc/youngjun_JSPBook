<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>158_cookie_process.jsp</title>
</head>
<body>
	<h3>jsp는 쿠키기능을 사용할 수 있도록 Cookie클래스와 관련 메소드를 제공하며 쿠키를 사용하려면 Cookie()생성자 함수에 매개변수로 속성명과 속성값을 넣어 쿠키 객체를 생성할 수 있으며 
	response.addCookie()는 웹ㅂ 브라우저에 생성된 쿠키 객체를 쿠키로 저장한다.</h3>


	<% 
     
            String id = request.getParameter("id");
            String pw = request.getParameter("pw");

            if (id.equals("admin") && pw.equals("admin1234")) {
               Cookie c_id = new Cookie("userID", id);
               Cookie c_pw = new Cookie("userPW", pw);
               
               response.addCookie(c_id);
               response.addCookie(c_pw);
              
                
               out.println("쿠키생성과 설정에 성공함. <br>");
                out.println(id+"윌컴~~~<br>");               
                }else{
                    out.println("쿠키 설정에 실패함. <br>");
                	}
                
    %>
</body>
</html>