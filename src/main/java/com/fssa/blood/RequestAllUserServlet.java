package com.fssa.blood;

import com.fssa.blood.DAO.RequestDAO;
import com.fssa.blood.model.Request;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

@WebServlet("/RequestAllUserServlet")
public class RequestAllUserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            RequestDAO requestDAO = new RequestDAO();
            List<Request> requestList = requestDAO.readrequest(); // Retrieve the list of requests from DAO
            System.out.println(requestList);
            JSONArray requestDetailsJson = new JSONArray(requestList);
            PrintWriter out = response.getWriter();
            out.println(requestDetailsJson.toString());


        } catch (Exception e) {
            e.printStackTrace();
            // Handle exceptions appropriately
        }
    }
}
