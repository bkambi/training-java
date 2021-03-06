package com.excilys.cdb.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConnection {

	/**
	 * URL of connection of the database
	 */
	private String url = "jdbc:mysql://localhost:3306/computer-database-db";
	/**
	 * Username of the database
	 */
	private String user = "admincdb";
	/**
	 * Password of the database
	 */
	private String passwd = "qwerty1234";
	/**
	 *  Connection Object
	 */
	private  Connection connect = null;

	/**
	 * Private constructor 
	 */
	public JDBCConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connect = DriverManager.getConnection(url, user, passwd);
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	/**
	 * Create and return the instance of the connection if is not exist
	 * 
	 * @return
	 */
	public Connection open() {
		if (connect == null) {
			new JDBCConnection();
		}
		return connect;
	}

	/**
	 * Close the connection if is not null
	 */
	public void close() {
		if (connect != null) {
			try {
				connect.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
