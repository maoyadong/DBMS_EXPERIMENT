<%@page language="java" import="java.sql.*" import="java.text.SimpleDateFormat" pageEncoding="UTF-8"%>
<%@page contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<?xml version="1.0" encoding="UTF-8" ?>
<head>
<title>altercustomer.jsp</title>
</head>
<body>
	<% 
	
	
		String cid = request.getParameter("cid");
		String cname = request.getParameter("cname");
		String cphone = request.getParameter("cphone");
		String cbdate = request.getParameter("cbdate");
		String cbcid = request.getParameter("cbcid");
		String cmname = request.getParameter("cmname");
		String cnum = request.getParameter("cnum");
		PreparedStatement ps = null; 
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys?user=root&password=123&useUnicode=true&characterEncoding=UTF-8");
			System.out.println("eeeeeeeeeeeeeeeeeeeeeee");
			String sql = "update customer set cid='"+cid+"',cname='"+cname+"',cphone='"+cphone+"',cbdate='"+
			cbdate+"',cbcid='"+cbcid+"',cmname='"+cmname+"',cnum='"+cnum+"' where cid='"+cid+"'";
			System.out.println(sql);
			ps = connection.prepareStatement(sql);
			int result = ps.executeUpdate();
			
			
			if(result == 1) {
				response.sendRedirect("customer.jsp");
			} else {
				out.println("修改失败");
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	%>
</body>
</html>
