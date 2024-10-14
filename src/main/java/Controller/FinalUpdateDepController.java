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
import Service.DepartmentServiceImpl;
@WebServlet("/FinalUpd")
public class FinalUpdateDepController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int Dept_Id=Integer.parseInt(request.getParameter("id"));
		String Dept_Name=request.getParameter("name");
		DepartmentModel dmodel=new DepartmentModel();
		dmodel.setDept_Id(Dept_Id);
		dmodel.setDept_Name(Dept_Name);
		System.out.println(Dept_Name);
		boolean b=new DepartmentServiceImpl().isUpdateDepartment(dmodel);
		if(b) {
			RequestDispatcher r=request.getRequestDispatcher("viewdepartment.jsp");
			r.forward(request, response);
		}else {
			RequestDispatcher r=request.getRequestDispatcher("upd");
			r.include(request, response);
			out.println("<h1>Not Update..</h1>");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
