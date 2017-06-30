<%@page language="java" import="java.sql.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=${encoding}">
<title>addwarehouse</title>
</head>
<body>
	<% 
		String wcurrent = new String(request.getParameter("wcurrent").getBytes("ISO8859-1"),"UTF-8");
		String wlocation = request.getParameter("wlocation");
		String wennum= request.getParameter("wennum");
		String wexnum = request.getParameter("wexnum");
	%>
	<div align="center">
		<%
			try {
				Driver driver = new com.mysql.jdbc.Driver();
				DriverManager.registerDriver(driver);
				Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys?user=root&password=123&useUnicode=true&characterEncoding=UTF-8");
				String sql = "insert into warehouse values('"+wcurrent+"',?,?,?)";
				PreparedStatement ps = connection.prepareStatement(sql);
				ps.setString(1,wlocation);
				ps.setString(2, wennum);
				ps.setString(3,wexnum);
				
				int result = ps.executeUpdate();
				if(result == 1) {
					response.sendRedirect("warehouse.jsp");
				} else {
					out.println("添加失败");
				}
			} catch(Exception e) {
				out.println("出现错误");
				e.printStackTrace();
			}
		
		%>
	</div>
</body>
</html>