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
@WebServlet("/upd")
public class UpdateDepartmentController extends HttpServlet {
	DepartmentService dService=new DepartmentServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int Dept_Id=Integer.parseInt(request.getParameter("departmentid"));
		String Dept_Name=(request.getParameter("name"));
		DepartmentModel dmodel=new DepartmentModel();
		dmodel.setDept_Id(Dept_Id);
		dmodel.setDept_Name(Dept_Name);
		//boolean b=new DepartmentServiceImpl().isUpdateDepartment(dmodel);
		boolean b=dService.isUpdateDepartment(dmodel);
		if(b) {
			RequestDispatcher r=request.getRequestDispatcher("viewdepartment.jsp");
			r.forward(request, response);
		}else {
			RequestDispatcher r=request.getRequestDispatcher("upd");
			r.include(request, response);
			out.println("<h1>Not Update..</h1>");
		}
		/*out.println("<form name='frm' action='FinalUpd' method='post'>");
		out.println("<input type='hidden' value='"+Dept_Id+"' name='id'/>");
		out.println("<input type='text' value='"+Dept_Name+"' name='name'/>");
		out.println("<input type='submit' name='s' value='Update Department'/>");
		out.println("</form>");*/
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
