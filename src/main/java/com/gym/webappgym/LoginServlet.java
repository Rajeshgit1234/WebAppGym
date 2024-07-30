package com.gym.webappgym;

import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.Unirest;
import org.json.JSONObject;

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

        try{

            HttpResponse<String> loginResponse = Unirest.post("http://localhost:8763/login")
                    .header("Content-Type", "application/json")
                    .body("{\"username\":\"test\",\"password\":\"test\"}")
                    .asString();

            JSONObject respJson = new JSONObject(loginResponse.getBody());
            if(respJson.getBoolean("status")){

                JSONObject gymOwnerJson = respJson.getJSONObject("gymowner");
                System.out.println("gymOwnerJson"+gymOwnerJson);
                request.setAttribute("name", gymOwnerJson.getString("name"));

            }else {

                dispatcher = request.getRequestDispatcher("/index.jsp");

            }
        }catch (Exception e){
            e.printStackTrace();
        }


        // Include the output of the includedPage.jsp in the response
        dispatcher.include(request, response);
    }
}