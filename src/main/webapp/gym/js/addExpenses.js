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

         var settings = $.fn.commonajaxCall(url,{ "gym_id": gym_id,"offset":"0" });
         $.ajax(settings).done(function (response) {
             console.log(response);
             $.fn.closeLoader();

             $.fn.loadExpenseData(jQuery.parseJSON(response));
         });


     });


    /* $.fn.commonajaxCall = function(url,data){


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


     }*/




     $("#expenseType").on('change', function (e) {
         var optionSelected = $("#expenseType:selected", this);
         var valueSelected = this.value;
         if(valueSelected==3){

             $("#expOtherDiv").css("display", "block");

         }else{

             $("#expOtherDiv").css("display", "none");
             $("#expOtherDesc").val("")

         }
     });


     $.fn.loadExpenseData = function(expJson){

       // var expJson = JSON.parse(data)
         if(expJson.status){

             $.each( expJson.expenseList, function( key, value ) {
                 //var created_date = $.format.date(value.created_on, "dd/MM/yyyy hh:mm")
                 var created_date = moment(value.created_on).format('DD-MM-YYYY');
                 $('#exptable').append('<tr> <td><span class="badge bg-label-primary me-1">'+value.expense_item+'</span></td><td>'+value.exp_amount+'</td><td>'+value.created_by+'</td><td>'+created_date+'</td><td><div class="dropdown"><button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown"><i class="bx bx-dots-vertical-rounded"></i></button><div class="dropdown-menu"><a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-edit-alt me-1"></i> Edit</a><a class="dropdown-item" href="javascript:void(0);"><i class="bx bx-trash me-1"></i> Delete</a> </div></div></td></tr>')


             });
         }else{
             alert(expJson.statusDesc)
         }
        /* $('#exptable').append('<tr><td>my data</td><td>more data</td></tr>');*/




     }


     $("#addExpensesBtn").click(function() {


         var expDate =  $('#expDate').val();
         var expenseType =  $('#expenseType').val();
         var expOtherDesc =  $('#expOtherDesc').val();
         var expAmount =  $('#expAmount').val();
         if(expDate && expenseType && expAmount){

             if(expenseType==3){

                 if(expOtherDesc){

                 }else{

                     alert("Please enter description");
                     return false;
                 }
             }

             var exp_id = $("#expenseType").val();

             $.fn.openLoader();
             var url = baseUrl+"/addExpense"
             var settings = $.fn.commonajaxCall(url,{ "gym_id": gym_id,"user_id": user_id,"expDate":expDate,"exp_id":exp_id,"exp_remarks":expOtherDesc,"amount":expAmount});
             $.ajax(settings).done(function (response) {
                 console.log(response);
                 $.fn.closeLoader();

                 $.fn.loadExpenseData(jQuery.parseJSON(response));
             });



         }else{

             alert("Please enter details")
         }
     });


};