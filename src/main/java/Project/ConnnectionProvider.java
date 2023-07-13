package Project;

import java.sql.*;

public class ConnnectionProvider {
	private static Connection connection;

	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("mysql driver not found");
		}
	}

	public static Connection get() {
		try {

			if (connection == null) {
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project1", "root", "Tiger#190");
			}
			return connection; // jdbc:mysql://localhost:3306/mydatabase
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}
}
