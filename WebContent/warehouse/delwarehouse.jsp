<%@page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<?xml version="1.0" encoding="UTF-8" ?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>delwarehouse</title>
</head>
<body>
	<%
		PreparedStatement ps = null; 
		String wcurrent = new String(request.getParameter("wcurrent").getBytes("ISO8859-1"),"UTF-8");
		try {
			//加载驱动
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys?user=root&password=123&useUnicode=true&characterEncoding=UTF-8");
			String sql = "delete from warehouse where wcurrent='"+wcurrent+"'";
			ps = connection.prepareStatement(sql);
				int result = ps.executeUpdate();
				if(result == 1) {
					response.sendRedirect("warehouse.jsp");
				} else {
					out.println("删除失败");
				}
			} catch(Exception e) {
				out.println("出现错误");
				e.printStackTrace();
			} finally {}
	%>
</body>
</html>
