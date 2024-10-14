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
@WebServlet("/AddNewEvent")
public class AddNewEventController extends HttpServlet {
	EventService eService=new EventServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String Name=request.getParameter("EName");
		String Dep_Name[]=request.getParameterValues("department");
		EventModel emodel=new EventModel();
		emodel.setEName(Name);
		boolean b=eService.isAddNewEvent(emodel,Dep_Name);
		if(b) {
			request.setAttribute("message","Event Added Successfully..");
		}else {
			request.setAttribute("message","Event not Added Successfully..");
		}
		RequestDispatcher r=request.getRequestDispatcher("AddEvent.jsp");
		r.include(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
