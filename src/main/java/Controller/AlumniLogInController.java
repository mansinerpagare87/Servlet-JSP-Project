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

import Model.AlumniModel;
import Model.OrganizerModel;
import Service.AlumniRegisterService;
import Service.AlumniRegisterServiceImpl;
@WebServlet("/AlumniLogIn")
public class AlumniLogInController extends HttpServlet {
	AlumniRegisterService arService=new AlumniRegisterServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String User=request.getParameter("email");
		String Password=request.getParameter("password");
		
		AlumniModel amodel=new AlumniModel();
		amodel.setAl_Email(User);
		amodel.setAl_Contact(Password);
		int alumniId=arService.isPresentAlumni(amodel);
		
		if(alumniId !=-1) {
			HttpSession session=request.getSession();
			session.setAttribute("userid",alumniId );
			
			AlumniModel alumni=arService.getAlumni(alumniId);
			if(alumni !=null) {
				session.setAttribute("alumniName",alumni.getAl_Email());
				session.setAttribute("alumniemail",alumni.getAl_Contact());
			}
			RequestDispatcher r=request.getRequestDispatcher("AlumniDashboard.jsp");
			r.include(request, response);
		}else {
			RequestDispatcher r=request.getRequestDispatcher("AlumniRegis.jsp");
			r.include(request, response);
			out.println("<h1>Alumni Not Found</h1>");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
