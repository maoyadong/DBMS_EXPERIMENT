<?xml version="1.0" encoding="UTF-8" ?>
<%@page language="java" import="java.sql.*" pageEncoding="UTF-8" %>
<%@page contentType="text/html; charset=UTF-8"%>
<?xml version="1.0" encoding="UTF-8" ?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head> <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>login1</title>
</head>
<BODY>
	<%
		ResultSet rs = null;
		Statement statement = null;
		String password2 = null;
		String username = request.getParameter("account");
		String password = request.getParameter("password1");
		try {
			//加载驱动
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys?user=root&password=123&useUnicode=true&characterEncoding=UTF-8");
			String sql = "select *from login where laccount='"+username+"'";
			try {
				statement = connection.createStatement();
				rs = statement.executeQuery(sql);
			} catch (Exception e) {
				out.println("账号错误");
			} 
			while(rs.next()) {		
				password2 = rs.getString("lpassword");
			}
			out.println(password +"     "+ password2);
			if(password.equals(password2)) {
				response.sendRedirect("main.jsp");
			} else {
				out.println("密码错误");
			}	
					
		} catch(Exception e) {
			e.printStackTrace();
		} 
		%>
</BODY>