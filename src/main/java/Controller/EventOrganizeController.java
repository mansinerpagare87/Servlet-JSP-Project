package Controller;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.EventOrganizeModel;
import Service.EventOrganizeService;
import Service.EventOrganizeServiceImpl;

@WebServlet("/EventOrg")
public class EventOrganizeController extends HttpServlet {
    EventOrganizeService eoService = new EventOrganizeServiceImpl();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        int Eid = Integer.parseInt(request.getParameter("event"));
        String EO_date = request.getParameter("eventDate");
        String STime = request.getParameter("startTime");
        String ETime = request.getParameter("endTime");
        EventOrganizeModel eomodel = new EventOrganizeModel();
        eomodel.setDate(EO_date);
        eomodel.setSTime(STime);
        eomodel.setETIme(ETime);
        boolean b = eoService.isEventOrganize(eomodel, Eid);
        if (b) {
            request.setAttribute("message", "Event Organized Successfully.");
        } else {
            request.setAttribute("message", "Event Not Organized.");
        }
        RequestDispatcher r = request.getRequestDispatcher("EventOrganize.jsp");
        r.include(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
