package Controller;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DepartmentModel;
import Repository.DepartmentRepositoryImpl;
import Service.DepartmentService;
import Service.DepartmentServiceImpl;
@WebServlet("/AddDepartment")
public class AddNewDepartmentController extends HttpServlet {
	DepartmentService dService=new DepartmentServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String Dept_Name=request.getParameter("departmentName");
		DepartmentModel dmodel=new DepartmentModel();
		dmodel.setDept_Name(Dept_Name);
		boolean b=dService.isAddDepartment(dmodel);
		if(b) {
			request.setAttribute("message","Department Added Successfully..");
			
		}else {
			request.setAttribute("message","Not Add Department.");
		}
		RequestDispatcher r=request.getRequestDispatcher("AddDepartment.jsp");
		r.include(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
