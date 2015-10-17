package com.winapp.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.winapp.support.ConnectionProvider;
import com.winapp.support.RegBean;

public class RegisterDAOService {

	public static int regDAO(RegBean reg) {
		int status = 0;
		try {
			Connection con = ConnectionProvider.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into winappreg(first_name,last_name,email,password) values(?,?,?,?)");
			ps.setString(1, reg.getfName());
			ps.setString(2, reg.getlName());
			ps.setString(3, reg.getuEmail());
			ps.setString(4, reg.getuPass());
			status = ps.executeUpdate();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;	
	}
}
