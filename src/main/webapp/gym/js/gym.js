window.onload = function() {
    var loginBtn = document.getElementById('loginBtn');
    loginBtn.onclick = function() {
        var gymusername =  $('#gymusername').val();
        var gympassword =  $('#gympassword').val();
        if(gympassword&& gymusername){

            $("#myDiv").css("display", "block");
            $('#userid').val(gymusername);
            $('#passcode').val(gympassword);

            $('#loginform').attr('action', "/WebAppGym/home").submit();
        }else{

            alert("Please enter username and password")
        }



    };
};