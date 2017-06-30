<%@page language="java" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<?xml version="1.0" encoding="UTF-8" ?>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>insertcustomer.jsp</title>
</head>
<body>
<h1 align="center">提交客户信息</h1>
<hr color="green"></hr>
	<form action="addcustomer.jsp"  method="post">
		<center>客户编号: <input name="cid" type="text"></br></center>
		<center>姓名: <input name="cname" type="text"></br></center>
		<center>联系方式:   <input name="cphone" type="text"></br></center>
		<center>购买时间:   <input name="cbdate" type="text"></br></center>
		<center>购买药品编号:    <input name="cbcid" type="text"></br></center>
		<center>名称   :    <input name="cmname" type="text"></br></center>
		<center>数量   :    <input name="cnum" type="text"></br></center>
	    <center><input type="submit" value="添加客户的按钮"></input></center>
	 </form>
</body>
</html>

