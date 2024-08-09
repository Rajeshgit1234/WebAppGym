 window.onload = function() {

     document.getElementById("expDate").valueAsDate = new Date();

     var expenseType = $("#expenseType");

     $.each(expenseMasterList, function( index, value ) {

         expenseType.append(
             $("<option></option>").val(value.expId).html(value.expItem)
         );
     })
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







};