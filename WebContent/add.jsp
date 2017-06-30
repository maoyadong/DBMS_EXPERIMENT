<%@page language="java" import="java.sql.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<?xml version="1.0" encoding="UTF-8" ?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head> <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>add.jsp</title>
</head>
<body>
	
	<% 
		String account  = request.getParameter("laccount");
		String password = request.getParameter("lpassword");
	%>
	<div align="center">
		<%
			try {
				Driver driver = new com.mysql.jdbc.Driver();
				DriverManager.registerDriver(driver);
				Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys?user=root&password=123&useUnicode=true&characterEncoding=UTF-8");
				String sql = "insert into login values('"+account+"','"+password+"')";
				PreparedStatement ps = connection.prepareStatement(sql);		
				int result = ps.executeUpdate();
				if(result == 1) {
					out.println("注册成功");
				} else {
					out.println("添加失败");
				}
			} catch(Exception e) {
				out.println("出现错误");
			}
		
		
		%>
	</div>
</body>
</html>