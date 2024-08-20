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

    var options = {
        chart: {
            height: 350,
            type: 'bar',
        },
        dataLabels: {
            enabled: false
        },
        series: [],
        title: {
            text: 'Ajax Example',
        },
        noData: {
            text: 'Loading...'
        }
    }

    var chart = new ApexCharts(
        document.querySelector("#totalRevenueChart"),
        options
    );

    chart.render();

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
                <!-- Content -->

                <div class="container-xxl flex-grow-1 container-p-y">
                    <div class="row">


                        <div class="col-md mb-4 mb-md-2">
                            <small class="text-light fw-medium">Basic Accordion</small>
                            <div class="accordion mt-3" id="accordionExample">
                                <div class="card accordion-item active">
                                    <h2 class="accordion-header" id="headingOne">
                                        <button
                                                type="button"
                                                class="accordion-button"
                                                data-bs-toggle="collapse"
                                                data-bs-target="#accordionOne"
                                                aria-expanded="true"
                                                aria-controls="accordionOne">
                                            Accordion Item 1
                                        </button>
                                    </h2>

                                    <div
                                            id="accordionOne"
                                            class="accordion-collapse collapse show"
                                            data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            Lemon drops chocolate cake gummies carrot cake chupa chups muffin topping. Sesame snaps icing
                                            marzipan gummi bears macaroon dragée danish caramels powder. Bear claw dragée pastry topping
                                            soufflé. Wafer gummi bears marshmallow pastry pie.
                                        </div>
                                    </div>
                                </div>
                                <div class="card accordion-item">
                                    <h2 class="accordion-header" id="headingTwo">
                                        <button
                                                type="button"
                                                class="accordion-button collapsed"
                                                data-bs-toggle="collapse"
                                                data-bs-target="#accordionTwo"
                                                aria-expanded="false"
                                                aria-controls="accordionTwo">
                                            Accordion Item 2
                                        </button>
                                    </h2>
                                    <div
                                            id="accordionTwo"
                                            class="accordion-collapse collapse"
                                            aria-labelledby="headingTwo"
                                            data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            Dessert ice cream donut oat cake jelly-o pie sugar plum cheesecake. Bear claw dragée oat cake
                                            dragée ice cream halvah tootsie roll. Danish cake oat cake pie macaroon tart donut gummies.
                                            Jelly beans candy canes carrot cake. Fruitcake chocolate chupa chups.
                                        </div>
                                    </div>
                                </div>
                                <div class="card accordion-item">
                                    <h2 class="accordion-header" id="headingThree">
                                        <button
                                                type="button"
                                                class="accordion-button collapsed"
                                                data-bs-toggle="collapse"
                                                data-bs-target="#accordionThree"
                                                aria-expanded="false"
                                                aria-controls="accordionThree">
                                            Accordion Item 3
                                        </button>
                                    </h2>
                                    <div
                                            id="accordionThree"
                                            class="accordion-collapse collapse"
                                            aria-labelledby="headingThree"
                                            data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            Oat cake toffee chocolate bar jujubes. Marshmallow brownie lemon drops cheesecake. Bonbon
                                            gingerbread marshmallow sweet jelly beans muffin. Sweet roll bear claw candy canes oat cake
                                            dragée caramels. Ice cream wafer danish cookie caramels muffin.
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
                <!-- / Content -->

                <!-- Footer -->
                <footer class="content-footer footer bg-footer-theme">
                    <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
                        <div class="mb-2 mb-md-0">
                            ©
                            <script>
                                document.write(new Date().getFullYear());
                            </script>
                            , made with ❤️ by
                            <a href="https://themeselection.com" target="_blank" class="footer-link fw-medium">ThemeSelection</a>
                        </div>
                        <div class="d-none d-lg-inline-block">
                            <a href="https://themeselection.com/license/" class="footer-link me-4" target="_blank">License</a>
                            <a href="https://themeselection.com/" target="_blank" class="footer-link me-4">More Themes</a>

                            <a
                                    href="https://demos.themeselection.com/sneat-bootstrap-html-admin-template/documentation/"
                                    target="_blank"
                                    class="footer-link me-4"
                            >Documentation</a
                            >

                            <a
                                    href="https://github.com/themeselection/sneat-html-admin-template-free/issues"
                                    target="_blank"
                                    class="footer-link"
                            >Support</a
                            >
                        </div>
                    </div>
                </footer>
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
