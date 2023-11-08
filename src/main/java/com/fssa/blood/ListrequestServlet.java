package com.fssa.blood;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.blood.model.Request;
import com.fssa.blood.service.RequestService;
import com.fssa.blood.service.exception.ServiceException;

/**
 * Servlet implementation class ListrequestServlet
 */
@WebServlet("/ListrequestServlet")
public class ListrequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	RequestService requestService = new RequestService();
        String userEmail = request.getParameter("email");

        try {
            List<Request> requestList = requestService.listRequestsByEmail();
            System.out.println(requestList.size());
            for(Request rs : requestList) {
            	System.out.println(rs.toString());
            }
            request.setAttribute("User_LIST", requestList);

            // Forward the request to your JSP page for rendering
            request.getRequestDispatcher("./pages/DonorList.jsp").forward(request, response);
        } catch (ServiceException e) {
            // Handle the exception (e.g., log or show an error message)
            e.printStackTrace();
            request.setAttribute("errorMessage", "Error listing requests: " + e.getMessage());
            request.getRequestDispatcher("/error.jsp").forward(request, response); // Forward to an error page
        }
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
