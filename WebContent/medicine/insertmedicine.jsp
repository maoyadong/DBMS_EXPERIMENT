<%@page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=${encoding}">
<title>tianjia</title>
</head>
<body>
<h1 align="center">提交信息</h1>
<hr color="green"></hr>
	<form action="addmedicine.jsp"  method="post">
		<center>药品编号: <input name="mid" type="text"></br></center>
		<center>药品名称: <input name="mname" type="text"></br></center>
		<center>生产厂家:   <input name="mmnanu" type="text"></br></center>
		<center>保质期 :   <input name="medate" type="text"></br></center>
		<center>用途   :    <input name="muse" type="text"></br></center>
		<center>价格   :    <input name="mcost" type="text"></br></center>
		<center>数量   :    <input name="mnum" type="text"></br></center>
		<center>经手人 :  <input name="msname" type="text"></br></center>
	    <center><input type="submit" value="添加用户"></input></center>
	 </form>
</body>
</html>
