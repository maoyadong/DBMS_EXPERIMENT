<%@page language="java" import="java.sql.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<?xml version="1.0" encoding="UTF-8" ?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head> <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>addmedicine.jsp</title>
</head>
<body>
	
	<% 
		String mid = request.getParameter("mid");
		String mname = request.getParameter("mname");
		String mmnanu = request.getParameter("mmnanu");
		String medate = request.getParameter("medate");
		String muse = request.getParameter("muse");
		String mcost = request.getParameter("mcost");
		String mnum = request.getParameter("mnum");
		String msname = request.getParameter("msname");
	%>
	<div align="center">
		<%
			try {
				Driver driver = new com.mysql.jdbc.Driver();
				DriverManager.registerDriver(driver);
				Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys?user=root&password=123&useUnicode=true&characterEncoding=UTF-8");
				String sql = "insert into medicine values('"+mid+"',?,?,?,?,?,?,?)";
				PreparedStatement ps = connection.prepareStatement(sql);
				ps.setString(1,mname);   //第几个参数要被初始化，以及将要被初始化的参数
				ps.setString(2, mmnanu);
				ps.setString(3,medate);
				ps.setString(4,muse);
				ps.setString(5,mcost);
				ps.setString(6,mnum);
				ps.setString(7,msname);
				
				int result = ps.executeUpdate(); //执行给定的sql语句，增删查改如果执行成功则会返回一个值1
				if(result == 1) {
					response.sendRedirect("medicine.jsp");   //重定向到另一个界面
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