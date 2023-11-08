package com.fssa.blood;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.utils.ConnectionUtil;

/**
 * Servlet implementation class DeleteRequestServlet
 */
@WebServlet("/DeleteRequestServlet")
public class DeleteRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		
            // Create a connection to the database
            try 
            (Connection connection = ConnectionUtil.getConnection()){
            	
                // SQL query to delete a row with a specific email
                String deleteQuery = "DELETE FROM request WHERE email = ?";

                // Create a PreparedStatement with the query
                try (PreparedStatement preparedStatement = connection.prepareStatement(deleteQuery)) {
                    // Set the email parameter
                    preparedStatement.setString(1, email);

                    // Execute the delete statement
                    int rowsDeleted = preparedStatement.executeUpdate();

                    if (rowsDeleted > 0) {
                        System.out.println("Row with email " + email + " deleted successfully.");
                    } else {
                        System.out.println("No rows deleted. Email not found.");
                    }
                }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        response.sendRedirect("/blood/pages/Bookingcard.jsp");
	}

	
	}

