package com.gym.webappgym;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/expMaster")
public class ExpMaster extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{

            RequestDispatcher dispatcher = request.getRequestDispatcher("/expMaster.jsp");
            dispatcher.forward(request, response);

        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{

            RequestDispatcher dispatcher = request.getRequestDispatcher("/expMaster.jsp");
            dispatcher.forward(request, response);

        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
