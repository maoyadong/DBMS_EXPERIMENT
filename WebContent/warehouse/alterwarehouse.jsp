<%@page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<?xml version="1.0" encoding="UTF-8" ?>
<head>
<title>alterwarehouse.jsp</title>
</head>
<body>
	<% 
		String wcurrent = new String(request.getParameter("wcurrent").getBytes("ISO8859-1"),"UTF-8");
		String wlocation = request.getParameter("wlocation");
		String wennum = request.getParameter("wennum");
		String wexnum = request.getParameter("wexnum");
		PreparedStatement ps = null; 
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys?user=root&password=123&useUnicode=true&characterEncoding=UTF-8");
			String sql = "update warehouse set wcurrent='"+wcurrent+"',wlocation='"+wlocation+"',wennum='"+wennum+"',wexnum='"+
			wexnum+"'";
			ps = connection.prepareStatement(sql);
			int result = ps.executeUpdate();
			
			
			if(result == 1) {
				response.sendRedirect("warehouse.jsp");
			} else {
				out.println("修改失败");
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	%>
</body>
</html>
