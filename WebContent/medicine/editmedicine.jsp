<%@page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<?xml version="1.0" encoding="UTF-8" ?>
<head>
<title>editmedicine</title>
</head>
<body>
	<center><h1>修改药品信息</h1></center>
	<hr color="GREEN"></hr>
	<%
		ResultSet rs = null;
		Statement statement = null; 
		String mid = request.getParameter("mid");
		try {
			//加载驱动
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys?user=root&password=123&useUnicode=true&characterEncoding=UTF-8");
			String sql = "select *from medicine where mid='"+mid+"'";
			statement = connection.createStatement();   //将语句发送到数据库中
			rs = statement.executeQuery(sql);    //执行语句
			String mname,mmnanu,medate,muse,mcost,msname;
			int mnum;
			while(rs.next()) {
					mid=rs.getString("mid");
					mname=rs.getString("mname");
					mmnanu=rs.getString("mmnanu");
					medate=rs.getString("medate");
					muse=rs.getString("muse");
					mcost=rs.getString("mcost");
					mnum=rs.getInt("mnum");
					msname=rs.getString("msname");
					request.setAttribute("mid",mid);
					request.setAttribute("mname",mname);
					request.setAttribute("mmnanu",mmnanu);
					request.setAttribute("medate",medate);
					request.setAttribute("muse",muse);
					request.setAttribute("mcost",mcost);
					request.setAttribute("mnum",mnum);
					request.setAttribute("msname",msname);
		%>
		<form action="altermedicine.jsp?mid=<%=mid%>" method="post">
		药品编号: <input name="mid" type="text" value="${mid}"><br></br>
		药品名称: <input name="mname" type="text" value="${mname}"><br></br>
		生产厂家: <input name="mmnanu" type="text" value="${mmnanu}"><br></br>
		保质期 :  <input name="medate" type="text" value="${medate}"><br></br>
		用途   : <input name="muse" type="text" value="${muse}"><br></br>
		价格   : <input name="mcost" type="text" value="${mcost}"><br></br>
		数量   : <input name="mnum" type="text" value="${mnum}"><br></br>
		经手人 :  <input name="msname" type="text" value="${msname}"><br></br>
		<input type="submit" value="提交">
		</form>
		<%
		}
		}catch (SQLException e){
			e.printStackTrace();
		} finally {}
		%>
</body>
</html>