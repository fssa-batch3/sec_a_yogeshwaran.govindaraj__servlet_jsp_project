package com.fssa.blood;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.fssa.blood.model.Request;

/**
 * Servlet implementation class GetAllAccounts
 */
@WebServlet("/GetAllRequest")
public class GetAllRequest extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Request> accounts = new ArrayList<Request>();
        LocalDate date = LocalDate.of(2002, 3, 10);
        
        accounts.add(new Request("I need help", "I need B+ blood", "B+", date, 9876543213L, "yogesh@gmail.com"));
        accounts.add(new Request("I need soon", "I need A+ blood", "A+", date, 9876543214L,  "yogesh@gmail.com"));
        accounts.add(new Request("I need help soon", "I need AB blood", "AB", date, 9876543215L,  "yogesh@gmail.com"));
        
        JSONArray accountsJsonArray = new JSONArray(accounts);
                
        PrintWriter out = response.getWriter();
        out.println(accountsJsonArray.toString());
        out.flush();
    }
}






