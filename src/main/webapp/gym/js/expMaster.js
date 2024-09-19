 window.onload = function() {

     $(document).ready(function(){

         /*var url = baseUrl+"/loadExpenses"

         var resp =  $.fn.ajaxCall(url,{ "gym_id": "1" });
         if(resp){

             $.fn.loadExpenseData(resp);
         }*/

         $.fn.loadExpenseMasterData();




     });





     $.fn.loadExpenseMasterData = function(expJson){

         var url = baseUrl+"/getExpMasterList"

         var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"offset":offset});
         $.ajax(settings).done(function (response) {
             console.log(response);
             $.fn.closeLoader();

             $.fn.renderExpenseMasterData(jQuery.parseJSON(response));
         });


     }

     $.fn.renderExpenseMasterData = function(expJson){


         $(".exClass").empty();


         if(expJson.status){

             listExp = expJson.expMasterList;
             $.each( expJson.expMasterList, function( key, value ) {
                 //var created_date = $.format.date(value.created_on, "dd/MM/yyyy hh:mm")
                 var created_date = moment(value.added).format('DD-MM-YYYY');
                 $('#expMastertable').append('<tr class="exClass"> <td><span class="badge bg-label-primary me-1">'+value.expItem+'</span></td><td>'+value.addedby+'</td><td>'+created_date+'</td><td><div class="dropdown"><button type="button" class="btn p-0 dropdown-toggle hide-arrow"   onclick="callEditAction('+key+')"><i class="bx bx-dots-vertical-rounded"></i></button><div  id="editAction_'+key+'" class="dropdown-menu"><a class="dropdown-item" href="javascript:void(0);" onclick="delExp('+value.expId+')"><i class="bx bx-trash me-1"></i> Delete</a> </div></div></td></tr>')


             });
         }

     }


     $("#addExpensesTypeBtn").click(function() {


         var expType =  $('#expType').val();

         if(expType ){





             $.fn.openLoader();
             var url = baseUrl+"/addNewExpItem"
             var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"user_id": sessionStorage.getItem("user_id"),"expItem":expType});
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



                 $.fn.loadExpenseMasterData();
             });



         }else{

             alert("Please enter details")
         }
     });

     var offset =0;
     $.fn.loadNextSet =function (){


         $.fn.openLoader();
         var url = baseUrl+"/getExpMasterList";

         var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"offset":(offset+10)});
         $.ajax(settings).done(function (response) {
             console.log(response);
             response = jQuery.parseJSON(response);
             $.fn.closeLoader();
             if(response.status && response.expenseList.length>0) {
                 $.fn.renderExpenseMasterData(response);
                 offset = offset+10;
             }
         });

     };
     $.fn.loadPrevSet =function (){

        if(offset!=0){

            $.fn.openLoader();
            var url = baseUrl+"/getExpMasterList";

            var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"offset":(offset-10) });
            $.ajax(settings).done(function (response) {
                console.log(response);
                response = jQuery.parseJSON(response);

                $.fn.closeLoader();
                if(response.status && response.expenseList.length>0) {
                    $.fn.renderExpenseMasterData((response));
                    offset = offset-10;
                }
            });

        }

     };




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








     $.fn.delExpenses =function (id){



         if(confirm("Are you sure you want to delete ?")){

             var exp_id = id;

             var url = baseUrl+"/delExpMasterItem"

             var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"userid": sessionStorage.getItem("user_id"),"itemId":exp_id});
             $.ajax(settings).done(function (response) {
                 console.log(response);
                 $.fn.loadExpenseMasterData();
             });



         }else{

             $.fn.loadActionDiv(id);
         }






     };


 };