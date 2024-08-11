package com.gym.webappgym;

import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.Unirest;
import org.json.JSONArray;
import org.json.JSONObject;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/home")

public class HomeServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException  {

        try{

            RequestDispatcher dispatcher = request.getRequestDispatcher("/home.jsp");
            Common.loadHomeScreenData(request,response,dispatcher);

            dispatcher.forward(request, response);

        }catch (Exception e){
            e.printStackTrace();
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Do some processing

        // Get the RequestDispatcher for the target resource
        RequestDispatcher dispatcher = request.getRequestDispatcher("/home.jsp");

        Common.loadHomeScreenData(request,response,dispatcher);


        // Include the output of the includedPage.jsp in the response
        dispatcher.forward(request, response);
    }


}
