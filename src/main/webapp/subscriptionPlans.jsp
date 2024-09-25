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
    <script type="text/javascript" src="/WebAppGym/gym/js/subscriptionPlans.js"></script>

</head>

<body>
<jsp:include page="sessioncheck.jsp"/>
<jsp:include page="loader.jsp"/>
<style>

    .mb-2 {

        font-size: medium !important;
    }

    #settingSub {
        display: block;

    }

</style>
<script>


    var offset =0;

    function  callEditAction (id){

        $.fn.loadActionDiv(id);
    }

    function  delPlan (id){
        $.fn.delPlanAction(id);
    }

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
                    <h4 class="py-3 mb-4"><span class="text-muted fw-light">Home/</span> Subscription Plans</h4>


                    <!-- Bootstrap modals -->
                    <jsp:include page="subscriptionAdd.jsp"/>
                    <!--/ Bootstrap modals -->
                    <div class="card">
                        <div class="card-header flex-column flex-md-row pb-0">
                            <div class="dt-action-buttons text-end pt-6 pt-md-0" style="padding-bottom: 4%">
                                <div class="dt-buttons btn-group flex-wrap">

                                    <button  tabindex="0" aria-controls="DataTables_Table_0"
                                             type="button"
                                             class="btn btn-primary"
                                             data-bs-toggle="modal"
                                             style="margin-left: 14px"
                                             data-bs-target="#planAddModal"><span><i class="bx bx-plus bx-sm me-sm-2"></i> <span class="d-none d-sm-inline-block">Add New Plan</span></span></button>
                                </div>
                            </div>
                        </div>
                        <div id="subTableDv" class="table-responsive text-nowrap">
                            <table id="subtable" class="table">
                                <thead>
                                <tr>
                                    <th>Plan</th>
                                    <th>Added By</th>
                                    <th>Added On</th>

                                    <th>Actions</th>
                                </tr>
                                </thead>
                                <tbody class="table-border-bottom-0">


                                </tbody>

                            </table>
                            <jsp:include page="pagination.jsp"/>



                        </div>
                    </div>
                </div>
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
