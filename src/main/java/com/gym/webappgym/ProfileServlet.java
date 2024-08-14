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

@WebServlet("/profile")
public class ProfileServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try{

            RequestDispatcher dispatcher = request.getRequestDispatcher("/profile.jsp");


            loadProfile(dispatcher,request,response);

            dispatcher.forward(request, response);

        }catch (Exception e){
            e.printStackTrace();
        }

    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Do some processing

        // Get the RequestDispatcher for the target resource
        RequestDispatcher dispatcher = request.getRequestDispatcher("/profile.jsp");

        loadProfile(dispatcher,request,response);


        // Include the output of the includedPage.jsp in the response
        dispatcher.forward(request, response);
    }

    public void loadProfile(RequestDispatcher dispatcher ,HttpServletRequest request, HttpServletResponse response) {

        try{


            String user_id = request.getSession(false).getAttribute("userid").toString();

            JSONObject reqObj = new JSONObject();
            reqObj.put("user_id",Integer.valueOf(user_id));
            HttpResponse<String> loginResponse = Unirest.post(Common.baseUrl+"/loadProfile")
                    .header("Content-Type", "application/json")
                    //.body("{\"username\":\"test\",\"password\":\"test\"}")
                    .body(reqObj.toString())
                    .asString();

            JSONObject respJson = new JSONObject(loginResponse.getBody());
            if(respJson.getBoolean("status")){


                JSONObject profile = respJson.getJSONObject("profile");

                request.setAttribute("name", profile.optString("name"));
                request.setAttribute("username", profile.optString("username"));
                request.setAttribute("address", profile.optString("address"));
                request.setAttribute("created", profile.optString("created"));
                request.setAttribute("gym", profile.optString("gym"));
                request.setAttribute("profile", profile.optString("profile"));
                request.setAttribute("gymaddress", profile.optString("gymaddress"));


            }else {

                dispatcher = request.getRequestDispatcher("/index.jsp");

            }
        }catch (Exception e){
            e.printStackTrace();
        }

    }


}
