window.onload = function() {

    $(document).ready(function(){

        /*var url = baseUrl+"/loadExpenses"

        var resp =  $.fn.ajaxCall(url,{ "gym_id": "1" });
        if(resp){

            $.fn.loadExpenseData(resp);
        }*/
        $("#finalAmtDiv").css("display", "none");

        $('#discountAdded').change(function() {

            if($("#discountAdded").prop('checked') == true){
                //do something
                discountAdded =1;
                $("#finalAmtDiv").css("display", "block");

            }else{
                discountAdded =0;
                $("#finalAmtDiv").css("display", "none");

            }


        }); $('#discountEditAdded').change(function() {

            if($("#discountEditAdded").prop('checked') == true){
                //do something
                discountEditAdded =1;
                $("#finalEditAmtDiv").css("display", "block");

            }else{
                discountEditAdded =0;
                $("#finalEditAmtDiv").css("display", "none");

            }


        });

        document.getElementById("payDate").valueAsDate = new Date();

        var usersList = $("#usersList");
        var usersEditList = $("#usersEditList");
        var paySub = $("#paySub");
        var payEditSub = $("#payEditSub");
        var usersListFilter = $("#usersListFilter");


        var dtToday = new Date();
        filteryear= dtToday.getFullYear();
        $('#filterYear').val(filteryear);
        $('#fromYear').val(filteryear);
        $('#toYear').val(filteryear);


        $('#payDate').attr('max', $.fn.getMaxDate());

        subAmountList[0] = 0;
        subList[0] = 0;
        custList[0] = 0;

        $.each(profile, function( index, value ) {

            usersList.append(
                $("<option></option>").val(value.id).html(value.name +" ( "+ value.phone+" ) ")
            );usersListFilter.append(
                $("<option></option>").val(value.id).html(value.name +" ( "+ value.phone+" ) ")
            );usersEditList.append(
                $("<option></option>").val(value.id).html(value.name +" ( "+ value.phone+" ) ")
            );
            custList[value.id] = value;

        })


        $.each(subscriptionplans, function( index, value ) {

            paySub.append(
                $("<option></option>").val(value.subId).html(value.subName )
            ); payEditSub.append(
                $("<option></option>").val(value.subId).html(value.subName )
            );

            subAmountList[value.subId] = value.subAmount;
            subList[value.subId] = value;
        })


        $.fn.loadPayData();



    });


    $('#usersList').on('change', function() {
        var userid = $(this).val();
        var subId = custList[userid];
        $("#paySub").val(subId.subscription);
        var amnt = subAmountList[subId.subscription];
        if(( amnt))
            $('#payAmount').val(amnt);
    });

    $.fn.loadPayData = function(){

        var url = baseUrl+"/loadCustomerPaymentsFilter"

        var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"offset":"0" ,"year":filteryear,"month":filterMonth,"customer":customer});
        $.ajax(settings).done(function (response) {
            console.log(response);
            $.fn.closeLoader();

            $.fn.renderPayData(jQuery.parseJSON(response));
        });



    }
 $.fn.renderPayData = function(expJson){

        // var expJson = JSON.parse(data)
        // $('#exptable').remove();
        // $('#exptable').append('<thead><tr><th>Expense</th><th>Amount</th><th>Added by</th><th>Added On</th><th>Actions</th></tr></thead>')
        //  $('#exptable').append('<tbody class="table-border-bottom-0"></tbody>')
        $(".pyClass").empty();


        if(expJson.status){

            if(expJson.payList.length!=0){

                $("#payTableDv").css("display", "block");
                $.each( expJson.payList, function( key, value ) {
                    //var created_date = $.format.date(value.created_on, "dd/MM/yyyy hh:mm")
                    var created_date = moment(value.createdon).format('MMMM Do YYYY');
                    var startDate = moment(value.strDate).format('MMMM Do YYYY');
                    var endDate = moment(value.toDate).format('MMMM Do YYYY');

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

                    var discount =" Not Added";
                    if(value.discountadded){
                        discount =" Added";
                    }
                   // $('#payTable').append('<tr class="pyClass"> <td><span class="badge bg-label-primary me-1">' + value.name + '</span></td><td>' + value.amount + '</td><td>' + monthPay + '</td><td>' + value.subscription + '</td><td>' + value.description + '</td><td>' + created_date + '</td><td><div class="dropdown"><button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown"><i class="bx bx-dots-vertical-rounded"></i></button><div class="dropdown-menu"><a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-edit-alt me-1"></i> Edit</a><a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-trash me-1"></i> Delete</a> </div></div></td></tr>')
                    //$('#payTable').append('<tr class="pyClass"> <td><i className="bx bx-user"></i><span className="fw-medium"> '+ value.name + '</span></td><td>' + value.amount + '</td><td>' + monthPay + '</td><td>' + value.subscription + '</td><td>' + value.description + '</td><td>' + created_date + '</td><td><div class="dropdown"><button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown"><i class="bx bx-dots-vertical-rounded"></i></button><div class="dropdown-menu"><a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-edit-alt me-1"></i> Edit</a><a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-trash me-1"></i> Delete</a> </div></div></td></tr>')
                    //$('#payTable').append('<tr class="pyClass"> <td><i className="bx bx-user"></i><span className="fw-medium"> '+ value.name + '</span></td><td>' + value.amount + '</td><td>' + monthPay + '</td><td>' + value.subscription + '</td><td>' + value.description + '</td><td>' + created_date + '</td><td><div class="dropdown"><button type="button" class="btn p-0 dropdown-toggle hide-arrow"   onclick="callEditAction('+key+')"><i class="bx bx-dots-vertical-rounded"></i></button><div  id="editAction_'+key+'" class="dropdown-menu"><a class="dropdown-item" href="javascript:void(0);" onclick="editPay('+key+')"><i class="bx bx-edit-alt me-1"></i> Edit</a><a class="dropdown-item" href="javascript:void(0);" onclick="delPay('+value.exp_id+')"><i class="bx bx-trash me-1"></i> Delete</a> </div></div></td></tr>')
                   if(value.expired  && value.expired =="Active"){
                       $('#payTable').append('<tr class="pyClass"> <td><i className="bx bx-user"></i><span className="fw-medium"> <a id="editUserAction"  onclick="callShowPaymentDetails('+value.id+')" style="text-decoration: underline;color: blue;cursor: grabbing;">'+ value.name + '</a></span></td><td>' + value.finalamount + '</td><td>' + startDate + '</td><td>' + endDate + '</td><td>' + value.subscription + '</td><td>' + value.description + '</td><td>' + created_date + '</td><td><span class="badge bg-label-success me-1">' + value.expired + '</span></td><td><div class="dropdown"><button type="button" class="btn p-0 dropdown-toggle hide-arrow"   onclick="callEditAction('+key+')"><i class="bx bx-dots-vertical-rounded"></i></button><div  id="editAction_'+key+'" class="dropdown-menu"><a class="dropdown-item" href="javascript:void(0);" onclick="delPay('+value.id+')"><i class="bx bx-trash me-1"></i> Delete</a> </div></div></td></tr>')

                   }else{
                       $('#payTable').append('<tr class="pyClass"> <td><i className="bx bx-user"></i><span className="fw-medium"> <a id="editUserAction"  onclick="callShowPaymentDetails('+value.id+')" style="text-decoration: underline;color: blue;cursor: grabbing;">'+ value.name + '</a></span></td><td>' + value.finalamount + '</td><td>' + startDate + '</td><td>' + endDate + '</td><td>' + value.subscription + '</td><td>' + value.description + '</td><td>' + created_date + '</td><td><span class="badge bg-label-danger me-1">' + value.expired + '</span></td><td><div class="dropdown"><button type="button" class="btn p-0 dropdown-toggle hide-arrow"   onclick="callEditAction('+key+')"><i class="bx bx-dots-vertical-rounded"></i></button><div  id="editAction_'+key+'" class="dropdown-menu"><a class="dropdown-item" href="javascript:void(0);" onclick="delPay('+value.id+')"><i class="bx bx-trash me-1"></i> Delete</a> </div></div></td></tr>')
                   }


                });
            } else {
                $("#payTableDv").css("display", "none");

            }

        } else {

        }
     /* $('#exptable').append('<tr><td>my data</td><td>more data</td></tr>');*/




    }

    $("#paySub").change(function() {
        var subId = ( $('option:selected', this).val() );
        var amnt = subAmountList[subId];
        if(( amnt))
            $('#payAmount').val(amnt);
    });
    $("#payEditSub").change(function() {
        var subId = ( $('option:selected', this).val() );
        var amnt = subAmountList[subId];
        if(( amnt))
            $('#payEditAmount').val(amnt);
    });

    $("#addPayBtn").click(function() {


        var payDate =  $('#payDate').val();
        var usersList =  $('#usersList').val();
        var payDesc =  $('#payDesc').val();
        var payAmount =  $('#payAmount').val();
        var finalamount =  $('#finalamount').val();
        if(discountAdded==0)finalamount =payAmount;
        var paySub =  $('#paySub').val();
        var duration =  subList[paySub].duration;

        if(discountAdded==1){

            if(finalamount){

            }else {

                alert("Please enter final amount after discount");
                return false;
            }
        }
        if(payDate && usersList!=0 && paySub!=0 && payDesc && payAmount!=0 ){

            $.fn.openLoader();
            var url = baseUrl+"/markCustomerPaymentsV2"
            var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"addedby": sessionStorage.getItem("user_id"),"customer":usersList,"amount":payAmount,"description":payDesc,"subscription":paySub,"fromdate":payDate,"duration":duration,"finalamount":finalamount});
            $.ajax(settings).done(function (resp) {

                console.log(resp);
                var response = jQuery.parseJSON(resp)
                $.fn.closeLoader();
                $("#payModel").modal('hide');
                $('body').removeClass('modal-open');
                $('.modal-backdrop').remove();

                if(response.status){

                    alert(response.statusDesc)


                }else{
                    alert(response.statusDesc)


                }


                $.fn.loadPayData();
            });
        }else{

            alert("Please enter details")
        }


            /* var fromMonth =  $('#fromMonth').val();
             var fromYear =  $('#fromYear').val();
             var toYear =  $('#toYear').val();
             var toMonth =  $('#toMonth').val();
             var status = false;
             if(payDate && usersList!=0 && paySub!=0 && payDesc && payAmount!=0 && fromMonth!=0 && toMonth!=0 && toYear!=0 && fromYear!=0){


                 if(fromYear==toYear){

                     if(fromMonth<toMonth || fromMonth==toMonth){

                         status = true;

                     }else{

                         status = false;
                         alert("Selected month is incorrect")
                     }
                 }else{

                     tatus = true;
                 }





             }else{

                 alert("Please enter details")
             }

             if(status){

                 $.fn.openLoader();
                 var url = baseUrl+"/markCustomerPayments"
                 var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"addedby": sessionStorage.getItem("user_id"),"customer":usersList,"amount":payAmount,"description":payDesc,"subscription":paySub,"fromMonth":fromMonth,"toMonth":toMonth,"fromYear":fromYear,"toYear":toYear});
                 $.ajax(settings).done(function (resp) {

                     console.log(resp);
                     var response = jQuery.parseJSON(resp)
                     $.fn.closeLoader();
                     $("#payModel").modal('hide');
                     $('body').removeClass('modal-open');
                     $('.modal-backdrop').remove();

                     if(response.status){

                         alert(response.statusDesc)


                     }else{
                         alert(response.statusDesc)


                     }


                     $.fn.loadPayData();
                 });

             }*/
    });
