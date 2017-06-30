<%@page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<?xml version="1.0" encoding="UTF-8" ?>
<head>
<title>altermedicine.jsp</title>
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
		
		PreparedStatement ps = null; 
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys?user=root&password=123&useUnicode=true&characterEncoding=UTF-8");
			String sql = "update medicine set mid='"+mid+"',mname='"+mname+"',mmnanu='"+mmnanu+"',medate='"+
			medate+"',muse='"+muse+"',mcost='"+mcost+"',mnum='"+mnum+"',msname='"+msname+"' where mid='"+mid+"'";
			ps = connection.prepareStatement(sql);
			int result = ps.executeUpdate();
			if(result == 1) {
				response.sendRedirect("medicine.jsp");
			} else {
				out.println("修改失败");
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	%>
</body>
</html>
