<%@page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=${encoding}">
<title>editwarehouse</title>
</head>
<body>
	<center><h1>修改仓库信息</h1></center>
	<hr color="GREEN"></hr>
	<%
		ResultSet rs = null;
		Statement statement = null; 
		String wcurrent = new String(request.getParameter("wcurrent").getBytes("ISO8859-1"),"UTF-8");
		try {
			//加载驱动
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys?user=root&password=123&useUnicode=true&characterEncoding=UTF-8");
			String sql = "select *from warehouse where wcurrent='"+wcurrent+"'";
			statement = connection.createStatement();
			rs = statement.executeQuery(sql);
			String wlocation;
			int wennum,wexnum;
			while(rs.next()) {
					wcurrent=rs.getString("wcurrent");
					wlocation=rs.getString("wlocation");
					wennum=rs.getInt("wennum");
					wexnum=rs.getInt("wexnum");
					request.setAttribute("wcurrent",wcurrent);
					request.setAttribute("wlocation",wlocation);
					request.setAttribute("wennum",wennum);
					request.setAttribute("wexnum",wexnum);
					System.out.println("32223323232332");
		%>
		<form action="alterwarehouse.jsp?wcurrent=<%=wcurrent%>" method="post">
		入库和出库信息: <input name="wcurrent" type="text" value="${wcurrent}"><br></br>
		当前库存信息: <input name="wlocation" type="text" value="${wlocation}"><br></br>
		药品存放位置: <input name="wennum" type="text" value="${wennum}"><br></br>
		出库数量的统计 :  <input name="wexnum" type="text" value="${wexnum}"><br></br>
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