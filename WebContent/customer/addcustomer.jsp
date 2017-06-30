<%@page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<?xml version="1.0" encoding="UTF-8" ?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>addcustomer.jsp</title>
</head>

客户信息：   customer
客户编号     cid
姓名         cname
联系方式     cphone
购买时间     cbdate
购买药品编号 cbcid
名称         cmname
数量         cnum

<body>
	<%
		String cid = request.getParameter("cid");
		String cname = request.getParameter("cname");
		String cphone = request.getParameter("cphone");
		String cbdate = request.getParameter("cbdate");
		String cbcid = request.getParameter("cbcid");
		String cmname = request.getParameter("cmname");
		String cnum = request.getParameter("cnum");
	%>
	<div align="center">
		<%
			try {
				Driver driver = new com.mysql.jdbc.Driver();
				DriverManager.registerDriver(driver);
				Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys?user=root&password=123&useUnicode=true&characterEncoding=UTF-8");
				String sql = "insert into customer values('"+cid+"',?,?,?,?,?,?)";
				PreparedStatement ps = connection.prepareStatement(sql);
				ps.setString(1,cname);
				ps.setString(2, cphone);
				ps.setString(3,cbdate);
				ps.setString(4,cbcid);
				ps.setString(5,cmname);
				ps.setString(6,cnum);
				int result = ps.executeUpdate();
				if(result == 1) {
					response.sendRedirect("customer.jsp");
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