package Controller;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.OrganizerModel;
import Service.OrganizerService;
import Service.OrganizerServiceImpl;
@WebServlet("/OrganizerRegis")
public class OrganizerRegisController extends HttpServlet {
	OrganizerService oService=new OrganizerServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String Name=request.getParameter("Name");
		String Email=request.getParameter("email");
		String Contact=request.getParameter("contact");
		OrganizerModel omodel=new OrganizerModel();
		omodel.setOrg_Name(Name);
		omodel.setOrg_Email(Email);
		omodel.setOrg_Contact(Contact);
		boolean b=oService.isAddOrganizer(omodel);
		if(b) {
			RequestDispatcher r=request.getRequestDispatcher("OrganizerRegis.jsp");
			r.include(request, response);
			out.println("<h1>Organizer Added.</h1>");
		}else {
			RequestDispatcher r=request.getRequestDispatcher("OrganizerRegis.jsp");
			r.include(request, response);
			out.println("<h1>Organizer Not Added.</h1>");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
