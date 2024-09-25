window.onload = function() {

    $(document).ready(function(){



        var usersList = $("#usersList");

        $.each(profile, function( index, value ) {

            usersList.append(
                $("<option></option>").val(value.id).html(value.name +" ( "+ value.phone+" ) ")
            );
        })

        $.fn.loadUserData();


    });


    $.fn.loadUserData = function(){





    }

    $("#markAttendance").click(function() {


        var user =  $('#usersList').val();
        var attDate =  $('#attDate').val();
       var now = new Date();
        //var now = moment(new Date()).format("DD/MM/YYYY");
        var myDate = new Date(attDate);


        if(attDate && user!=0 ) {

            if (myDate > now) {
                // selected date is in the past
                alert("Selected future date ")
            }else {

                var year = new Date().getFullYear();
                var url = baseUrl + "/markAttendance"

                var settings = $.fn.commonajaxCall(url, {
                    "gym_id": sessionStorage.getItem("gym_id"),
                    "user_id": user,
                    "year": year,
                    "fromhour": "09",
                    "tohour": "10",
                    "added": sessionStorage.getItem("user_id"),
                    "date": attDate
                });
                $.ajax(settings).done(function (response) {
                    console.log(response);
                    $.fn.closeLoader();
                    response = jQuery.parseJSON(response)

                    alert(response.statusDesc);
                });
            }


        }else {
            alert("Please enter all details");
        }

    });




};