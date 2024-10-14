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

import Model.OrganizerModel;
import Service.OrganizerService;
import Service.OrganizerServiceImpl;

@WebServlet("/OrganizerLogIn")
public class OrganizerLogInController extends HttpServlet {
    OrganizerService oService = new OrganizerServiceImpl();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String userEmail = request.getParameter("email");
        String userPass = request.getParameter("password");

        OrganizerModel omodel = new OrganizerModel();
        omodel.setOrg_Email(userEmail);
        omodel.setOrg_Contact(userPass);

        int organizerId = oService.isPresentOrganizer(omodel);
        if (organizerId != -1) {
            HttpSession session = request.getSession();
            session.setAttribute("userid", organizerId);

            // Fetch organizer details to get the name
            OrganizerModel organizer = oService.getOrganizer(organizerId);
            if (organizer != null) {
                session.setAttribute("organizerName", organizer.getOrg_Email());
                session.setAttribute("contact",organizer.getOrg_Contact());
            }

            RequestDispatcher dispatcher = request.getRequestDispatcher("OrganizerDashBoard.jsp");
            dispatcher.include(request, response);
        } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("OrganizerRegis.jsp");
            dispatcher.include(request, response);
            out.println("<h1>Organizer Not Found.</h1>");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
