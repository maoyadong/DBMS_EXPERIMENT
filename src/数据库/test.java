package 数据库;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			Driver driver = new com.mysql.jdbc.Driver();
			DriverManager.registerDriver(driver);
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("驱动加载失败");
		}
		try {
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/training","root","123");
			System.out.println("ddddddddddddd");
			System.out.println("数据库链接成功");
			connection.close();
		} catch (Exception e) {
			System.out.println("数据库链接失败！");
		}
	}

}
