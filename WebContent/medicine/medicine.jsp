<%@page language="java" import="java.sql.*" pageEncoding="UTF-8" %>
<%@page contentType="text/html; charset=UTF-8"%>
<?xml version="1.0" encoding="UTF-8" ?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head> <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="insertmedicine.jsp"><span style ="margin-left: 10px">添加</span></a>
	<center><h3 style="margin-top: 5px">查询药品信息</h3></center>
	<table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="BLUE" style="margin-bottom:8px">
	<tr align="center" bgcolor="#FAFAF1">
		<td>药品编号</td>
		<td>药品名称</td>
		<td>生产厂家</td>
		<td>保质期</td>
		<td>用途</td>
		<td>价格</td>
		<td>数量</td>
		<td>经手人</td>
		<td>操作</td>
		
	</tr>
	<%
		ResultSet rs = null;
		Statement statement = null; 
		try {
			//加载驱动
			Class.forName("com.mysql.jdbc.Driver");    //声明驱动加载类
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys?user=root&password=123&useUnicode=true&characterEncoding=UTF-8");
			//使用connection建立与数据库的连接
			String sql = "select *from medicine";
			statement = connection.createStatement();  //statement对象用于将SQL语句发送到数据库中
			rs = statement.executeQuery(sql);          //执行给定的sql语句，该语句返回单个ResultSet对象
			while(rs.next()) {     //将指针移到下一行
				%>
				<tr align="center" bgcolor="#FAFAF1">
					<td><%=rs.getString("mid")%></td>
					<td><%=rs.getString("mname")%></td>
					<td><%=rs.getString("mmnanu")%></td>
					<td><%=rs.getString("medate")%></td>
					<td><%=rs.getString("muse")%></td>
					<td><%=rs.getString("mcost")%></td>
					<td><%=rs.getInt("mnum")%></td>
					<td><%=rs.getString("msname")%></td>
					<td><a href="editmedicine.jsp?mid=<%=rs.getString("mid") %>">修改</a>|
					<a href="delmedicine.jsp?mid=<%=rs.getString("mid") %>">删除</a></td>
				</tr>
			<%
			}
			rs.close();
			statement.close();  //立即释放资源，避免内存问题。
		}catch (SQLException e){
			e.printStackTrace();
		}finally {}
		%>
	</table>
</body>
</html>
