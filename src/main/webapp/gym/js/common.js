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
    $.fn.closeLoader =function (){

        $("#loading").css("display", "none");

    }
});