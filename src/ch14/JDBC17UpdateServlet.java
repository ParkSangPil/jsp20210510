package ch14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch14.bean.Employee;
import ch14.dao.CustomersDAO;
import ch14.dao.EmployeesDAO;

/**
 * Servlet implementation class JDBC17UpdateServlet
 */
@WebServlet("/JDBC17UpdateServlet")
public class JDBC17UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC17UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String idStr = request.getParameter("id");
		EmployeesDAO employeesDao = new EmployeesDAO();
		Employee employee = employeesDao.getEmployee(Integer.parseInt(idStr));
		
		request.setAttribute("employee", employee);
		String path = "/ch14/jdbc17.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String lastName = request.getParameter("lastName");
		String firstName = request.getParameter("firstName");
		String notes = request.getParameter("notes");
		String id = request.getParameter("employeeID");
		int d = Integer.parseInt(id);
		
		Employee employee = new Employee();
		employee.setLastName(lastName);
		employee.setFirstName(firstName);
		employee.setNotes(notes);
		employee.setEmployeeID(d);
		
		EmployeesDAO employeesDao = new EmployeesDAO();
		employeesDao.updateEmployee(employee);

		doGet(request, response);
	}

}