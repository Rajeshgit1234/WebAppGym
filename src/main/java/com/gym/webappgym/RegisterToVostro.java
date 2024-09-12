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
@WebServlet("/regvostro")
public class RegisterToVostro extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        try {

            RequestDispatcher dispatcher = request.getRequestDispatcher("/registertovostro.jsp");
           String tk =  request.getParameter("tk").toString();
            System.out.println(tk);
            JSONObject reqObj = new JSONObject();
            reqObj.put("token",tk);
            HttpResponse<String> loginResponse = Unirest.post(Common.baseUrl+"/verifyToken")
                    .header("Content-Type", "application/json")
                    //.body("{\"username\":\"test\",\"password\":\"test\"}")
                    .body(reqObj.toString())
                    .asString();

            JSONObject respJson = new JSONObject(loginResponse.getBody());
            if(respJson.getBoolean("status")){


                String phone = respJson.getString("phone");
                if(phone!=null && !phone.isEmpty()){
                    HttpSession ses = request.getSession(true);

                    ses.setAttribute("phone", phone);
                    ses.setAttribute("token", tk);

                }else{
                    dispatcher = request.getRequestDispatcher("/notfound.jsp");
                }

            }else{
                dispatcher = request.getRequestDispatcher("/notfound.jsp");

            }

            dispatcher.forward(request, response);

        }catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {

            RequestDispatcher dispatcher = request.getRequestDispatcher("/registertovostro.jsp");


            dispatcher.forward(request, response);

        }catch (Exception e) {}
    }
}
