package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.Employee;
import com.DAO.EmployeeDAO;

import java.io.IOException;

@WebServlet("/AdminCreateAccountServlet")
public class AdminCreateAccountServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("employeeName");
        String dob = request.getParameter("employeeDOB");
        String email = request.getParameter("employeeEmail");
        String phone = request.getParameter("employeePhone");
        String gender = request.getParameter("employeeGender");
        String address = request.getParameter("employeeAddress");
        String dateOfJoining = request.getParameter("dateofjoining");

        Employee employee = new Employee();
        employee.setName(name);
        employee.setDob(dob);
        employee.setEmail(email);
        employee.setPhone(phone);
        employee.setGender(gender);
        employee.setAddress(address);
        employee.setDateOfJoining(dateOfJoining);

        EmployeeDAO dao = new EmployeeDAO();
        boolean success = dao.createAccount(employee);

        if (success) {
            response.sendRedirect("success.jsp"); // Redirect to a success page or dashboard
        } else {
            response.sendRedirect("error.jsp"); // Redirect to an error page
        }
    }
}

