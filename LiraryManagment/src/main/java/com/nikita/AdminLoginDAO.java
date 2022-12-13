package com.nikita;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class AdminLoginDAO {

	public String advalidate(String uName, String passw) {

		Connection con = null;
		String password = null;
		String result = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/library_managment;?autoReconnect=true&useSSL=false", "root", "root");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("SELECT passWord FROM admindetails WHERE userName='" + uName + "'");

			while (rs.next()) {
				password = rs.getString(1);
			}

			if (password.equals(passw)) {
				result = "Success";

			} else {
				result = "Fail";
			}

		} catch (Exception e) {
			System.out.println(e);
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			try {
				if (con != null) {
					con.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		return result;
	}

	public String adminRegistration(String name, String contact, String email, String userName,String passWord) {

		Connection con = null;
		String adresult = null;
		try {

			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/library_managment?autoReconnect=true&useSSL=false", "root", "root");
			Statement st = con.createStatement();
			System.out.println("insert into admindetails(Admin_Name,Contact,Email,userName,passWord) values('"
					+ name +  "','" + contact + "','" + email + "','" + userName + "','" + passWord
					+ "')");
			int i = st.executeUpdate(
					"insert into admindetails(Admin_Name,Contact,Email,userName,passWord) values('" + name
							+ "','" + contact + "','" + email + "','" + userName + "','" + passWord
							+ "')");
			System.out.println("i ::" + i);
			if (i > 0) {
				adresult = userName;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			try {
				if (con != null) {
					con.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		System.out.println("Result ::" + adresult);
		return adresult;

	}
}
