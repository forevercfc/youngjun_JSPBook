<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>122_tryCatch_process.jsp</title>
</head>
<body>
	<%
		try{
			String str_num1 = request.getParameter("num1");
			String str_num2 = request.getParameter("num2");
			
			int num1 = Integer.parseInt(str_num1);
			int num2 = Integer.parseInt(str_num2);
			int result = num1/num2;
			out.println(num1+"/"+num2+"="+result);
		}catch(NumberFormatException e){
			RequestDispatcher dispatcher = request.getRequestDispatcher("123_error.jsp");
			dispatcher.forward(request, response);
		}
	%>
</body>
</html>