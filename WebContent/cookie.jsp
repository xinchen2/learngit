<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>cookie的简单使用</title>
</head>
<body>
	<%
		String welcome = "第一次访问";
		String[] info = new String[]{"","",""};
		Cookie[] cook = request.getCookies();
		if(cook!=null){
			for(int i=0;i<cook.length;i++){
				if(cook[i].getName().equals("mrCookInfo")){
					info = cook[i].getValue().split("#");
					welcome = "，欢迎回来";
				}
			}
		}
	%>
	<%=info[0]+welcome %>
	<form action="doCookie.jsp" method="post">
		<ul style="line-height:23px">
			<li>性&nbsp;&nbsp;&nbsp;&nbsp;名：<input name="name" type="text" value="<%=info[0]%>"/>
			<li>出生日期:<input name="birthday" type="text" value="<%=info[1]%>"/>
			<li>邮箱地址:<input name="mail" type="text" value="<%=info[2]%>"/>
			<li><input type="submit" value="提交"/></li>
		</ul>
	</form>
</body>
</html>