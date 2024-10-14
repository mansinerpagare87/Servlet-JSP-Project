package Controller;
import java.io.IOException;
import java.io.PrintWriter;

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
@WebServlet("/AlumniProfile")
public class AlumniProfileController extends HttpServlet {
	AlumniRegisterService arService=new AlumniRegisterServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		Object userid=session.getAttribute("userid");
		int loginuserid=Integer.parseInt(userid.toString());
		AlumniModel amodel=arService.getAlumni(loginuserid);
		if(amodel!=null) {
			out.println("<h1>name is :&nbsp;&nbsp"+amodel.getAl_Name()+"</h1>");
			out.println("<h1>email is :&nbsp;&nbsp"+amodel.getAl_Email()+"</h1>");
			out.println("<h1>contact is :&nbsp;&nbsp"+amodel.getAl_Contact()+"</h1>");
			out.println("<h1>pass year is :&nbsp;&nbsp"+amodel.getPass_year()+"</h1>");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
