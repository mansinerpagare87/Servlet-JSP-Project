package Controller;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.OrganizerModel;
import Service.OrganizerService;
import Service.OrganizerServiceImpl;
@WebServlet("/OrganizerProfile")
public class OrganizerProfileController extends HttpServlet {
	OrganizerService oService=new OrganizerServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		Object userid=session.getAttribute("userid");
		int loginuserid=Integer.parseInt(userid.toString());
		OrganizerModel omodel=oService.getOrganizer(loginuserid);
		if(omodel!=null) {
			out.println("<h1>name is :&nbsp;&nbsp"+omodel.getOrg_Name()+"</h1>");
			out.println("<h1>email is :&nbsp;&nbsp"+omodel.getOrg_Email()+"</h1>");
			out.println("<h1>contact is :&nbsp;&nbsp"+omodel.getOrg_Contact()+"</h1>");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
