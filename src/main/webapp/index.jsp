<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html
        lang="en"
        class="light-style layout-wide customizer-hide"
        dir="ltr"
        data-theme="theme-default"
        data-assets-path="/WebAppGym/assets/"
        data-template="vertical-menu-template-free">
<head>
    <meta charset="utf-8" />
    <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>Vortex - GYM</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/png" sizes="16x16" href="/WebAppGym/assets/img/favicon.ico">

    <script src="/WebAppGym/assets/vendor/libs/jquery/jquery.js"></script>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
            href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
            rel="stylesheet" />

    <link rel="stylesheet" href="/WebAppGym/assets/vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="/WebAppGym/assets/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="/WebAppGym/assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="/WebAppGym/assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="/WebAppGym/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <!-- Page CSS -->
    <!-- Page -->
    <link rel="stylesheet" href="/WebAppGym/assets/vendor/css/pages/page-auth.css" />

    <!-- Helpers -->
    <script src="/WebAppGym/assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="/WebAppGym/assets/js/config.js"></script>
    <script type="text/javascript" src="/WebAppGym/gym/js/common.js"></script>

    <script type="text/javascript" src="/WebAppGym/gym/js/gym.js"></script>

</head>

<body>
<!-- Content -->
<jsp:include page="loader.jsp"/>

