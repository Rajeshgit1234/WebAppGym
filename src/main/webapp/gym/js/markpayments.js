window.onload = function() {

    $(document).ready(function(){

        /*var url = baseUrl+"/loadExpenses"

        var resp =  $.fn.ajaxCall(url,{ "gym_id": "1" });
        if(resp){

            $.fn.loadExpenseData(resp);
        }*/



        document.getElementById("payDate").valueAsDate = new Date();

        var usersList = $("#usersList");

        $.each(profile, function( index, value ) {

            usersList.append(
                $("<option></option>").val(value.id).html(value.name +" - "+ value.phone)
            );
        })




    });



};