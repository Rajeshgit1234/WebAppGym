var baseUrl ="http://localhost:8763";
var weburl ="http://localhost:8080/WebAppGym/";


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

    $.fn.openLoader =function (){

        // $("#loading").css("display", "block");

        $("#loading").modal('show');


    }
    $.fn.getMaxDate =function (){

        // $("#loading").css("display", "block");

        var dtToday = new Date();

        var month = dtToday.getMonth() + 1;
        var day = dtToday.getDate();
        var year = dtToday.getFullYear();

        if(month < 10)
            month = '0' + month.toString();
        if(day < 10)
            day = '0' + day.toString();

        var maxDate = year + '-' + month + '-' + day;
       return maxDate;


    }
    $.fn.closeLoader =function (){

        $("#loading").css("display", "none");
        $("#loading").modal('hide');
        $('body').removeClass('modal-open');
        $('.modal-backdrop').remove();

    }


    $("#homeBtn").click(function () {

        $('#user_id').val(sessionStorage.getItem("user_id"));
        $('#gym_id').val(sessionStorage.getItem("gym_id"));
        $('#loginformSideMenu').attr('action', "/WebAppGym/home").submit();

    }); $("#settingsMenu").click(function () {

        $("#settingSub").css("display", "block");


    });$("#enqMenu").click(function () {

        $("#enqMenuSub").css("display", "block");


    });;$("#attendanceMenu").click(function () {

        $("#attendanceSub").css("display", "block");


    });;

    $("#paginationNext").click(function () {

        $.fn.loadNextSet();


    });$("#paginationPrev").click(function () {

        $.fn.loadPrevSet();


    });

});