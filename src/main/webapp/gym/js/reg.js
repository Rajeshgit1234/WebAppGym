window.onload = function() {


    var regBtn = document.getElementById('regBtn');
    regBtn.onclick = function() {


        var mobile =  $('#mobile').val();
        var password =  $('#password').val();

        if(mobile && password){

            if(mobile.substring(0,2)==("91")){

                mobile = mobile.substring(2,mobile.length);
            }

            if(phone_server==mobile){

                var url = baseUrl+"/registerToken"

                var settings = $.fn.commonajaxCall(url,{ "token": token,"phone":phone_server ,"password":password});
                $.ajax(settings).done(function (response) {
                    console.log(response);
                    response = jQuery.parseJSON(response)
                    $.fn.closeLoader();
                    alert(response.statusDesc)
                    if(response.status){

                        setTimeout(
                            function()
                            {
                                window.open(weburl, '_blank').focus();
                            }, 5000);


                    }



                });

            }else{
                alert("Please enter registered mobile ")


            }

        }else{

            alert("Please enter mobile and password")

        }



    };





};