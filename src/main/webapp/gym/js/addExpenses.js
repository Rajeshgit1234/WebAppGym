window.onload = function() {

    $( "#addExpensesBtn" ).on( "click", function() {
        alert( "Handler for `click` called." );
    } );


    var addExpensesBtn = document.getElementById('addExpensesBtn');
    addExpensesBtn.onclick = function() {
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



    };




};