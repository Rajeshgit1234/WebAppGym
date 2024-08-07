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
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/home")

public class LoginServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException  {

        try{

            RequestDispatcher dispatcher = request.getRequestDispatcher("/home.jsp");
            dispatcher.forward(request, response);

        }catch (Exception e){
            e.printStackTrace();
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Do some processing

        // Get the RequestDispatcher for the target resource
        RequestDispatcher dispatcher = request.getRequestDispatcher("/home.jsp");

        try{

            String username = request.getParameter("userid");
            String password = request.getParameter("passcode");

            JSONObject reqObj = new JSONObject();
            reqObj.put("username",username);
            reqObj.put("password",password);
            HttpResponse<String> loginResponse = Unirest.post("http://localhost:8763/login")
                    .header("Content-Type", "application/json")
                    //.body("{\"username\":\"test\",\"password\":\"test\"}")
                    .body(reqObj.toString())
                    .asString();

            JSONObject respJson = new JSONObject(loginResponse.getBody());
            if(respJson.getBoolean("status")){

                HttpSession session = request.getSession();
                JSONObject gymOwnerJson = respJson.getJSONObject("gymowner");
                System.out.println("gymOwnerJson"+gymOwnerJson);
                request.setAttribute("name", gymOwnerJson.getString("name"));
                session.setAttribute("userid",gymOwnerJson.getInt("userid"));

            }else {

                dispatcher = request.getRequestDispatcher("/index.jsp");

            }
        }catch (Exception e){
            e.printStackTrace();
        }


        // Include the output of the includedPage.jsp in the response
        dispatcher.forward(request, response);
    }
}
