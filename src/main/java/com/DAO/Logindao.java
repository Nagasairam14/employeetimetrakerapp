package com.DAO;  // Adjust package name as per your project structure

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Logindao {

    private static final String URL = "jdbc:mysql://localhost:3306/timetrackerapp"; // Database URL
    private static final String USERNAME = "root"; // Database username
    private static final String PASSWORD = "123456"; // Database password

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USERNAME, PASSWORD);
    }

    public static void close(Connection conn, PreparedStatement pstmt, ResultSet rs) {
        try {
            if (rs != null) {
                rs.close();
            }
            if (pstmt != null) {
                pstmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

	public String isValid(String username2, String password2) {
		// TODO Auto-generated method stub
		return null;
	}
}
