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

import com.fssa.blood.model.Hospital;
import com.fssa.blood.service.HospitalService;
import com.fssa.blood.service.exception.ServiceException;

@WebServlet("/SeekerLogin")
public class SeekerLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		Hospital hospital = new Hospital(email, password);

		PrintWriter out = response.getWriter();

		HospitalService loginServices = new HospitalService();

		try {
			if (loginServices.login(hospital)) {
				out.println("Hospital login success");
				HttpSession session = request.getSession();

				Hospital loggedHospital = new HospitalService().getHospital(email);
				System.out.println("loggedHospital");

				session.setAttribute("loggedInEmailH", loggedHospital);
				System.out.println("session");

				RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/Seeker Index.jsp");
				dispatcher.forward(request, response);

			} else {
				out.println("login failer");
			}
		} catch (ServiceException e) {
			System.out.println("catch");

			e.printStackTrace();
			out.println(e.getMessage());
		}

	}

}
