package com.studentapp_2.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.studentapp_2.model.DAOService;
import com.studentapp_2.model.DAOServiceImpl;

@WebServlet("/saveReg")
public class NewRegController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public NewRegController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/new_reg.jsp");
		rd.forward(request, response);
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession(false);
		session.setMaxInactiveInterval(200);
		if (session.getAttribute("email") != null) {
			String name = request.getParameter("name");
			String city = request.getParameter("city");
			String email = request.getParameter("email");
			long mobile = Long.parseLong(request.getParameter("mobile"));

			DAOService service = new DAOServiceImpl();
			service.connectionDB();
			service.saveReg(name, city, email, mobile);

			request.setAttribute("msg", "Kudos!Record Saved");
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/new_reg.jsp");
			rd.forward(request, response);

		} else {
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}
	}
}


	

