 window.onload = function() {

     $(document).ready(function(){

         /*var url = baseUrl+"/loadExpenses"

         var resp =  $.fn.ajaxCall(url,{ "gym_id": "1" });
         if(resp){

             $.fn.loadExpenseData(resp);
         }*/

        var editKey = -1;

         document.getElementById("expDate").valueAsDate = new Date();
         var date = new Date();
         var firstDay = new Date(date.getFullYear(), date.getMonth(), 1);
         var lastDay = new Date(date.getFullYear(), date.getMonth() + 1, 0);
         document.getElementById("filterFromExpDate").valueAsDate = firstDay;
         document.getElementById("filterToExpDate").valueAsDate = lastDay;



         var expenseType = $("#expenseType");
         var filterexpenseType = $("#filterexpenseType");
         var expenseEditType = $("#expenseEditType");

         $.each(expenseMasterList, function( index, value ) {

             expenseType.append(
                 $("<option></option>").val(value.expId).html(value.expItem)
             );
             filterexpenseType.append(
                 $("<option></option>").val(value.expId).html(value.expItem)
             );
             expenseEditType.append(
                 $("<option></option>").val(value.expId).html(value.expItem)
             );
         })

         var url = baseUrl+"/loadExpenses"

         var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"offset":"0" ,"type":type,"from":from,"to":to});
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
        // $('#exptable').remove();
        // $('#exptable').append('<thead><tr><th>Expense</th><th>Amount</th><th>Added by</th><th>Added On</th><th>Actions</th></tr></thead>')
       //  $('#exptable').append('<tbody class="table-border-bottom-0"></tbody>')
         $(".exClass").empty();


         if(expJson.status){

             listExp = expJson.expenseList;
             $.each( expJson.expenseList, function( key, value ) {
                 //var created_date = $.format.date(value.created_on, "dd/MM/yyyy hh:mm")
                 var created_date = moment(value.created_on).format('DD-MM-YYYY');
                 $('#exptable').append('<tr class="exClass"> <td><span class="badge bg-label-primary me-1">'+value.expense_item+'</span></td><td>'+value.exp_amount+'</td><td>'+value.created_by+'</td><td>'+created_date+'</td><td><div class="dropdown"><button type="button" class="btn p-0 dropdown-toggle hide-arrow"   onclick="callEditAction('+key+')"><i class="bx bx-dots-vertical-rounded"></i></button><div  id="editAction_'+key+'" class="dropdown-menu"><a class="dropdown-item" href="javascript:void(0);" onclick="delExp('+value.exp_id+')"><i class="bx bx-trash me-1"></i> Delete</a> </div></div></td></tr>')


             });
         }else{

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
             var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"user_id": sessionStorage.getItem("user_id"),"expDate":expDate,"exp_id":exp_id,"exp_remarks":expOtherDesc,"amount":expAmount});
             $.ajax(settings).done(function (resp) {

                 console.log(resp);
                 var response = jQuery.parseJSON(resp)
                 $.fn.closeLoader();
                 if(response.status){


                    // $.fn.showAlertSuccess(response.statusDesc);
                     $("#alertDiv").html(response.statusDesc)
                     $("#alertDiv").addClass('alert alert-success');
                     $("#alertDiv").css("display", "block");
                     setTimeout(
                         function()
                         {
                             $("#alertDiv").css("display", "none");
                         }, 5000);

                 }else{

                    // $.fn.showAlertFail(response.statusDesc);
                     $("#alertDiv").html(response.statusDesc)
                     $("#alertDiv").addClass('alert alert-danger');

                     $("#alertDiv").css("display", "block");
                     setTimeout(
                         function()
                         {
                             $("#alertDiv").css("display", "none");
                         }, 5000);

                 }


                 $.fn.loadExpenseData(response);
             });



         }else{

             alert("Please enter details")
         }
     });

     var offset =0;
     $.fn.loadNextSet =function (){


         $.fn.openLoader();
         var url = baseUrl+"/loadExpenses";

         var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"offset":(offset+10),"type":type,"from":from,"to":to });
         $.ajax(settings).done(function (response) {
             console.log(response);
             response = jQuery.parseJSON(response);
             $.fn.closeLoader();
             if(response.status && response.expenseList.length>0) {
                 $.fn.loadExpenseData(response);
                 offset = offset+10;
             }
         });

     };
     $.fn.loadPrevSet =function (){

        if(offset!=0){

            $.fn.openLoader();
            var url = baseUrl+"/loadExpenses";

            var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"offset":(offset-10) ,"type":type,"from":from,"to":to});
            $.ajax(settings).done(function (response) {
                console.log(response);
                response = jQuery.parseJSON(response);

                $.fn.closeLoader();
                if(response.status && response.expenseList.length>0) {
                    $.fn.loadExpenseData((response));
                    offset = offset-10;
                }
            });

        }

     };


     $("#filterBtn").click(function() {


         var filterFromExpDate =  $('#filterFromExpDate').val();
         var filterToExpDate =  $('#filterToExpDate').val();
         var filterexpenseType =  $('#filterexpenseType').val();

         from = filterFromExpDate;
         to = filterToExpDate;
         type = filterexpenseType;

         $("#filterModal").modal('hide');
         $('body').removeClass('modal-open');
         $('.modal-backdrop').remove();
        // $(".modal-backdrop").css("display", "none");


         var url = baseUrl+"/loadExpenses"

         var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"offset":"0" ,"type":type,"from":from,"to":to});
         $.ajax(settings).done(function (response) {
             console.log(response);
             $.fn.closeLoader();

             $.fn.loadExpenseData(jQuery.parseJSON(response));
         });

     });
     $("#clearfilterBtn").click(function() {




         from = "";
         to = "";
         type = 0;

         $("#filterModal").modal('hide');
         $('body').removeClass('modal-open');
         $('.modal-backdrop').remove();
        // $(".modal-backdrop").css("display", "none");


         var url = baseUrl+"/loadExpenses"

         var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"offset":"0" ,"type":type,"from":from,"to":to});
         $.ajax(settings).done(function (response) {
             console.log(response);
             $.fn.closeLoader();

             $.fn.loadExpenseData(jQuery.parseJSON(response));
         });

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

     $.fn.editExpenses =function (key){


         editKey = key;
         var expItem = (listExp.at(key));

         const d = new Date(expItem.created_on);
         //var month = date.getMonth();
         var month = (d.getMonth() < 10 ? '0' : '') + d.getMonth()
         // var de =   date.getDate();
         var de = (d.getDate() < 10 ? '0' : '') + d.getDate()
           var year =  d.getFullYear();
           var crtd_on = year+"-"+month+"-"+de;
         $('#expEditDate').val(crtd_on);

         $("#expenseEditType option").each(function() {
             if($(this).text() == expItem.expense_item ) {
                 $(this).attr('selected', 'selected');
             }
         });


         if($("#expenseEditType").prop('selectedIndex')==3){

             $("#expOtherEditDiv").css("display", "block");
             $('#expOtherEditDesc').val(expItem.exp_remarks);
         }else{

             $("#expOtherEditDiv").css("display", "none");
             $("#expOtherEditDesc").val("")

         }

         var amnt = expItem.exp_amount.substring(1);
         $('#expEditAmount').val(amnt);
         $("#expenseEditPopup").modal("show");
         $.fn.loadActionDiv(key);


     };


     $("#editExpensesBtn").click(function() {


         var expDate =  $('#expEditDate').val();
         var expenseType =  $('#expenseEditType').val();
         var expOtherDesc =  $('#expOtherEditDesc').val();
         var expAmount =  $('#expEditAmount').val();

         var expItem = (listExp.at(editKey));

         if(expDate && expenseType && expAmount){

             if(expenseType==3){

                 if(expOtherDesc){

                 }else{

                     alert("Please enter description");
                     return false;
                 }
             }

             var exp_id = $("#expenseEditType").val();

             $.fn.openLoader();
             var url = baseUrl+"/EditExpense"
             var settings = $.fn.commonajaxCall(url,{ "id": expItem.exp_id,"expDate":expDate,"exp_id":exp_id,"exp_remarks":expOtherDesc,"amount":expAmount});
             $.ajax(settings).done(function (resp) {

                 console.log(resp);
                 var response = jQuery.parseJSON(resp)
                 $.fn.closeLoader();
                 if(response.status){


                     // $.fn.showAlertSuccess(response.statusDesc);
                     $("#alertDiv").html(response.statusDesc)
                     $("#alertDiv").addClass('alert alert-success');
                     $("#alertDiv").css("display", "block");
                     setTimeout(
                         function()
                         {
                             $("#alertDiv").css("display", "none");
                         }, 5000);

                 }else{

                     // $.fn.showAlertFail(response.statusDesc);
                     $("#alertDiv").html(response.statusDesc)
                     $("#alertDiv").addClass('alert alert-danger');

                     $("#alertDiv").css("display", "block");
                     setTimeout(
                         function()
                         {
                             $("#alertDiv").css("display", "none");
                         }, 5000);

                 }


                 var url = baseUrl+"/loadExpenses"

                 var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"offset":"0" ,"type":type,"from":from,"to":to});
                 $.ajax(settings).done(function (response) {
                     console.log(response);
                     $.fn.closeLoader();

                     $.fn.loadExpenseData(jQuery.parseJSON(response));
                 });
             });



         }else{

             alert("Please enter details")
         }



     });

     $("#expenseEditType").on('change', function (e) {
         var optionSelected = $("#expenseEditType:selected", this);
         var valueSelected = this.value;
         if(valueSelected==3){

             $("#expOtherEditDiv").css("display", "block");

         }else{

             $("#expOtherEditDiv").css("display", "none");
             $("#expOtherEditDesc").val("")

         }
     });


     $.fn.delExpenses =function (id){



         if(confirm("Are you sure you want to delete ?")){

             var exp_id = id;

             var url = baseUrl+"/delExpense"

             var settings = $.fn.commonajaxCall(url,{ "exp_id": exp_id,"updatedby": sessionStorage.getItem("user_id")});
             $.ajax(settings).done(function (response) {
                 console.log(response);
                 var url = baseUrl+"/loadExpenses"

                 var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"offset":"0" ,"type":type,"from":from,"to":to});
                 $.ajax(settings).done(function (response) {
                     console.log(response);
                     $.fn.closeLoader();

                     $.fn.loadExpenseData(jQuery.parseJSON(response));
                 });
             });



         }else{

             $.fn.loadActionDiv(id);
         }






     };


 };