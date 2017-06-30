<%@page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<?xml version="1.0" encoding="UTF-8" ?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>staff.jsp</title>
</head>
<body>
	<a href="insertstaff.jsp"><span style ="margin-left: 10px">添加</span></a>
	<center><h3 style="margin-top: 5px">查询员工信息</h3></center>
	<table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="BLUE" style="margin-bottom:8px">
	<tr align="center" bgcolor="#FAFAF1">
		<td>员工编号</td>
		<td>姓名</td>
		<td>性别</td>
		<td>年龄</td>
		<td>学历</td>
		<td>职务</td>
		<td>操作</td>
	</tr>
	<%
		ResultSet rs = null;
		Statement statement = null; 
		try {
			//加载驱动
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys?user=root&password=123&useUnicode=true&characterEncoding=UTF-8");
			String sql = "select *from staff";
			statement = connection.createStatement();
			rs = statement.executeQuery(sql);
			while(rs.next()) {
				%>
				<tr align="center" bgcolor="#FAFAF1">
					<td><%=rs.getString("sid")%></td>
					<td><%=rs.getString("sname")%></td>
					<td><%=rs.getString("ssex")%></td>
					<td><%=rs.getInt("sage")%></td>
					<td><%=rs.getString("sedu")%></td>
					<td><%=rs.getString("spos")%></td>
					<td><a href="editstaff.jsp?sid=<%=rs.getString("sid") %>">修改</a>|
					<a href="delstaff.jsp?sid=<%=rs.getString("sid") %>">删除</a></td>
				</tr>
			<%
			}
			rs.close();
			statement.close();
		}catch (SQLException e){
			e.printStackTrace();
		}finally {}
		%>
</body>
</html>
