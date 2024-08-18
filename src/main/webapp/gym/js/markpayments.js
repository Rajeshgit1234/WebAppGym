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


        $.fn.loadPayData();



    });


    $.fn.loadPayData = function(){

        var url = baseUrl+"/loadCustomerPayments"

        var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"offset":"0" ,"customer":customer});
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
                    var created_date = moment(value.createdon).format('DD-MM-YYYY');
                    $('#payTable').append('<tr class="pyClass"> <td><span class="badge bg-label-primary me-1">'+value.name+'</span></td><td>'+value.amount+'</td><td>'+value.subscription+'</td><td>'+value.description+'</td><td>'+created_date+'</td><td><div class="dropdown"><button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown"><i class="bx bx-dots-vertical-rounded"></i></button><div class="dropdown-menu"><a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-edit-alt me-1"></i> Edit</a><a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-trash me-1"></i> Delete</a> </div></div></td></tr>')


                });
            }else{
                $("#payTableDv").css("display", "block");

            }

        }else{

        }
        /* $('#exptable').append('<tr><td>my data</td><td>more data</td></tr>');*/




    }


    $("#addPayBtn").click(function() {


        var payDate =  $('#payDate').val();
        var usersList =  $('#usersList').val();
        var payDesc =  $('#payDesc').val();
        var payAmount =  $('#payAmount').val();
        var fromMonth =  $('#fromMonth').val();
        var paySub =  $('#paySub').val();
        var toMonth =  $('#toMonth').val();
        if(payDate && usersList!=0 && paySub!=0 && payDesc && payAmount!=0 && fromMonth!=0 && toMonth!=0){



            $.fn.openLoader();
            var url = baseUrl+"/markCustomerPayments"
            var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"addedby": sessionStorage.getItem("user_id"),"customer":usersList,"amount":payAmount,"description":payDesc,"subscription":paySub,"fromMonth":fromMonth,"toMonth":toMonth});
            $.ajax(settings).done(function (resp) {

                console.log(resp);
                var response = jQuery.parseJSON(resp)
                $.fn.closeLoader();
                $("#payModel").modal('hide');
                $('body').removeClass('modal-open');
                $('.modal-backdrop').remove();

                if(response.status){

    alert(response.statusDesc)
                    // $.fn.showAlertSuccess(response.statusDesc);
                    /*$("#alertDiv").html(response.statusDesc)
                    $("#alertDiv").addClass('alert alert-success');
                    $("#alertDiv").css("display", "block");
                    setTimeout(
                        function()
                        {
                            $("#alertDiv").css("display", "none");
                        }, 5000);*/

                }else{
                    alert(response.statusDesc)
                    // $.fn.showAlertFail(response.statusDesc);
                   /* $("#alertDiv").html(response.statusDesc)
                    $("#alertDiv").addClass('alert alert-danger');

                    $("#alertDiv").css("display", "block");
                    setTimeout(
                        function()
                        {
                            $("#alertDiv").css("display", "none");
                        }, 5000);*/

                }


                $.fn.loadPayData();
            });



        }else{

            alert("Please enter details")
        }
    });



};