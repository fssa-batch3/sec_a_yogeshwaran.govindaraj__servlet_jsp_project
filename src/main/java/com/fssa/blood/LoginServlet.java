package com.fssa.blood;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.blood.model.User;
import com.fssa.blood.service.exception.ServicesException;
import com.fssa.blood.services.UserServices;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		User user = new User(email,password);
		
		PrintWriter out = response.getWriter();
		UserServices loginServices = new UserServices();
		try {
			
			if(loginServices.login(user)) {
				out.println("login success");
				HttpSession session = request.getSession();
				session.setAttribute("loggedInEmail", email);
				RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
				dispatcher.forward(request, response);
				
			}else {
				out.println("login failer");
			}
		} catch (ServicesException e) {
			
			e.printStackTrace();
			out.println(e.getMessage());
		}
		
	
		}
		
	}


