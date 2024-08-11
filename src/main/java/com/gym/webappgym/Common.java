package com.gym.webappgym;

import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.Unirest;
import org.json.JSONArray;
import org.json.JSONObject;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Common {

    public static String baseUrl = "http://localhost:8763";

    public static void loadHomeScreenData(HttpServletRequest request, HttpServletResponse response, RequestDispatcher dispatcher){


        try{

            HttpSession session = request.getSession();
            String user_id = request.getParameter("user_id");
            String gym_id = request.getParameter("gym_id");

            JSONObject reqObj = new JSONObject();
            reqObj.put("gym_id",Integer.valueOf(user_id));
            reqObj.put("user_id",Integer.valueOf(gym_id));
            HttpResponse<String> loginResponse = Unirest.post(Common.baseUrl+"/homeData")
                    .header("Content-Type", "application/json")
                    //.body("{\"username\":\"test\",\"password\":\"test\"}")
                    .body(reqObj.toString())
                    .asString();

            JSONObject respJson = new JSONObject(loginResponse.getBody());
            if(respJson.getBoolean("status")){


                JSONObject gymOwnerJson = respJson.getJSONObject("gymowner");
                JSONArray expenseMasterList = respJson.getJSONArray("expenseMasterList");
                System.out.println("gymOwnerJson"+gymOwnerJson);
                System.out.println("expenseList"+expenseMasterList);
                request.setAttribute("name", gymOwnerJson.getString("name"));
                request.setAttribute("exp_total", respJson.getString("exp_total"));
                session.setAttribute("expenseMasterList", expenseMasterList);
                session.setAttribute("userid",gymOwnerJson.getInt("userid"));
                session.setAttribute("gymid",gymOwnerJson.getInt("gymid"));

            }else {

                dispatcher = request.getRequestDispatcher("/index.jsp");

            }
        }catch (Exception e){
            e.printStackTrace();
        }

    }
}
