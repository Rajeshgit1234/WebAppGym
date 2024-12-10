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

@WebServlet("/markpayment")
public class MarkPayment extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try{

            RequestDispatcher dispatcher = request.getRequestDispatcher("/markpayments.jsp");


            loadPaymentDetails(dispatcher,request,response);

            dispatcher.forward(request, response);

        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{

            RequestDispatcher dispatcher = request.getRequestDispatcher("/markpayments.jsp");


            loadPaymentDetails(dispatcher,request,response);

            dispatcher.forward(request, response);

        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public  void loadPaymentDetails(RequestDispatcher dispatcher,HttpServletRequest request,HttpServletResponse response){

        try{

            String gymid = request.getSession(false).getAttribute("gymid").toString();


            JSONObject reqObj = new JSONObject();
            reqObj.put("gym_id",Integer.valueOf(gymid));
            HttpResponse<String> loginResponse = Unirest.post(Common.baseUrl+"/loadGymCustomersFull")
                    .header("Content-Type", "application/json")
                    //.body("{\"username\":\"test\",\"password\":\"test\"}")
                    .body(reqObj.toString())
                    .asString();

            JSONObject respJson = new JSONObject(loginResponse.getBody());
            JSONArray customers = new JSONArray();

            if(respJson.getBoolean("status")){


                customers = respJson.getJSONArray("profile");





            }else {

                dispatcher = request.getRequestDispatcher("/index.jsp");

            }

            HttpSession ses = request.getSession(true);
            ses.setAttribute("customers", customers);

            JSONObject subscriptions = Common.loadSubscriptions(Integer.valueOf(gymid));
            if(subscriptions.getBoolean("status")) {



                JSONArray subscriptionPlans = subscriptions.getJSONArray("subscriptionPlans");
                ses.setAttribute("subscriptionplans", subscriptionPlans);




            }

        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
