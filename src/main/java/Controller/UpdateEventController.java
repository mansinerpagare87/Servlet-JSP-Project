package Controller;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.EventModel;
import Service.EventServiceImpl;
@WebServlet("/UpE")
public class UpdateEventController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int Eid=Integer.parseInt(request.getParameter("id"));
		String EName=request.getParameter("name");
		String Dept_Name=request.getParameter("department");
		EventModel emodel=new EventModel();
		emodel.setEid(Eid);
		emodel.setEName(EName);
		//emodel.
		boolean b=new EventServiceImpl().isUpdateEvent(emodel);
		if(b) {
			RequestDispatcher r=request.getRequestDispatcher("viewevent.jsp");
			r.forward(request, response);
		}else {
			RequestDispatcher r=request.getRequestDispatcher("UpdateEvent.jsp");
			r.forward(request, response);
		}
	
		/*out.println("<form name='frm' action='' method='post'>");
		out.println("<input type='hidden' value='"+Eid+"' name='id'/>");
		out.println("<input type='text' value='"+EName+"' name='name'/>");
		out.println("<input type='text' value='"+Dept_Name+"' name='dname'/>");
		out.println("<input type='submit' name='s' value='Update Department'/>");
		out.println("</form>");*/
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
