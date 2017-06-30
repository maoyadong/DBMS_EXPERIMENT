<%@page language="java" import="java.sql.*" pageEncoding="UTF-8" %>
<%@page contentType="text/html; charset=UTF-8"%>
<?xml version="1.0" encoding="UTF-8" ?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=${encoding}">
<title>Insert title here</title>
</head>
<body>
	<a href="insertwarehouse.jsp"><span style ="margin-left: 10px">添加</span></a>
	<center><h3 style="margin-top: 5px">查询仓库信息</h3></center>
	<table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="BLUE" style="margin-bottom:8px">
	<tr align="center" bgcolor="#FAFAF1">
		<td>当前库存信息</td>
		<td>药品存放位置</td>
		<td>库数量</td>
		<td>出库数量的统计</td>
		<td>操作</td>
		
	</tr>
	<%
		ResultSet rs = null;
		Statement statement = null; 
		try {
			//加载驱动
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys?user=root&password=123&useUnicode=true&characterEncoding=UTF-8");
			String sql = "select *from warehouse";
			statement = connection.createStatement();
			rs = statement.executeQuery(sql);
			while(rs.next()) {
				%>
				<tr align="center" bgcolor="#FAFAF1">
					<td><%=rs.getString("wcurrent")%></td>
					<td><%=rs.getString("wlocation")%></td>
					<td><%=rs.getString("wennum")%></td>
					<td><%=rs.getString("wexnum")%></td>
					<td><a href="editwarehouse.jsp?wcurrent=<%=rs.getString("wcurrent") %>">修改</a>|
					<a href="delwarehouse.jsp?wcurrent=<%=rs.getString("wcurrent") %>">删除</a></td>
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
