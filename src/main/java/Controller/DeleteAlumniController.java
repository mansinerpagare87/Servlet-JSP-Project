package Controller;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.AlumniModel;
import Service.AlumniRegisterServiceImpl;
@WebServlet("/DeleteAlumni")
public class DeleteAlumniController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int Al_Id=Integer.parseInt(request.getParameter("alumniId"));
		AlumniModel amodel=new AlumniModel();
		amodel.setAl_Id(Al_Id);
		boolean b=new AlumniRegisterServiceImpl().isDeleteAlumni(Al_Id);
		if(b) {
			RequestDispatcher r=request.getRequestDispatcher("viewAlumni.jsp");
			r.include(request, response);
		}else {
			RequestDispatcher r=request.getRequestDispatcher("viewAlumni.jsp");
			r.include(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
