package task;

import java.sql.*;
public class data {
	public static Connection login() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/booking","root","12345");
		return con;
		
	}
}
