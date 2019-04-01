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
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		String mail = request.getParameter("mail");
		Cookie myCook = new Cookie("mrCookInfo",name+"#"+birthday+"#"+mail);
		myCook.setMaxAge(60*60*24);
		response.addCookie(myCook);
	%>
	表单提交成功
		<ul style="line-height:23px">
			<li>性&nbsp;&nbsp;&nbsp;&nbsp;名：<%=name %>
			<li>出生日期:<%=birthday %>
			<li>邮箱地址:<%=mail %>
			<li><a href="cookie.jsp">返回</a>
		</ul>
</body>
</html>