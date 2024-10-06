window.onload = function() {

    $(document).ready(function(){





    });






    $("#addQueryBtn").click(function() {


        var phone =  $('#phone').val();
        var query =  $('#query').val();

        if(phone &&  query){




                $.fn.openLoader();
                var url = baseUrl+"/addGymEnq"
                var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"added": sessionStorage.getItem("user_id"),"phone":phone,"query":query});
                $.ajax(settings).done(function (resp) {

                    console.log(resp);
                    var response = jQuery.parseJSON(resp)
                    $.fn.closeLoader();
                    alert(response.statusDesc)
                    if(response.status){

                        $('#phone').val("");
                        $('#query').val("");
                    }


                });



        }else{

            alert("Please enter details")
        }


    });




};