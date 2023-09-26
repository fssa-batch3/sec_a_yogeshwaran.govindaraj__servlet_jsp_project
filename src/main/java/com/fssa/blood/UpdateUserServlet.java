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
import com.fssa.blood.service.UserService;
import com.fssa.blood.service.exception.ServiceException;

/**
 * Servlet implementation class UpdateUserServlet
 */
@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateUserServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		User user = new User();
		String email = request.getParameter("email");
		user.setName(request.getParameter("name"));
		System.out.println(request.getParameter("name"));
		user.setEmail(email);
		user.setPassword(request.getParameter("password"));
		user.setPhone(request.getParameter("phone"));
		user.setAddress(request.getParameter("address"));

		try {

			UserService.update(user, user.getEmail());
			//PrintWriter out = response.getWriter();
			//out.print("Updated");
			UserService us = new UserService();
			User loggedUser = us.getUser(email);
			HttpSession session = request.getSession(false);
			session.setAttribute("loggedInEmail", loggedUser);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/profile.jsp");
			dispatcher.forward(request, response);
			
		} catch (ServiceException e) {

			request.setAttribute("errorMsg", e.getMessage());
			e.printStackTrace();
		}

		// RequestDispatcher rd =
		// request.getServletContext().getRequestDispatcher("/pages/profile.jsp");
		// rd.forward(request, response);
	}

}
