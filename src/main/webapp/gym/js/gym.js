window.onload = function() {
    var loginBtn = document.getElementById('loginBtn');
    loginBtn.onclick = function() {
        var gymusername =  $('#gymusername').val();
        var gympassword =  $('#gympassword').val();
        gymusername="test";
        gympassword="test";

        if(gympassword&& gymusername){

            $("#loading").css("display", "block");
            $('#userid').val(gymusername);
            $('#passcode').val(gympassword);

            $('#loginform').attr('action', "/WebAppGym/home").submit();
        }else{

            alert("Please enter username and password")
        }



    };



};