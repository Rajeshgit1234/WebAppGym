window.onload = function() {

    $(document).ready(function(){



        var editKey = -1;


        var profileType = $("#profileType");
        var editProfileType = $("#editProfileType");
        var filterProfileType = $("#filterProfileType");
        var subscriptionPlan = $("#subscriptionPlan");
        var editSubscriptionPlan = $("#editSubscriptionPlan");


        $.each(profileMasterList, function( index, value ) {

            if(value.name.toUpperCase()!="ADMIN" && value.name.toUpperCase()!="OWNER") {
                if (value.name.toUpperCase() == "CUSTOMER") {

                    profile = value.id;
                    profileOwner = value.id;
                }

                profileType.append(
                    $("<option></option>").val(value.id).html(value.name)
                );editProfileType.append(
                    $("<option></option>").val(value.id).html(value.name)
                );
                filterProfileType.append(
                    $("<option></option>").val(value.id).html(value.name)
                );

            }
        })
        $.each(subscriptionplans, function( index, value ) {


            subscriptionPlan.append(
                    $("<option></option>").val(value.subId).html(value.subName)
                );
            editSubscriptionPlan.append(
                    $("<option></option>").val(value.subId).html(value.subName)
                );


        })


        $.fn.loadUserData();

    });


    $.fn.loadUserData = function(){

        var url = baseUrl+"/loadGymMembers"

        var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"offset":offset ,"profile":profile,"phone":filterPhone});
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

        userProfile = [];
        if(userJson.status){

            if(userJson.profile.length!=0){
                userProfile = userJson.profile;
                $("#userTableDv").css("display", "block");
                $.each( userJson.profile, function( key, value ) {
                    //2024-08-15 11:10:14.456078
                    var created_date = moment(value.addedOn).format('YYYY-MM-DD');


                     $('#usertable').append('<tr class="pyClass"> <td><i className="bx bx-user"></i><span className="fw-medium"> <a id="editUserAction"  onclick="editAction('+key+')" style="text-decoration: underline;color: blue;cursor: grabbing;">'+ value.name + '</a></span></td><td>' + value.phone + '</td><td>' + value.subscription + '</td><td>' + value.dietname + '</td><td>' + value.address + '</td><td>' + created_date + ' </td><td><div class="dropdown"><button type="button" class="btn p-0 dropdown-toggle hide-arrow"   onclick="callEditAction('+key+')"><i class="bx bx-dots-vertical-rounded"></i></button><div  id="editAction_'+key+'" class="dropdown-menu"><a class="dropdown-item" href="javascript:void(0);" onclick="delPay('+value.id+')"><i class="bx bx-trash me-1"></i> Delete</a> </div></div></td></tr>')

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
        var userEditPhone =  $('#userEditPhone').val();

        if(filterProfileType!=0 || userEditPhone) {

            if(filterProfileType!=0){profile = filterProfileType};
            if(userEditPhone) {filterPhone = userEditPhone}else{filterPhone = ""}

            $("#userFilterModal").modal('hide');
            $('body').removeClass('modal-open');
            $('.modal-backdrop').remove();
            // $(".modal-backdrop").css("display", "none");


            $.fn.loadUserData();

        }else {
            alert("profile or phone number is mandatory");
        }

    });
    $("#clearfilterBtn").click(function() {




            profile = profileOwner;
            filterPhone = "";

            $("#userFilterModal").modal('hide');
            $('body').removeClass('modal-open');
            $('.modal-backdrop').remove();

            $.fn.loadUserData();



    });
    $("#addUserBtn").click(function() {


        var name =  $('#name').val();
        var profileType =  $('#profileType').val();
       // var username =  $('#username').val();
        var address =  $('#address').val();
        var phone =  $('#phone').val();
        var email =  $('#email').val();
        var subscriptionPlan =  $('#subscriptionPlan').val();
        var dietPlan = 0;

        if($("#dietPlan").prop('checked') == true){
            //do something
             dietPlan = 1;
        }

        var username ="";

        if(name && profileType!=0  && address && phone && email) {


            var url = baseUrl+"/addNewGymUser"

            var settings = $.fn.commonajaxCall(url,{"gym_id":sessionStorage.getItem("gym_id"),"name":name,"username":username,"dietPlan":dietPlan,"password":"","address":address,"profile_id":profileType,"phone":phone,"email":email,"subscription":subscriptionPlan,"user":sessionStorage.getItem("user_id")});
            $.ajax(settings).done(function (response) {
                console.log(response);
                response = jQuery.parseJSON(response)
                if(response.status) {
                    $("#alertDiv").html(response.statusDesc)
                    $("#alertDiv").addClass('alert alert-success');
                    $("#alertDiv").css("display", "block");
                    setTimeout(
                        function () {
                            $("#alertDiv").css("display", "none");
                            $("#userAddModal").modal('hide');
                            $('body').removeClass('modal-open');
                            $('.modal-backdrop').remove();
                        }, 2000);

                    $.fn.loadUserData();
                }else{

                    $("#alertDiv").html(response.statusDesc)
                    $("#alertDiv").addClass('alert alert-success');
                    $("#alertDiv").css("display", "block");
                    setTimeout(
                        function () {
                            $("#alertDiv").css("display", "none");

                        }, 2000);
                }
            });



        }else {
            alert("Please enter all details");
        }

    });

    $.fn.editUserDetails =function (id){

        custId = id;
        $('#userEditModal').modal('show');
        $("#paymentsTab").css("display", "none");
        $("#attTab").css("display", "none");
        $("#profileTab").css("display", "block");


        $('#editName').val(userProfile[id].name);
        $('#editId').val(userProfile[id].id);
        $('#editProfileType').val(userProfile[id].profile);
        $('#editAddress').val(userProfile[id].address);
        $('#editPhone').val(userProfile[id].phone);
        $('#editEmail').val(userProfile[id].email);
        $('#editSubscriptionPlan').val(userProfile[id].subscriptionId);
        if(userProfile[id].dietplan>0){

            $("#editDietPlan").prop('checked', true);


        }


    };



    $("#payTab").click(function() {


        $("#paymentsTabLoader").css("display", "block");
        $(".pyClassPay").empty();
        var url = baseUrl+"/loadCustomerPaymentsFilter"
        var settings = {
            "url": url,
            "method": "POST",
            "timeout": 0,
            "headers": {
                "Access-Control-Allow-Origin":"*",
                "Content-Type": "application/json"

            },
            "data": JSON.stringify({ "gym_id": sessionStorage.getItem("gym_id"),"offset":"0" ,"year":new Date().getFullYear() ,"month":"1","customer":userProfile[custId].id})
        };

        $.ajax(settings).done(function (response) {
            console.log(response);

            var  responseJson = jQuery.parseJSON(response)
            $("#paymentsTabLoader").css("display", "none");
            $("#noDataLabel").css("display", "none");
            $("#payTable").css("display", "none");

            if(responseJson.status){

               $("#payTableDv").css("display", "block");
               $.each( responseJson.payList, function( key, value ) {
                   //var created_date = $.format.date(value.created_on, "dd/MM/yyyy hh:mm")
                   var created_date = moment(value.createdon).format('DD-MM-YYYY');
                   var monthPay = "";
                   switch (value.paymonth) {

                       case 1:
                           monthPay = "January " + (value.payyear);
                           break;
                       case 2:
                           monthPay = "February " + (value.payyear);
                           break;
                       case 3:
                           monthPay = "March " + (value.payyear);
                           break;
                       case 4:
                           monthPay = "April " + (value.payyear);
                           break;
                       case 5:
                           monthPay = "May " + (value.payyear);
                           break;
                       case 6:
                           monthPay = "June " + (value.payyear);
                           break;
                       case 7:
                           monthPay = "July " + (value.payyear);
                           break;
                       case 8:
                           monthPay = "August " + (value.payyear);
                           break;
                       case 9:
                           monthPay = "September " + (value.payyear);
                           break;
                       case 10:
                           monthPay = "October " + (value.payyear);
                           break;
                       case 11:
                           monthPay = "November " + (value.payyear);
                           break;
                       case 12:
                           monthPay = "December " + (value.payyear);
                           break;

                   }

                   // $('#payTable').append('<tr class="pyClass"> <td><span class="badge bg-label-primary me-1">' + value.name + '</span></td><td>' + value.amount + '</td><td>' + monthPay + '</td><td>' + value.subscription + '</td><td>' + value.description + '</td><td>' + created_date + '</td><td><div class="dropdown"><button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown"><i class="bx bx-dots-vertical-rounded"></i></button><div class="dropdown-menu"><a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-edit-alt me-1"></i> Edit</a><a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-trash me-1"></i> Delete</a> </div></div></td></tr>')
                   //$('#payTable').append('<tr class="pyClass"> <td><i className="bx bx-user"></i><span className="fw-medium"> '+ value.name + '</span></td><td>' + value.amount + '</td><td>' + monthPay + '</td><td>' + value.subscription + '</td><td>' + value.description + '</td><td>' + created_date + '</td><td><div class="dropdown"><button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown"><i class="bx bx-dots-vertical-rounded"></i></button><div class="dropdown-menu"><a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-edit-alt me-1"></i> Edit</a><a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-trash me-1"></i> Delete</a> </div></div></td></tr>')
                   //$('#payTable').append('<tr class="pyClass"> <td><i className="bx bx-user"></i><span className="fw-medium"> '+ value.name + '</span></td><td>' + value.amount + '</td><td>' + monthPay + '</td><td>' + value.subscription + '</td><td>' + value.description + '</td><td>' + created_date + '</td><td><div class="dropdown"><button type="button" class="btn p-0 dropdown-toggle hide-arrow"   onclick="callEditAction('+key+')"><i class="bx bx-dots-vertical-rounded"></i></button><div  id="editAction_'+key+'" class="dropdown-menu"><a class="dropdown-item" href="javascript:void(0);" onclick="editPay('+key+')"><i class="bx bx-edit-alt me-1"></i> Edit</a><a class="dropdown-item" href="javascript:void(0);" onclick="delPay('+value.exp_id+')"><i class="bx bx-trash me-1"></i> Delete</a> </div></div></td></tr>')
                   $('#payTable').append('<tr class="pyClassPay"> <td><i className="bx bx-user"></i><span className="fw-medium"> '+ value.name + '</span></td><td>' + value.amount + '</td><td>' + value.strDate + '</td><td>' + value.toDate + '</td><td>' + value.description + '</td><td>' + created_date + '</td></tr>')
                   $("#payTable").css("display", "block");

               });
           }else{
               $("#payTableDv").css("display", "none");
                $("#noDataLabel").css("display", "block");

           }



        });


    });$("#atTab").click(function() {


        $("#attTabLoader").css("display", "block");


    });

    $("#editUserBtn").click(function() {


        var name =  $('#editName').val();
        var profileType =  $('#editProfileType').val();
        var customer_id =  $('#editId').val();
       // var username =  $('#username').val();
        var address =  $('#editAddress').val();
        var phone =  $('#editPhone').val();
        var email =  $('#editEmail').val();
        var subscriptionPlan =  $('#editSubscriptionPlan').val();
        var dietPlan = 0;

        if($("#editDietPlan").prop('checked') == true){
            //do something
             dietPlan = 1;
        }

        var username ="";

        if(name && profileType!=0  && address && phone && email) {


            var url = baseUrl+"/editGymUser"

            var settings = $.fn.commonajaxCall(url,{"name":name,"dietPlan":dietPlan,"address":address,"profile_id":profileType,"email":email,"subscription":subscriptionPlan,"customer_id":customer_id,"user":sessionStorage.getItem("user_id")});
            $.ajax(settings).done(function (response) {
                console.log(response);
                response = jQuery.parseJSON(response)
                if(response.status) {
                    $("#alertDiv").html(response.statusDesc)
                    $("#alertDiv").addClass('alert alert-success');
                    $("#alertDiv").css("display", "block");
                    setTimeout(
                        function () {
                            $("#alertDiv").css("display", "none");
                            $("#userEditModal").modal('hide');
                            $('body').removeClass('modal-open');
                            $('.modal-backdrop').remove();
                        }, 2000);

                    $.fn.loadUserData();
                }else{

                    $("#alertDiv").html(response.statusDesc)
                    $("#alertDiv").addClass('alert alert-success');
                    $("#alertDiv").css("display", "block");
                    setTimeout(
                        function () {
                            $("#alertDiv").css("display", "none");

                        }, 2000);
                }
            });



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


    $.fn.loadActionDiv =function (id){

        //$('#userEditModal').modal('show');

        editKey = -1;
         var div = "editAction_"+id;

         if(!$("#editAction_"+id).is(':visible'))
         {


             $(".dropdown-menu").css("display", "none");
             $("#editAction_"+id).css("display", "block");
         }else{
             $("#editAction_"+id).css("display", "none");
         }



    };




    $.fn.loadNextSet =function (){


        $.fn.openLoader();


        var url = baseUrl+"/loadGymMembers"

        var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"offset":(offset+10) ,"profile":profile,"phone":filterPhone});
        $.ajax(settings).done(function (response) {
            console.log(response);
            $.fn.closeLoader();
            response = jQuery.parseJSON(response)
            if(response.status && response.profile.length>0) {
                $.fn.renderPayData(response);
                offset = offset+10;
            }

        });


    };
    $.fn.loadPrevSet =function (){

        if(offset!=0){

            $.fn.openLoader();


            var url = baseUrl+"/loadGymMembers"

            var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"offset":(offset-10) ,"profile":profile,"phone":filterPhone});
            $.ajax(settings).done(function (response) {
                console.log(response);
                $.fn.closeLoader();
                response = jQuery.parseJSON(response)
                if(response.status && response.profile.length>0) {
                    $.fn.renderPayData(response);
                    offset = offset-10;
                }

            });

        }

    };


};