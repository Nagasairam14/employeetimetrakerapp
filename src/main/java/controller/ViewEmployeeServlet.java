
package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.Employee;

import com.DAO.EmployeeDetailsDAO;

@WebServlet("/ViewEmployeeServlet")
public class ViewEmployeeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private EmployeeDetailsDAO employeeDetailsDAO;

    @Override
    public void init() throws ServletException {
        super.init(); // Call super.init() to ensure any parent initialization is performed
        employeeDetailsDAO = new EmployeeDetailsDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<model.Employee> employeeList = employeeDetailsDAO.getAllEmployees();
            request.setAttribute("employeeList", employeeList);
            request.getRequestDispatcher("employee-details.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
