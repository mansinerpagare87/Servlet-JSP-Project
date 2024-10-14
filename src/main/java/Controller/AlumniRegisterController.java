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
import Service.*;
@WebServlet("/AlumniRegister")
public class AlumniRegisterController extends HttpServlet {
	AlumniRegisterService aService=new AlumniRegisterServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String Name=request.getParameter("name");
		String Email=request.getParameter("email");
		String Contact=request.getParameter("contact");
		String Year=request.getParameter("passYear");
		String Dep_Name[]=request.getParameterValues("department");
		AlumniModel amodel=new AlumniModel();
		amodel.setAl_Name(Name);
		amodel.setAl_Email(Email);
		amodel.setAl_Contact(Contact);
		amodel.setPass_year(Year);
		boolean b=aService.isAddAlumni(amodel,Dep_Name);
		if(b) {
			request.setAttribute("message","Successfully Registered..");
		}else {
			request.setAttribute("message","Not Registered.");
		}
		RequestDispatcher r=request.getRequestDispatcher("AlumniRegis.jsp");
		r.include(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
