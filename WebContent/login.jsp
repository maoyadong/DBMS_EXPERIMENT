<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0">
	<jsp:directive.page contentType="text/html; charset=UTF-8" 
		pageEncoding="UTF-8" session="false"/>
	<jsp:output doctype-root-element="html"
		doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
		doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
		omit-xml-declaration="true" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>login.jsp</title>
</head>
<body style="background-image: url(images/loginbackground.jpg);margin-left: 0px;margin-top:0px">
<br></br>
<br></br>
<h1 align="center">药品存销管理系统</h1>
<hr color="green"></hr>

	<a href="register.jsp"><span style ="margin-left: 10px">注册</span></a>
	<form action="login1.jsp" method="post">
		<table align="center" width="400" height="200" border="0">
	<tr>
		<td align="right">账号：</td>
		<td><input type="text" name="account"></input></td>
	</tr>
	<tr>
		<td align="right">密码：</td>
		<td><input type="password" name="password1"></input></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
		<input type="submit" value="登录"></input></td>
	</tr>
	</table>
	</form>

</body>
</html>
</jsp:root>