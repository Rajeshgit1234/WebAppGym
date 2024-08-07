<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <link href="/WebAppGym/css/bootstrap.min.css" rel="stylesheet">
    <link href="/WebAppGym/css/font-awesome.min.css" rel="stylesheet">
    <link href="/WebAppGym/css/style.css" rel="stylesheet">
    <script type="text/javascript" src="/WebAppGym/gym/js/gym.js"></script>

    <title>Gym</title>
</head>
<body>
<jsp:include page="loader.jsp"/>
<section class="form-02-main">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="_lk_de">
                    <div class="form-03-main">
                        <div class="logo">
                            <img src="/WebAppGym/login/images/user.png">
                        </div>
                        <div class="form-group">
                            <input type="email" id="gymusername" name="email" class="form-control _ge_de_ol" type="text" placeholder="Enter Email" required="" aria-required="true">
                        </div>

                        <div class="form-group">
                            <input type="password" id="gympassword" name="password" class="form-control _ge_de_ol" type="text" placeholder="Enter Password" required="" aria-required="true">
                        </div>

                        <div class="checkbox form-group">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="">

                            </div>
                            <a href="#">Forgot Password</a>
                        </div>

                        <div class="form-group">
                            <div id="loginBtn" class="_btn_04">
                                <a href="#">Login</a>
                            </div>
                        </div>

                        <div class="form-group nm_lk"><p></p></div>

                        <div class="form-group pt-0">
                            <div class="_social_04">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<form id="loginform" style="display: none">

    <input type = "text"  style="display: none" name = "userid" id = "userid">
    <input type = "text"  style="display: none" name = "passcode" id = "passcode">
</form>
</body>
</html>