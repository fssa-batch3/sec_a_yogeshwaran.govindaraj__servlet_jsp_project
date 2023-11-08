package com.fssa.blood;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.blood.model.Hospital;
import com.fssa.blood.service.HospitalService;
import com.fssa.blood.service.exception.ServiceException;
import com.fssa.blood.validation.exception.InvalidUserException;

@WebServlet("/Seekerregister")
public class SeekerRegisterServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		
		
		Hospital hospital = new Hospital(name, email, password, address, phone);
		HospitalService hospitalService = new HospitalService();
		
		try {
			if(hospitalService.create(hospital)) {
				out.println("Hospital is valid");
				response.sendRedirect(request.getContextPath() + "/pages/SeekerLogin.jsp");
			}else {
				out.println("Hospital is Invalid");
			}
		} catch (ServiceException | InvalidUserException e) {
			e.printStackTrace();

		}
		}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}
	}
