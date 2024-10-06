window.onload = function() {

    $(document).ready(function(){



        var usersList = $("#usersList");
        var ptList = $("#ptList");

        $.each(profile, function( index, value ) {

            usersList.append(
                $("<option></option>").val(value.id).html(value.name +" ( "+ value.phone+" ) ")
            );
        })
        $.each(ptuser, function( index, value ) {

            ptList.append(
                $("<option></option>").val(value.id).html(value.name +" ( "+ value.phone+" ) ")
            );
        })




    });



    $("#linkPt").click(function() {


        var user =  $('#usersList').val();
        var ptList =  $('#ptList').val();
       var now = new Date();

        if(ptList!=0 && user!=0 ) {

            var url = baseUrl+"/mapPT"

            var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"userid":sessionStorage.getItem("user_id") ,"customer":user,"pt":ptList});
            $.ajax(settings).done(function (response) {
                console.log(response);
                $.fn.closeLoader();
                 response = jQuery.parseJSON(response)
                $('#usersList').val(0);
                $('#ptList').val(0);
                alert(response.statusDesc);

            });


        }else {
            alert("Please enter all details");
        }

    });




};