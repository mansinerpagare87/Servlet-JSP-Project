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
import Service.EventService;
import Service.EventServiceImpl;
@WebServlet("/DeleteEvent")
public class DeleteEventController extends HttpServlet {
	EventService eService=new EventServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int Eid=Integer.parseInt(request.getParameter("eventid"));
		EventModel emodel=new EventModel();
		emodel.setEid(Eid);
		boolean b=eService.isDeleteEvent(Eid);
		if(b) {
			RequestDispatcher r=request.getRequestDispatcher("viewevent.jsp");
			r.include(request, response);
		}else {
			RequestDispatcher r=request.getRequestDispatcher("viewevent.jsp");
			r.include(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
