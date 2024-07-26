window.onload = function() {
    var loginBtn = document.getElementById('loginBtn');
    loginBtn.onclick = function() {
        alert("clicked");
        $('#loginform').attr('action', "/WebAppGym/home").submit();

    };
};