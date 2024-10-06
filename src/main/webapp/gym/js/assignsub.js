window.onload = function() {

    $(document).ready(function(){



        var usersList = $("#usersList");
        var subList = $("#subList");

        $.each(profile, function( index, value ) {

            usersList.append(
                $("<option></option>").val(value.id).html(value.name +" ( "+ value.phone+" ) ")
            );
        })
        $.each(subscriptionplans, function( index, value ) {

            subList.append(
                $("<option></option>").val(value.subId).html(value.subName )
            );
        })




    });



    $("#linkSub").click(function() {


        var user =  $('#usersList').val();
        var subList =  $('#subList').val();
       var now = new Date();

        if(subList!=0 && user!=0 ) {

            var url = baseUrl+"/mapSubscription"

            var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"userid":sessionStorage.getItem("user_id") ,"customer":user,"sub":subList});
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