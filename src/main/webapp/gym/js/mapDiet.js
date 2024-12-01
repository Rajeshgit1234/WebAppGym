window.onload = function() {

    $(document).ready(function(){



        var usersList = $("#usersList");
        var dietList = $("#dietList");

        $.each(profile, function( index, value ) {

            usersList.append(
                $("<option></option>").val(value.id).html(value.name +" ( "+ value.phone+" ) ")
            );
        })
        $.each(dietPlans, function( index, value ) {

            dietList.append(
                $("<option></option>").val(value.diet_id).html(value.dietname )
            );
        })




    });



    $("#linkSub").click(function() {


        var user =  $('#usersList').val();
        var dietList =  $('#dietList').val();
       var now = new Date();

        if(dietList!=0 && user!=0 ) {

            var url = baseUrl+"/mapDietPlan"

            var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"userid":sessionStorage.getItem("user_id") ,"customer":user,"diet":dietList});
            $.ajax(settings).done(function (response) {
                console.log(response);
                $.fn.closeLoader();
                 response = jQuery.parseJSON(response)
                $('#usersList').val(0);
                $('#subList').val(0);
                alert(response.statusDesc);

            });


        }else {
            alert("Please enter all details");
        }

    });




};