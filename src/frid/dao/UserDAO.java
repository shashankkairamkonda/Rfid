package frid.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import frid.dbconnection.DAOUtility;
import frid.model.User;

public class UserDAO {

	public int saveUser(User user) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		connection = DAOUtility.getConncetion();
		try {
			preparedStatement = connection
					.prepareStatement("insert into user (username, mobile, email, password) values(?,?,?,?)");
			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setLong(2, user.getMobile());
			preparedStatement.setString(3, user.getEmail());
			preparedStatement.setString(4, user.getPassword());
			return preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return 0;
	}

	public User validateUser(String email) {
		User user = new User();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		try {
			connection = DAOUtility.getConncetion();
			preparedStatement = connection.prepareStatement("SELECT * FROM frid.`user` u where email =?");
			preparedStatement.setString(1, email);
			resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				user.setId(resultSet.getLong(1));
				user.setUsername(resultSet.getString(2));
				user.setMobile(resultSet.getLong(3));
				user.setEmail(resultSet.getString(4));
				user.setPassword(resultSet.getString(5));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null) {

					resultSet.close();
				}
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return user;
	}

}
