<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<form action="dopost.jsp" name="register" method="post">
	<table>
		<tr>
			<td>用户名:</td>
			<td><input type="text" name="username"></td>
		</tr>
		<tr>
			<td><input type="checkbox" name="favorite" value="music"/>音乐</td>
			<td><input type="checkbox" name="favorite" value="read"/>阅读</td>
			<td><input type="checkbox" name="favorite" value="write"/>写作</td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="提交"/></td>
		</tr>
	</table>
	</form>
</body>
</html>