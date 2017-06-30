<%@page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=${encoding}">
<head>
<title>insertwarehouse</title>
</head>
<body>
<h1 align="center">提交仓库信息</h1>
<hr color="green"></hr>
	<form action="addwarehouse.jsp"  method="post">
		<center>当前库存信息: <input name="wcurrent" type="text"></input></center>
		<center>药品存放位置: <input name="wlocation" type="text"></input></center>
		<center>库存量:   <input name="wennum" type="text"></input></center>
		<center>出库数量统计:   <input name="wexnum" type="text"></input></center>
		 <center><input type="submit" value="添加用户"></input></center>
	 </form>
</body>
</html>

