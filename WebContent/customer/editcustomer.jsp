<%@page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%@page contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<?xml version="1.0" encoding="UTF-8" ?>
<head>
<title>editcustomer.jsp</title>
</head>
<body>
	<center><h1>修改客户信息</h1></center>
	<hr color="GREEN"></hr>
	<%
		ResultSet rs = null;
		Statement statement = null; 
		String cid = request.getParameter("cid");
		try {
			//加载驱动
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys?user=root&password=123&useUnicode=true&characterEncoding=UTF-8");
			String sql = "select *from customer where cid='"+cid+"'";
			statement = connection.createStatement();
			rs = statement.executeQuery(sql);
			Date cbdate;
			String cname,cphone,cbcid,cmname;
			int cnum;
			while(rs.next()) {
					cid=rs.getString("cid");
					cname=rs.getString("cname");
					cphone=rs.getString("cphone");
					cbdate=rs.getDate("cbdate");
					cbcid=rs.getString("cbcid");
					cmname=rs.getString("cmname");
					cnum=rs.getInt("cnum");
					request.setAttribute("cid",cid);
					request.setAttribute("cname",cname);
					request.setAttribute("cphone",cphone);
					request.setAttribute("cbdate",cbdate);
					request.setAttribute("cbcid",cbcid);
					request.setAttribute("cmname",cmname);
					request.setAttribute("cnum",cnum);
		%>
		<form action="altercustomer.jsp?cid=<%=cid%>" method="post">
		客户编号: <input name="cid" type="text" value="${cid}"><br></br>
		姓名: <input name="cname" type="text" value="${cname}"><br></br>
		联系方式: <input name="cphone" type="text" value="${cphone}"><br></br>
		购买时间:  <input name="cbdate" type="text" value="${cbdate}"><br></br>
		购买药品编号: <input name="cbcid" type="text" value="${cbcid}"><br></br>
		名称   : <input name="cmname" type="text" value="${cmname}"><br></br>
		数量   : <input name="cnum" type="text" value="${cnum}"><br></br>
		<input type="submit" value="提交修改客户信息的按钮">
		</form>
		<%
		}
		}catch (SQLException e){
			e.printStackTrace();
		} finally {}
		%>
</body>
</html>