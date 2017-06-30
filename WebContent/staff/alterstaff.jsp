<%@page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<?xml version="1.0" encoding="UTF-8" ?>
<head>
<title>alterstaff.jsp</title>
</head>
<body>
	<% 
		String sid = request.getParameter("sid");
		String sname = request.getParameter("sname");
		String ssex = request.getParameter("ssex");
		String sage = request.getParameter("sage");
		String sedu = request.getParameter("sedu");
		String spos = request.getParameter("spos");
		int age = Integer.parseInt(sage);
		PreparedStatement ps = null; 
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys?user=root&password=123&useUnicode=true&characterEncoding=UTF-8");
			String sql = "update staff set sid='"+sid+"',sname='"+sname+"',ssex='"+ssex+"',sage="+
			age+",sedu='"+sedu+"',spos='"+spos+"'where sid='"+sid+"'";
			ps = connection.prepareStatement(sql);
			int result = ps.executeUpdate();
			
			
			if(result == 1) {
				response.sendRedirect("staff.jsp");
			} else {
				out.println("修改失败");
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	%>
</body>
</html>
