<%@page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<?xml version="1.0" encoding="UTF-8" ?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>addstaff.jsp</title>
</head>
<body>
	<%
		String sid = request.getParameter("sid");
		String sname = request.getParameter("sname");
		String ssex = request.getParameter("ssex");
		String age = request.getParameter("sage");
		String sedu = request.getParameter("sedu");
		String spos = request.getParameter("spos");
		int sage=Integer.parseInt(age);
	%>
	<div align="center">
		<%
			try {
				Driver driver = new com.mysql.jdbc.Driver();
				DriverManager.registerDriver(driver);
				Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys?user=root&password=123&useUnicode=true&characterEncoding=UTF-8");
				String sql = "insert into staff values('"+sid+"',?,?,?,?,?)";
				PreparedStatement ps = connection.prepareStatement(sql);
				ps.setString(1,sname);
				ps.setString(2, ssex);
				ps.setInt(3,sage);
				ps.setString(4,sedu);
				ps.setString(5,spos);
				
				int result = ps.executeUpdate();
				if(result == 1) {
					response.sendRedirect("staff.jsp");
				} else {
					out.println("添加失败");
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		
		
		%>
	
	
	
	
	
	</div>
</body>
</html>