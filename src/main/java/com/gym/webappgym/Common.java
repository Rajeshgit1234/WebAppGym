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
            reqObj.put("gym_id",Integer.valueOf(gym_id));
            reqObj.put("user_id",Integer.valueOf(user_id));
            HttpResponse<String> loginResponse = Unirest.post(Common.baseUrl+"/homeData")
                    .header("Content-Type", "application/json")
                    //.body("{\"username\":\"test\",\"password\":\"test\"}")
                    .body(reqObj.toString())
                    .asString();

            JSONObject respJson = new JSONObject(loginResponse.getBody());
            if(respJson.getBoolean("status")){


                JSONObject gymuserJson = respJson.getJSONObject("gymuser");
                JSONArray expenseMasterList = respJson.getJSONArray("expenseMasterList");
                JSONArray profileMasterList = respJson.getJSONArray("profileMasterList");
                JSONArray subscriptionplans = respJson.getJSONArray("subscriptionplans");
                JSONArray payList = respJson.getJSONArray("payList");
                JSONArray expData = respJson.getJSONArray("expData");
                System.out.println("gymuser"+gymuserJson);
                System.out.println("expenseList"+expenseMasterList);
                request.setAttribute("name", gymuserJson.getString("name"));
                request.setAttribute("exp_total", respJson.getString("exp_total"));
                request.setAttribute("pay_total", respJson.getString("pay_total"));
                HttpSession ses = request.getSession(true);

                ses.setAttribute("expenseMasterList", expenseMasterList);
                ses.setAttribute("profileMasterList", profileMasterList);
                ses.setAttribute("subscriptionplans", subscriptionplans);
                ses.setAttribute("payList", payList);
                ses.setAttribute("expData", expData);
                ses.setAttribute("userid",gymuserJson.getInt("userid"));
                ses.setAttribute("gymid",gymuserJson.getInt("gymid"));

            }else {

                dispatcher = request.getRequestDispatcher("/index.jsp");

            }
        }catch (Exception e){
            e.printStackTrace();
        }

    }

    public static JSONObject loadSubscriptions(int gymid) {
        JSONObject respJson = new JSONObject();
        JSONObject reqObj = new JSONObject();
        try{

            reqObj.put("gym_id",gymid);
            HttpResponse<String> loginResponse = Unirest.post(Common.baseUrl+"/fetchSubscriptionPlans")
                    .header("Content-Type", "application/json")
                    //.body("{\"username\":\"test\",\"password\":\"test\"}")
                    .body(reqObj.toString())
                    .asString();

             respJson = new JSONObject(loginResponse.getBody());

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return respJson;
    }
    public static JSONObject loadDietPlans(int gymid) {
        JSONObject respJson = new JSONObject();
        JSONObject reqObj = new JSONObject();
        try{

            reqObj.put("gym_id",gymid);
            HttpResponse<String> loginResponse = Unirest.post(Common.baseUrl+"/findDietPlansFull")
                    .header("Content-Type", "application/json")
                    //.body("{\"username\":\"test\",\"password\":\"test\"}")
                    .body(reqObj.toString())
                    .asString();

             respJson = new JSONObject(loginResponse.getBody());

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return respJson;
    }
}