$("#editPayBtn").click(function() {


        var payDate =  $('#payEditDate').val();
        var usersList =  $('#usersEditList').val();
        var payDesc =  $('#payEditDesc').val();
        var payAmount =  $('#payEditAmount').val();
        var finalamount =  $('#finalEditamount').val();
        var payExpired =  $('#payExpired').val();
        if($("#discountEditAdded").prop('checked') == true){
            discountEditAdded =1;
        }
        if(discountEditAdded==0)finalamount =payAmount;
        var paySub =  $('#payEditSub').val();
        var duration =  subList[paySub].duration;
        var discount = false;
        if(discountEditAdded==1){

            if(finalamount){
                discount = true
            }else {

                alert("Please enter final amount after discount");
                return false;
            }
        }

        if(payExpired!="Active"){

            alert("This is already expired");
            return false;
        }
        if(payDate && usersList!=0 && paySub!=0 && payDesc && payAmount!=0 ){

            $.fn.openLoader();
            var url = baseUrl+"/editGymPayments"
            var settings = $.fn.commonajaxCall(url,{ "payment_id": paymentId,"amount":payAmount,"description":payDesc,"subscription":paySub,"fromdate":payDate,"duration":duration,"finalamount":finalamount,"discount":discount});
            $.ajax(settings).done(function (resp) {

                console.log(resp);
                var response = jQuery.parseJSON(resp)
                $.fn.closeLoader();
                $("#payModel").modal('hide');
                $('body').removeClass('modal-open');
                $('.modal-backdrop').remove();

                if(response.status){

                    alert(response.statusDesc)


                }else{
                    alert(response.statusDesc)


                }


                $.fn.loadPayData();
            });
        }else{

            alert("Please enter details")
        }


    });

    $("#filterBtn").click(function() {


        var usersListFilter =  $('#usersListFilter').val();
        var filYear =  $('#filterYear').val();
        var filMonth =  $('#filterMonth').val();

        if(filYear!=0 && filMonth!=0) {
            filteryear = filYear;
            filterMonth = filMonth;
            customer = usersListFilter;

            $("#payFilterPopup").modal('hide');
            $('body').removeClass('modal-open');
            $('.modal-backdrop').remove();
            // $(".modal-backdrop").css("display", "none");


            $.fn.loadPayData();

        }else {
            alert("year and month is mandatory");
        }

    });


    $.fn.loadActionDiv =function (id){

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

    $.fn.showPaymentDetails =function (id){


        try{

            var url = baseUrl+"/loadCustomerPaymentsByid"
            paymentId = id;
            var settings = $.fn.commonajaxCall(url,{ "payment_id": paymentId});
            $.ajax(settings).done(function (response) {
                console.log(response);
                $.fn.closeLoader();
                response=jQuery.parseJSON(response);
                $('#userEditModal').modal('show');
                if(response.status){
                    $('#payEditDate').val(response.payList.frompaydate);
                    $('#usersEditList').val(response.payList.customer);
                    $('#payEditSub').val(response.payList.subscription);
                    $('#payEditDesc').val(response.payList.description);
                    $('#payEditAmount').val(response.payList.amount);
                    $('#finalEditamount').val(response.payList.finalamount);
                    $('#payExpired').val(response.payList.expired);
                    if(response.payList.discountadded){

                        $("#discountEditAdded").prop('checked', true);


                    }

                }


            });

        }catch (e) {

        }

    };

    $.fn.delPayAction =function (id){

        if(confirm("Are you sure you want to delete ?")){

            var pay_id = id;

            var url = baseUrl+"/delPay"

            var settings = $.fn.commonajaxCall(url,{ "pay_id": pay_id,"userid": sessionStorage.getItem("user_id")});
            $.ajax(settings).done(function (response) {
                console.log(response);
                $.fn.loadPayData();
            });



        }else{

            $.fn.loadActionDiv(id);
        }


    };


};