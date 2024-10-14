package Controller;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.AlumniModel;
import Service.AlumniRegisterServiceImpl;
@WebServlet("/UpdateAlumni")
public class UpdateAlumniController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int Al_Id=Integer.parseInt(request.getParameter("id"));
		String Al_Name=request.getParameter("alumniname");
		String Dept_Name=request.getParameter("departmentname");
		AlumniModel amodel=new AlumniModel();
		amodel.setAl_Id(Al_Id);
		amodel.setAl_Name(Al_Name);
		
		boolean b=new AlumniRegisterServiceImpl().isUpdateAlumni(amodel);
		if(b) {
			RequestDispatcher r=request.getRequestDispatcher("viewevent.jsp");
			r.forward(request, response);
		}else {
			RequestDispatcher r=request.getRequestDispatcher("UpdateEvent.jsp");
			r.forward(request, response);
		}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
