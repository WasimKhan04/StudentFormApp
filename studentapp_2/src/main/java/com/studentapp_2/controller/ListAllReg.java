package com.studentapp_2.controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.studentapp_2.model.DAOService;
import com.studentapp_2.model.DAOServiceImpl;

@WebServlet("/listall")
public class ListAllReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ListAllReg() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		session.setMaxInactiveInterval(200);
		if (session.getAttribute("email") != null) {
			DAOService service = new DAOServiceImpl();
			service.connectionDB();
			ResultSet allReg = service.getAllReg();

			request.setAttribute("all", allReg);

			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/listall.jsp");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
	
	}

}
