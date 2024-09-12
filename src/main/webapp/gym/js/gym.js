window.onload = function() {
    var loginBtn = document.getElementById('loginBtn');
    loginBtn.onclick = function() {
        var phone =  $('#phone').val();
        var gympassword =  $('#gympassword').val();
        phone="919497437361";
        gympassword="test";

        if(gympassword&& phone){

            $("#loading").css("display", "block");
            //$('#userid').val(gymusername);
            //$('#passcode').val(gympassword);

           // $('#loginform').attr('action', "/WebAppGym/home").submit();
            var url = baseUrl+"/weblogin"

            var settings = $.fn.commonajaxCall(url,{ "phone": phone,"password": gympassword});
            $.ajax(settings).done(function (resp) {

                console.log(resp);
                var response = jQuery.parseJSON(resp)
                $.fn.closeLoader();
                if(response.status){
                    gym_id = response.gym_id;
                    user_id = response.user_id;
                    sessionStorage.setItem("gym_id", gym_id);
                    sessionStorage.setItem("user_id", user_id);


                    $('#user_id').val(user_id);
                    $('#gym_id').val(gym_id);
                    $('#loginform').attr('action', "/WebAppGym/home").submit();
                    // $.fn.showAlertSuccess(response.statusDesc);


                }else{

                    // $.fn.showAlertFail(response.statusDesc);
                    alert(response.statusDesc)

                }



            });

        }else{

            alert("Please enter username and password")
        }



    };


    var regBtn = document.getElementById('regBtn');
    regBtn.onclick = function() {

        var mobile =  $('#mobile').val();
        var password =  $('#password').val();

        if(mobile && password){

            if(mobile.substring(0,2).equals("91")){

                mobile = mobile.substring(2,mobile.length());
            }

            if(phone_server!=mobile){

                var url = baseUrl+"/registerToken"

                var settings = $.fn.commonajaxCall(url,{ "token": token,"phone":phone_server ,"password":password});
                $.ajax(settings).done(function (response) {
                    console.log(response);
                    $.fn.closeLoader();


                });

            }else{


            }

        }else{


        }



    };





};