<%@page language="java" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<?xml version="1.0" encoding="UTF-8" ?>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>insertstaff.jsp</title>
</head>
<body>
<h1 align="center">员工信息提交</h1>
<hr color="green"></hr>
	<form action="addstaff.jsp"  method="post">
		<center>员工编号:<input name="sid" type="text"></br></center>
		<center>  姓名 : <input name="sname" type="text"></br></center>
		<center>  性别 :   <input name="ssex" type="text"></br></center>
		<center>  年龄 :   <input name="sage" type="text"></br></center>
		<center>  学历 :    <input name="sedu" type="text"></br></center>
		<center>  职务 :    <input name="spos" type="text"></br></center>
	    <center><input type="submit" value="添加员工信息的按钮"></input></center>
	 </form>
</body>
</html>
