<%@page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=${encoding}">
<title>register.jsp</title>
</head>
<body>
<h1 align="center">注册</h1>
<hr color="green"></hr>
	<form action="add.jsp"  method="post">
		<center>用户名: <input name="laccount" type="text"><br></center>
		<center>密码: <input name="lpassword" type="password"><br></center>
		<center><input type="submit" value="确认注册"></input></center>
	 </form>
</body>
</html>
