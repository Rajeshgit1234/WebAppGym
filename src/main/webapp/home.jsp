<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html
        lang="en"
        class="light-style layout-menu-fixed layout-compact"
        dir="ltr"
        data-theme="theme-default"
        data-assets-path="/WebAppGym/assets/"
        data-template="vertical-menu-template-free">
<head>
    <meta charset="utf-8" />
    <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>Dashboard - Analytics | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <jsp:include page="scriptsandcss.jsp"/>
    <%--<script type="text/javascript" src="/WebAppGym/gym/js/scripts.js"></script>
    <script type="text/javascript" src="/WebAppGym/gym/js/apexcharts.js"></script>--%>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <link rel="stylesheet" href="/WebAppGym/gym/css/styles.css" />
    <script type="text/javascript" src="/WebAppGym/gym/js/home.js"></script>

</head>

<body>
<jsp:include page="sessioncheck.jsp"/>
<jsp:include page="loader.jsp"/>
<style>

    .mb-2 {

        font-size: medium !important;
    }
</style>
<script>
    var expenseMasterList = <%=session.getAttribute("expenseMasterList") %>
    var expData = <%=session.getAttribute("expData") %>
    var payList = <%=session.getAttribute("payList") %>
    var exp_total = '${exp_total}';
    var pay_total = '${pay_total}';


</script>
<!-- Layout wrapper -->
<div class="layout-wrapper layout-content-navbar">
    <div class="layout-container">
        <!-- Menu -->

        <jsp:include page="sidemenu.jsp"/>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
            <!-- Navbar -->

            <jsp:include page="header.jsp"/>

            <!-- / Navbar -->

            <!-- Content wrapper -->
            <div class="content-wrapper">



                <%--<div id="wrapper">

                    <div class="content-area">
                        <div class="container-fluid">
                            <div class="main">


                                <div class="row mt-4">
                                    <div class="col-md-5">
                                        <div class="box columnbox mt-4">
                                            <div id="piechart"> </div>
                                        </div>
                                    </div>
                                    <div class="col-md-7">
                                        <div class="box  mt-4">
                                            <div id="linechart"> </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-5">
                                        <div class="box radialbox mt-4">
                                            <div id="circlechart"> </div>
                                        </div>
                                    </div>
                                    <div class="col-md-7">
                                        <div class="box mt-4">
                                            <div class="mt-4">
                                                <div id="progress1"></div>
                                            </div>
                                            <div class="mt-4">
                                                <div id="progress2"></div>
                                            </div>
                                            <div class="mt-4">
                                                <div id="progress3"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </div>

                        </div>
                    </div>
                </div>--%>

                    <div id="wrapper">
                        <div class="content-area">
                            <div class="container-fluid">

                                <div class="main">
                                    <div class="row sparkboxes mt-4 mb-4">
                                        <div class="col-md-4">
                                            <div class="box box1">
                                                <div id="expspark"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="box box2">
                                                <div id="payspark"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="box box3">
                                                <div id="profitspark"></div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mt-5 mb-4">
                                        <div class="col-md-6">
                                            <div class="box">
                                                <div id="piechart"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="box">
                                                <div id="areachart"></div>
                                            </div>
                                        </div>
                                    </div>

                                    <%--<div class="row mt-4 mb-4">
                                        <div class="col-md-6">
                                            <div class="box">
                                                <div id="area"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="box">
                                                <div id="line"></div>
                                            </div>
                                        </div>
                                    </div>--%>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="content-backdrop fade"></div>

                <!-- / Content -->

                <!-- Footer -->

                <!-- / Footer -->

                <div class="content-backdrop fade"></div>
            </div>
            <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
    </div>

    <!-- Overlay -->
    <div class="layout-overlay layout-menu-toggle"></div>
</div>
<!-- / Layout wrapper -->



<!-- Core JS -->
<!-- build:js assets/vendor/js/core.js -->

</body>
</html>
