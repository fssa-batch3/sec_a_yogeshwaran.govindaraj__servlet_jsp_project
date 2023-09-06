package com.fssa.blood;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.blood.model.User;
import com.fssa.blood.service.exception.ServicesException;
import com.fssa.blood.services.UserServices;
import com.fssa.blood.validation.exception.InvalidUserException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet{
private static final long serialVersionUID = 1L;
       

    
	@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	doPost(req,resp);
}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		
		PrintWriter out = response.getWriter();
	
		
		User user1 = new User(name, email, password, address, phone);
		UserServices userService = new UserServices();

		try {
			if (userService.create(user1)) {
				out.println("User is valid");
				response.sendRedirect("login.jsp");
			} else {
				out.println("User is Invalid");
			}
		} catch (ServicesException | InvalidUserException e) {
			e.printStackTrace();
		
		}
		
		

}
}