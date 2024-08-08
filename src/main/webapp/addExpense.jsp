<!DOCTYPE html>

<html
        lang="en"
        class="light-style layout-menu-fixed layout-compact"
        dir="ltr"
        data-theme="theme-default"
        data-assets-path="/WebAppGym/assets/pro/"
        data-template="vertical-menu-template-free">
<head>
    <meta charset="utf-8" />
    <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>Vortex - Add Expenses</title>

    <jsp:include page="scriptsandcss.jsp"/>

</head>
<script>
    window.onload = function() {

    document.getElementById('expDate').valueAsDate = new Date();

    };


</script>
<body>
<jsp:include page="loader.jsp"/>

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
                    <h4 class="py-3 mb-4"><span class="text-muted fw-light">Home/</span> Add Expenses</h4>

                    <!-- Basic Layout -->
                    <div class="row">

                        <div class="col-xl">
                            <div class="card mb-4">
                                <div class="card-header d-flex justify-content-between align-items-center">
                                    <h5 class="mb-0">Add expenses</h5>

                                </div>
                                <div class="card-body">
                                    <form>
                                        <div class="mb-3">
                                            <label class="form-label" for="expDate">Date</label>
                                            <div class="input-group input-group-merge">
                            <span id="basic-icon-default-fullname2" class="input-group-text"
                            ><i class="bx bx-calendar"></i
                            ></span>
                                                <input
                                                        type="date"
                                                        class="form-control"
                                                        id="expDate"
                                                        placeholder="Date"
                                                        aria-label="Date"
                                                        aria-describedby="basic-icon-default-fullname2" />
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label" for="basic-icon-default-company">Company</label>
                                            <div class="input-group input-group-merge">
                            <span id="basic-icon-default-company2" class="input-group-text"
                            ><i class="bx bx-buildings"></i
                            ></span>
                                                <input
                                                        type="text"
                                                        id="basic-icon-default-company"
                                                        class="form-control"
                                                        placeholder="ACME Inc."
                                                        aria-label="ACME Inc."
                                                        aria-describedby="basic-icon-default-company2" />
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label" for="basic-icon-default-email">Email</label>
                                            <div class="input-group input-group-merge">
                                                <span class="input-group-text"><i class="bx bx-envelope"></i></span>
                                                <input
                                                        type="text"
                                                        id="basic-icon-default-email"
                                                        class="form-control"
                                                        placeholder="john.doe"
                                                        aria-label="john.doe"
                                                        aria-describedby="basic-icon-default-email2" />
                                                <span id="basic-icon-default-email2" class="input-group-text">@example.com</span>
                                            </div>
                                            <div class="form-text">You can use letters, numbers & periods</div>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label" for="basic-icon-default-phone">Phone No</label>
                                            <div class="input-group input-group-merge">
                            <span id="basic-icon-default-phone2" class="input-group-text"
                            ><i class="bx bx-phone"></i
                            ></span>
                                                <input
                                                        type="text"
                                                        id="basic-icon-default-phone"
                                                        class="form-control phone-mask"
                                                        placeholder="658 799 8941"
                                                        aria-label="658 799 8941"
                                                        aria-describedby="basic-icon-default-phone2" />
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label" for="basic-icon-default-message">Message</label>
                                            <div class="input-group input-group-merge">
                            <span id="basic-icon-default-message2" class="input-group-text"
                            ><i class="bx bx-comment"></i
                            ></span>
                                                <textarea
                                                        id="basic-icon-default-message"
                                                        class="form-control"
                                                        placeholder="Hi, Do you have a moment to talk Joe?"
                                                        aria-label="Hi, Do you have a moment to talk Joe?"
                                                        aria-describedby="basic-icon-default-message2"></textarea>
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-primary">Send</button>
                                    </form>
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

<div class="buy-now">
    <a
            href="https://themeselection.com/item/sneat-bootstrap-html-admin-template/"
            target="_blank"
            class="btn btn-danger btn-buy-now"
    >Upgrade to Pro</a
    >
</div>

<!-- Core JS -->
<!-- build:js assets/pro/vendor/js/core.js -->

<script src="/WebAppGym/assets/pro/vendor/libs/jquery/jquery.js"></script>
<script src="/WebAppGym/assets/pro/vendor/libs/popper/popper.js"></script>
<script src="/WebAppGym/assets/pro/vendor/js/bootstrap.js"></script>
<script src="/WebAppGym/assets/pro/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
<script src="/WebAppGym/assets/pro/vendor/js/menu.js"></script>

<!-- endbuild -->

<!-- Vendors JS -->

<!-- Main JS -->
<script src="/WebAppGym/assets/pro/js/main.js"></script>

<!-- Page JS -->

<!-- Place this tag in your head or just before your close body tag. -->
<script async defer src="https://buttons.github.io/buttons.js"></script>
</body>
</html>
