var baseUrl ="http://localhost:8763";


$(document).ready(function(){


    $.fn.commonajaxCall = function(url,data){


        $.fn.openLoader();
        var settings = {
            "url": url,
            "method": "POST",
            "timeout": 0,
            "headers": {
                "Access-Control-Allow-Origin":"*",
                "Content-Type": "application/json"

            },
            "data": JSON.stringify(data)
        };
    return settings;

    }

    $.fn.openLoader =function (){

        $("#loading").css("display", "block");

    }
    $.fn.showAlertSuccess =function (data){

        $("#alertDiv").html(data)
        $("#alertDiv").addClass('alert alert-success');
        $("#alertDiv").css("display", "block");
        setTimeout(
            function()
            {
                $("#alertDiv").css("display", "none");
            }, 5000);

    }
    $.fn.showAlertFail =function (data){

        $("#alertDiv").html(response.statusDesc)
        $("#alertDiv").addClass('alert alert-danger');

        $("#alertDiv").css("display", "block");
        setTimeout(
            function()
            {
                $("#alertDiv").css("display", "none");
            }, 5000);

    }

    $.fn.closeLoader =function (){

        $("#loading").css("display", "none");

    }


    $("#homeBtn").click(function () {

        $('#user_id').val(sessionStorage.getItem("user_id"));
        $('#gym_id').val(sessionStorage.getItem("gym_id"));
        $('#loginformSideMenu').attr('action', "/WebAppGym/home").submit();

    });

});