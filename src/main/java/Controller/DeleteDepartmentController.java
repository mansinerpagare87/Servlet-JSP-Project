package Controller;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.DepartmentModel;
import Service.DepartmentService;
import Service.DepartmentServiceImpl;
@WebServlet("/del")
public class DeleteDepartmentController extends HttpServlet {
	DepartmentService dService=new DepartmentServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int Dept_Id=Integer.parseInt(request.getParameter("departmentid"));
		DepartmentModel dmodel=new DepartmentModel();
		dmodel.setDept_Id(Dept_Id);
		boolean b=dService.isDeleteDepartmentById(Dept_Id);
		if(b) {
			RequestDispatcher r=request.getRequestDispatcher("viewdepartment.jsp");
			r.include(request, response);
		}else {
			RequestDispatcher r=request.getRequestDispatcher("viewdepartment.jsp");
			r.include(request, response);
			out.println("<h1>Not Delete department.</h1>");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
