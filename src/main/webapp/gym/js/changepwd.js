window.onload = function() {

    $(document).ready(function(){





    });






    $("#changePwdBtn").click(function() {


        var cpassword =  $('#cpassword').val();
        var npassword =  $('#npassword').val();
        var cnpassword =  $('#cnpassword').val();

        if(cpassword &&  npassword && cnpassword){


            if(npassword==cnpassword){

                $.fn.openLoader();
                var url = baseUrl+"/changepassword"
                var settings = $.fn.commonajaxCall(url,{ "userid": sessionStorage.getItem("user_id"),"password":password});
                $.ajax(settings).done(function (resp) {

                    console.log(resp);
                    var response = jQuery.parseJSON(resp)
                    $.fn.closeLoader();
                    alert(response.statusDesc)


                });

            }else{

                alert("New password and confirm password is wrong")
            }





        }else{

            alert("Please enter details")
        }


    });




};