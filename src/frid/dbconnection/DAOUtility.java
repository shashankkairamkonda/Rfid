package frid.dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DAOUtility {

	public static Connection getConncetion() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/frid", "root", "root");

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return connection;

	}
}