<%@page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<?xml version="1.0" encoding="UTF-8" ?>
<head>
<title>editmedicine</title>
</head>
<body>
	<center><h1>修改员工信息</h1></center>
	<hr color="GREEN"></hr>
	<%
		ResultSet rs = null;
		Statement statement = null; 
		String sid = request.getParameter("sid");
		try {
			//加载驱动
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys?user=root&password=123&useUnicode=true&characterEncoding=UTF-8");
			String sql = "select *from staff where sid='"+sid+"'";
			statement = connection.createStatement();
			rs = statement.executeQuery(sql);
			String sname,ssex,sedu,spos;
			int sage;
			while(rs.next()) {
					sid=rs.getString("sid");
					sname=rs.getString("sname");
					ssex=rs.getString("ssex");
					sage=rs.getInt("sage");
					sedu=rs.getString("sedu");
					spos=rs.getString("spos");
					request.setAttribute("sid",sid);
					request.setAttribute("sname",sname);
					request.setAttribute("ssex",ssex);
					request.setAttribute("sage",sage);
					request.setAttribute("sedu",sedu);
					request.setAttribute("spos",spos);
		%>
		<form action="alterstaff.jsp?sid=<%=sid%>" method="post">
		员工编号: <input name="sid" type="text" value="${sid}"><br></br>
		姓名: <input name="sname" type="text" value="${sname}"><br></br>
		性别: <input name="ssex" type="text" value="${ssex}"><br></br>
		年龄 :  <input name="sage" type="text" value="${sage}"><br></br>
		学历   : <input name="sedu" type="text" value="${sedu}"><br></br>
		职务   : <input name="spos" type="text" value="${spos}"><br>
		<input type="submit" value="提交更改的信息">
		</form>
		<%
		}
		}catch (SQLException e){
			e.printStackTrace();
		} finally {}
		%>
</body>
</html>