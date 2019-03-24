<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		String username = request.getParameter("username");
		out.println(username);
		String[] favorites = request.getParameterValues("favorite");
		for(int i=0;i<favorites.length;i++){
			out.println(favorites[i]);
			out.println("<br/>");
		}
	%>
</body>
</html>