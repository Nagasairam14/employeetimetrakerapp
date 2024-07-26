package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class EmployeeDAO {

    public boolean createAccount(Employee employee) {
        boolean result = false;
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            conn = DBUtil.getConnection();
            String sql = "INSERT INTO employees (name, dob, email, phone, gender, address, date_of_joining) VALUES (?, ?, ?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, employee.getName());
            pstmt.setString(2, employee.getDob());
            pstmt.setString(3, employee.getEmail());
            pstmt.setString(4, employee.getPhone());
            pstmt.setString(5, employee.getGender());
            pstmt.setString(6, employee.getAddress());
            pstmt.setString(7, employee.getDateOfJoining());

            int rowsAffected = pstmt.executeUpdate();
            result = (rowsAffected > 0);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(conn, pstmt, null);
        }

        return result;
    }

	public List<model.Employee> getEmployeesByManager(String associateId) {
		// TODO Auto-generated method stub
		return null;
	}
}