<div class="container-xxl">
    <div class="authentication-wrapper authentication-basic container-p-y">
        <div class="authentication-inner">
            <!-- Register -->
            <div class="card">
                <div class="card-body">
                    <!-- Logo -->
                    <div class="app-brand justify-content-center">
                        <a href="index.html" class="app-brand-link gap-2">
                  <span class="app-brand-logo demo">


                  <svg fill="#6a6cff" height="177px" width="177px" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 503.607 503.607" xml:space="preserve"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g> <g> <path d="M398.865,209.836h-12.766v-81.467c0-24.5-19.934-44.435-44.435-44.435h-1.066l-5.741-10.005 c-5.389-9.401-8.242-19.892-8.242-30.342C326.614,19.557,304.732,0,277.831,0h-85.63c-26.901,0-48.783,19.557-48.783,43.587 c0,10.45-2.854,20.942-8.242,30.342l-5.741,10.005h-1.066c-24.5,0-44.435,19.934-44.435,44.435v246.868 c0,24.5,19.934,44.435,44.435,44.435h1.066l5.741,10.005c5.389,9.401,8.242,19.892,8.242,30.342 c0,24.03,21.882,43.587,48.783,43.587h85.63c26.901,0,48.783-19.557,48.783-43.587c0-10.45,2.854-20.942,8.242-30.342 l5.741-10.005h1.066c24.5,0,44.435-19.934,44.435-44.435V293.77h12.766c11.474,0,20.807-9.334,20.807-20.807v-42.32 C419.672,219.17,410.339,209.836,398.865,209.836z M149.739,82.281c6.849-11.935,10.467-25.315,10.467-38.694 c0-14.781,14.353-26.8,31.996-26.8h85.63c17.643,0,31.996,12.019,31.996,26.8c0,13.379,3.618,26.758,10.467,38.694l0.948,1.654 H148.791L149.739,82.281z M176.262,184.656c-4.642,0-8.393-3.76-8.393-8.393s3.752-8.393,8.393-8.393h58.754 c4.642,0,8.393,3.76,8.393,8.393s-3.752,8.393-8.393,8.393H176.262z M218.229,209.836c0,4.633-3.752,8.393-8.393,8.393h-33.574 c-4.642,0-8.393-3.76-8.393-8.393s3.752-8.393,8.393-8.393h33.574C214.478,201.443,218.229,205.203,218.229,209.836z M243.41,201.443h50.361c4.642,0,8.393,3.76,8.393,8.393s-3.752,8.393-8.393,8.393H243.41c-4.642,0-8.393-3.76-8.393-8.393 S238.768,201.443,243.41,201.443z M293.77,184.656h-25.18c-4.642,0-8.393-3.76-8.393-8.393s3.752-8.393,8.393-8.393h25.18 c4.642,0,8.393,3.76,8.393,8.393S298.412,184.656,293.77,184.656z M293.77,151.082H176.262c-4.642,0-8.393-3.76-8.393-8.393 s3.752-8.393,8.393-8.393H293.77c4.642,0,8.393,3.76,8.393,8.393S298.412,151.082,293.77,151.082z M320.294,421.326 c-6.849,11.935-10.467,25.315-10.467,38.694c0,14.781-14.353,26.8-31.996,26.8h-85.63c-17.643,0-31.996-12.019-31.996-26.8 c0-13.379-3.618-26.758-10.467-38.694l-0.948-1.654h172.452L320.294,421.326z M344.131,327.344h-11.6l-22.855,45.719 c-1.561,3.106-4.826,4.961-8.343,4.6c-3.458-0.344-6.345-2.787-7.269-6.144l-20.01-73.35l-15.058,25.105 c-1.511,2.526-4.239,4.071-7.193,4.071h-20.69l-31.081,46.626c-1.57,2.35-4.205,3.735-6.983,3.735 c-0.445,0-0.89-0.034-1.343-0.109c-3.248-0.529-5.884-2.904-6.757-6.077l-20.329-74.534l-23.342,35.017 c-1.561,2.333-4.18,3.735-6.983,3.735h-16.787c-4.642,0-8.393-3.76-8.393-8.393c0-4.633,3.752-8.393,8.393-8.393h12.296 l31.081-46.626c1.821-2.728,5.053-4.146,8.326-3.626c3.248,0.529,5.884,2.904,6.757,6.077l20.329,74.534l23.342-35.017 c1.561-2.333,4.18-3.735,6.983-3.735h20.43l22.738-37.896c1.729-2.871,4.969-4.457,8.343-3.995c3.324,0.462,6.06,2.871,6.95,6.11 l19.397,71.134l15.352-30.712c1.427-2.845,4.331-4.642,7.512-4.642h16.787c4.642,0,8.393,3.76,8.393,8.393 C352.525,323.584,348.773,327.344,344.131,327.344z"></path> </g> </g> </g></svg>
              </span>
                            <span class="app-brand-text demo text-body fw-bold">Vortex</span>
                        </a>
                    </div>
                    <!-- /Logo -->
                    <h4 class="mb-2">Welcome to Vortex! 👋</h4>
                    <p class="mb-4">Please sign-in to your account </p>

                    <div id="formAuthentication" class="mb-3" action="index.html">
                        <div class="mb-3">
                            <label for="phone" class="form-label">Phone Number</label>
                            <input
                                    type="text"
                                    class="form-control"
                                    id="phone"
                                    name="email-username"
                                    placeholder="Enter your registered phone number"
                                    autofocus />
                        </div>
                        <div class="mb-3 form-password-toggle">
                            <div class="d-flex justify-content-between">
                                <label class="form-label" for="gympassword">Password</label>
                                <a href="auth-forgot-password-basic.html">
                                    <small>Forgot Password?</small>
                                </a>
                            </div>
                            <div class="input-group input-group-merge">
                                <input
                                        type="password"
                                        id="gympassword"
                                        class="form-control"
                                        name="password"
                                        placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"
                                        aria-describedby="password" />
                                <span class="input-group-text cursor-pointer"><i class="bx bx-hide"></i></span>
                            </div>
                        </div>
                        <div class="mb-3">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="remember-me" />
                                <label class="form-check-label" for="remember-me"> Remember Me </label>
                            </div>
                        </div>
                        <div class="mb-3">
                            <button id="loginBtn" class="btn btn-primary d-grid w-100" type="submit">Sign in</button>
                        </div>
                    </div>

                    <p class="text-center">
                        <span>New on our platform?</span>
                        <a href="auth-register-basic.html">
                            <span>Create an account</span>
                        </a>
                    </p>
                </div>
            </div>
            <!-- /Register -->
        </div>
    </div>
</div>

<!-- / Content -->

<%--<div class="buy-now">
    <a
            href="https://themeselection.com/item/sneat-bootstrap-html-admin-template/"
            target="_blank"
            class="btn btn-danger btn-buy-now"
    >Upgrade to Pro</a
    >
</div>--%>
<form id="loginform"  method="post" style="display: none" action="home.jsp">

    <input type = "text"  style="display: none" name = "user_id" id = "user_id">
    <input type = "text"  style="display: none" name = "gym_id" id = "gym_id">
</form>
<!-- Core JS -->
<!-- build:js assets/vendor/js/core.js -->

<script src="/WebAppGym/assets/vendor/libs/popper/popper.js"></script>
<script src="/WebAppGym/assets/vendor/js/bootstrap.js"></script>
<script src="/WebAppGym/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
<script src="/WebAppGym/assets/vendor/js/menu.js"></script>

<!-- endbuild -->

<!-- Vendors JS -->

<!-- Main JS -->
<script src="/WebAppGym/assets/js/main.js"></script>

<!-- Page JS -->

<!-- Place this tag in your head or just before your close body tag. -->
<script async defer src="https://buttons.github.io/buttons.js"></script>


</body>
</html>