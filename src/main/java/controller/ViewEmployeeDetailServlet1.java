
package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.Employee;

import com.DAO.ViewEmployeeDetailsDAO;

@WebServlet("/ViewEmployeeDetailServlet1")
public class ViewEmployeeDetailServlet1 extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ViewEmployeeDetailServlet1() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String employeeId = request.getParameter("employeeId");

        ViewEmployeeDetailsDAO dao = new ViewEmployeeDetailsDAO();
        model.Employee employeeDetails = dao.getEmployeeDetails(employeeId);

        request.setAttribute("employeeDetails", employeeDetails);
        request.getRequestDispatcher("viewemployeeDetail1.jsp").forward(request, response);
    }
}
