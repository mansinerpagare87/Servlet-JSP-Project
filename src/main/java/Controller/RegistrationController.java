package Controller;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.RegistrationModel;
import Service.RegistrationService;
import Service.RegistrationServiceImpl;
@WebServlet("/Registration")
public class RegistrationController extends HttpServlet {
	RegistrationService rs=new RegistrationServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String contact=request.getParameter("contact");
		String  EName=request.getParameter("ename");
		int EOrg_Id=Integer.parseInt(request.getParameter("EName"));
		RegistrationModel rmodel=new RegistrationModel();
		boolean b=rs.isRegistered(rmodel,EOrg_Id);
		if(b) {
			request.setAttribute("messsage","Registration Successful..");
		}else {
			request.setAttribute("message","Not Registration Success..");
		}
		RequestDispatcher r=request.getRequestDispatcher("");
		r.include(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
