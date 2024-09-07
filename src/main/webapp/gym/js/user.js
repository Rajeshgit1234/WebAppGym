window.onload = function() {

    $(document).ready(function(){

        /*var url = baseUrl+"/loadExpenses"

        var resp =  $.fn.ajaxCall(url,{ "gym_id": "1" });
        if(resp){

            $.fn.loadExpenseData(resp);
        }*/

        var editKey = -1;


        var profileType = $("#profileType");
        var filterProfileType = $("#filterProfileType");


        $.each(profileMasterList, function( index, value ) {

            if(value.name.toUpperCase()!="ADMIN") {
                if (value.name.toUpperCase() == "CUSTOMER") {

                    profile = value.id;
                }

                profileType.append(
                    $("<option></option>").val(value.id).html(value.name)
                );
                filterProfileType.append(
                    $("<option></option>").val(value.id).html(value.name)
                );

            }
        })

        $.fn.loadUserData();

    });


    $.fn.loadUserData = function(){

        var url = baseUrl+"/loadGymMembers"

        var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"offset":offset ,"profile":profile});
        $.ajax(settings).done(function (response) {
            console.log(response);
            $.fn.closeLoader();

            $.fn.renderPayData(jQuery.parseJSON(response));
        });



    }

    $.fn.renderPayData = function(userJson){

        // var expJson = JSON.parse(data)
        // $('#exptable').remove();
        // $('#exptable').append('<thead><tr><th>Expense</th><th>Amount</th><th>Added by</th><th>Added On</th><th>Actions</th></tr></thead>')
        //  $('#exptable').append('<tbody class="table-border-bottom-0"></tbody>')
        $(".pyClass").empty();


        if(userJson.status){

            if(userJson.profile.length!=0){

                $("#userTableDv").css("display", "block");
                $.each( userJson.profile, function( key, value ) {
                    //var created_date = $.format.date(value.created_on, "dd/MM/yyyy hh:mm")
                    var created_date = moment(value.addedOn).format('DD-MM-YYYY');


                     $('#usertable').append('<tr class="pyClass"> <td><i className="bx bx-user"></i><span className="fw-medium"> '+ value.name + '</span></td><td>' + value.username + '</td><td>' + value.phone + '</td><td>' + value.addedby + ' </td><td>' + value.created_date + '</td><td><div class="dropdown"><button type="button" class="btn p-0 dropdown-toggle hide-arrow"   onclick="callEditAction('+key+')"><i class="bx bx-dots-vertical-rounded"></i></button><div  id="editAction_'+key+'" class="dropdown-menu"><a class="dropdown-item" href="javascript:void(0);" onclick="delPay('+value.id+')"><i class="bx bx-trash me-1"></i> Delete</a> </div></div></td></tr>')

                });
            } else {
                $("#userTableDv").css("display", "block");

            }

        } else {

        }
        /* $('#exptable').append('<tr><td>my data</td><td>more data</td></tr>');*/




    }

    $("#filterBtn").click(function() {


        var filterProfileType =  $('#filterProfileType').val();

        if(filterProfileType!=0) {

            profile = filterProfileType;

            $("#userFilterModal").modal('hide');
            $('body').removeClass('modal-open');
            $('.modal-backdrop').remove();
            // $(".modal-backdrop").css("display", "none");


            $.fn.loadUserData();

        }else {
            alert("profile is mandatory");
        }

    });
    $("#addUserBtn").click(function() {


        var name =  $('#name').val();
        var profileType =  $('#profileType').val();
        var username =  $('#username').val();
        var address =  $('#address').val();
        var phone =  $('#phone').val();
        var email =  $('#email').val();

        if(name && profileType!=0 && username && address && phone && email) {




            $("#alertDiv").html("added successfully")
            $("#alertDiv").addClass('alert alert-success');
            $("#alertDiv").css("display", "block");
            setTimeout(
                function()
                {
                    $("#alertDiv").css("display", "none");
                    $("#userAddModal").modal('hide');
                    $('body').removeClass('modal-open');
                    $('.modal-backdrop').remove();
                }, 2000);



            // $(".modal-backdrop").css("display", "none");


            $.fn.loadUserData();

        }else {
            alert("Please enter all details");
        }

    });

    $("#usernameavailability").click(function() {



        var username =  $('#username').val();


        if(username ) {



            var url = baseUrl+"/usernameAvailabilityCheck"

            var settings = $.fn.commonajaxCall(url,{ "username": username});
            $.ajax(settings).done(function (response) {
                console.log(response);
               if(response.status){

                   alert(" avail");
               }else{
                   alert("Not avail");
               }
            });



        }else {
            alert("Please enter username");
        }

    });

};