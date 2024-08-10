var baseUrl ="http://localhost:8763";
$(document).ready(function(){




    $.fn.openLoader =function (){

        $("#loading").css("display", "block");

    }
    $.fn.closeLoader =function (){

        $("#loading").css("display", "none");

    }
});