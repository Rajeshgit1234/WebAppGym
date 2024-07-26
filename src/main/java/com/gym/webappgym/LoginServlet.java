package com.gym.webappgym;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/home")

public class LoginServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Do some processing

        // Get the RequestDispatcher for the target resource
        RequestDispatcher dispatcher = request.getRequestDispatcher("/home.jsp");

        // Include the output of the includedPage.jsp in the response
        dispatcher.include(request, response);
    }
}
