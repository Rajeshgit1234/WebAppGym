window.onload = function() {
    var loginBtn = document.getElementById('loginBtn');
    loginBtn.onclick = function() {
        var gymusername =  $('#gymusername').val();
        var gympassword =  $('#gympassword').val();
        gymusername="test";
        gympassword="test";

        if(gympassword&& gymusername){

            $("#loading").css("display", "block");
            //$('#userid').val(gymusername);
            //$('#passcode').val(gympassword);

           // $('#loginform').attr('action', "/WebAppGym/home").submit();
            var url = baseUrl+"/login"

            var settings = $.fn.commonajaxCall(url,{ "username": gymusername,"password": gympassword,});
            $.ajax(settings).done(function (resp) {

                console.log(resp);
                var response = jQuery.parseJSON(resp)
                $.fn.closeLoader();
                if(response.status){

                    $('#user_id').val(response.user_id);
                    $('#gym_id').val(response.gym_id);
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





};