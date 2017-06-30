<%@ page language="java" 
import="java.sql.Connection"
import="java.sql.DriverManager"
import="com.mysql.jdbc.Driver"
import="java.sql.SQLException"
pageEncoding="UTF-8"%>
<?xml version="1.0" encoding="UTF-8" ?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Insert title here</title>
</head>
<body>
	<%
	try {
		Driver driver = new com.mysql.jdbc.Driver();
		DriverManager.registerDriver(driver);
	} catch (SQLException e) {
		e.printStackTrace();
		out.println("驱动加载失败！");
	}
	try {
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","123");
		out.println("数据库链接成功");
		connection.close();
	} catch (Exception e) {
		out.println("数据库链接失败！");
	}
	%>
</body>
</html>