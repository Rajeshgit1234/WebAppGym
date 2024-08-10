 window.onload = function() {

     $(document).ready(function(){

         /*var url = baseUrl+"/loadExpenses"

         var resp =  $.fn.ajaxCall(url,{ "gym_id": "1" });
         if(resp){

             $.fn.loadExpenseData(resp);
         }*/

         document.getElementById("expDate").valueAsDate = new Date();

         var expenseType = $("#expenseType");

         $.each(expenseMasterList, function( index, value ) {

             expenseType.append(
                 $("<option></option>").val(value.expId).html(value.expItem)
             );
         })

         var url = baseUrl+"/loadExpenses"

         $.fn.commonajaxCall(url,{ "gym_id": "1" });


     });
     $.fn.commonajaxCall = function(url,data){


         $.fn.openLoader();
         var returnResp = $.ajax({
             url: url,
             type: 'POST',
             headers: {
                 "Access-Control-Allow-Origin":"*",
                 "Content-Type": "application/json"
             },
             dataType: "JSON",
             crossDomain: true,
             data: JSON.stringify(data),
             success: function (result) {
                 $.fn.closeLoader();
                 $.fn.loadExpenseData(result);
             },
             error: function (xhr, status, error) {
                 $.fn.closeLoader();
                 return error;
             }
         });
         $.fn.closeLoader();


     }


     $( "#addExpensesBtn" ).on( "click", function() {

            var expDate =  $('#expDate').val();
            var expenseType =  $('#expenseType').val();
            var expAmount =  $('#expAmount').val();
            if(expDate && expenseType && expAmount){

                $("#loading").css("display", "block");
                $('#expid').val(expenseType);
                $('#expname').val(expenseType);
                $('#expDate').val(expDate);
                $('#expAmount').val(expAmount);

                $('#addExp').attr('action', "/WebAppGym/home").submit();
            }else{

                alert("Please enter details")
            }
        } );




     $.fn.loadExpenseData = function(expJson){

       // var expJson = JSON.parse(data)
         if(expJson.status){

             $.each( expJson.expenseList, function( key, value ) {

                 $('#exptable').append('<tr> <td><span class="badge bg-label-primary me-1">'+value.expense_item+'</span></td>')
                 $('#exptable').append('<td>'+value.exp_amount+'</td>')
                 $('#exptable').append(' <td>'+value.created_by+'</td>')
                 $('#exptable').append(' <td>'+value.created_on+'</td>')
                 $('#exptable').append('<td><div class="dropdown"><button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown"><i class="bx bx-dots-vertical-rounded"></i></button><div class="dropdown-menu"><a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-edit-alt me-1"></i> Edit</a><a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-trash me-1"></i> Delete</a> </div></div></td>')
                 $('#exptable').append('</tr>')

             });
         }else{
             alert(expJson.statusDesc)
         }
        /* $('#exptable').append('<tr><td>my data</td><td>more data</td></tr>');*/




     }



};