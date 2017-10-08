package com.jsp.tuts;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import app.models.User;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String password = request.getParameter("pass");
		String username = request.getParameter("username");
		HttpSession session = request.getSession();
		if(password == null || password.isEmpty()) {
			session.setAttribute("isUserLoggedIn", false);
			response.sendRedirect("./error.jsp");
		}else 
		{
			session.setAttribute("isUserLoggedIn", true);
			User loggedInUser = new User(username, new Date());
			session.setAttribute("loggedInUser", loggedInUser);
		}
		response.sendRedirect("./dashboard.jsp");
		
	}
}
