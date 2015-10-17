package com.winapp.support;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {
	static Connection con;
	final static String username = "root";
	final static String password = "admin";
	final static String driver = "com.mysql.jdbc.Driver";
	final static String connectionStirng = "jdbc:mysql://127.0.0.1:3306/instant";
	public static Connection getConnection() throws ClassNotFoundException {
		try{
			Class.forName(driver);
		    con = DriverManager.getConnection(connectionStirng,username,password);
		   
		}catch(SQLException e) {e.printStackTrace();}
		return con;
	}
}
