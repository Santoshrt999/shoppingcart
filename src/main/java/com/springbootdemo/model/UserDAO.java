package com.springbootdemo.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;



public class UserDAO {
	
	Connection con;

	public UserDAO() {

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping", "root", "Project9");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int insert(User user) {
		try {
			PreparedStatement ps = con.prepareStatement("insert into user (username, password, email, phonenumber, active) values(?,?,?,?,?)");
			ps.setString(1, user.getUserName());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getEmail());
			ps.setString(4,  user.getPhoneNumber());
			int num = ps.executeUpdate();
			// out.println(num + " rows inserted.");
			return num;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}


}
