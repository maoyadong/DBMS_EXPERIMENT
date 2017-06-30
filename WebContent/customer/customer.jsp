<%@page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%@page contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<?xml version="1.0" encoding="UTF-8" ?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>customer.jsp</title>
</head>
<body>
	<a href="insertcustomer.jsp"><span style ="margin-left: 10px">添加</span></a>
	<center><h3 style="margin-top: 5px">查询客户信息</h3></center>
	<table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="BLUE" style="margin-bottom:8px">
	<tr align="center" bgcolor="#FAFAF1">
		<td>客户编号</td>
		<td>姓名</td>
		<td>联系方式</td>
		<td>购买时间</td>
		<td>购买药品编号</td>
		<td>名称</td>
		<th>数量</th>
		<th>操作</th>
	</tr>
	<%
		ResultSet rs = null;
		Statement statement = null; 
		try {
			//加载驱动
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys?user=root&password=123&useUnicode=true&characterEncoding=UTF-8");
			String sql = "select *from customer";
			statement = connection.createStatement();
			rs = statement.executeQuery(sql);
			while(rs.next()) {
				%>
				<tr align="center" bgcolor="#FAFAF1">
					<td><%=rs.getString("cid")%></td>
					<td><%=rs.getString("cname")%></td>
					<td><%=rs.getString("cphone")%></td>
					<td><%=rs.getDate("cbdate")%></td>
					<td><%=rs.getString("cbcid")%></td>
					<td><%=rs.getString("cmname")%></td>
					<td><%=rs.getInt("cnum")%></td>
					<td><a href="editcustomer.jsp?cid=<%=rs.getString("cid") %>">修改</a>|
					<a href="delcustomer.jsp?cid=<%=rs.getString("cid") %>">删除</a></td>
				</tr>
			<%
			}
			rs.close();
			statement.close();
		}catch (SQLException e){
			e.printStackTrace();
		}finally {}
		%>
	</table>
</body>
</html>