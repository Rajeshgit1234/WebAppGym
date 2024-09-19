<%@ page import="org.json.JSONArray" %>
<%@ page import="org.json.JSONObject" %><%--
  Created by IntelliJ IDEA.
  User: rajeshrajan
  Date: 09/08/24
  Time: 10:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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

    <title>Vortex - Expenses</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <jsp:include page="scriptsandcss.jsp"/>
    <script type="text/javascript" src="/WebAppGym/gym/js/expMaster.js"></script>

</head>
<script>



    function  callEditAction (id){

        $.fn.loadActionDiv(id);
    }



    function  delExp (id){
        $.fn.delExpenses(id);
    }



</script>
<style>

    .mb-2 {

        font-size: medium !important;
    }

    #settingSub {
        display: block;

    }

</style>

<body>
<jsp:include page="sessioncheck.jsp"/>
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
                    <h4 class="py-3 mb-4"><span class="text-muted fw-light">Home/</span> Add New Item</h4>


                    <!-- Bootstrap modals -->
                    <jsp:include page="expenseMasterPopup.jsp"/>

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
                                            data-bs-target="#expMasterModel"><span><i class="bx bx-plus bx-sm me-sm-2"></i> <span class="d-none d-sm-inline-block">Add New </span></span></button>
                                </div>
                            </div>
                        </div>
                        <div class="table-responsive text-nowrap">
                            <table id="expMastertable" class="table">
                                <thead>
                                <tr>
                                    <th>Expense Type</th>
                                    <th>Added by</th>
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

<script src="/WebAppGym/assets/vendor/libs/jquery/jquery.js"></script>
<script src="/WebAppGym/assets/vendor/libs/popper/popper.js"></script>
<script src="/WebAppGym/assets/vendor/js/bootstrap.js"></script>
<script src="/WebAppGym/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
<script src="/WebAppGym/assets/vendor/js/menu.js"></script>

<!-- endbuild -->

<!-- Vendors JS -->

<!-- Main JS -->
<script src="/WebAppGym/assets/js/main.js"></script>

<!-- Page JS -->
<script src="/WebAppGym/assets/js/ui-modals.js"></script>

<!-- Place this tag in your head or just before your close body tag. -->
<script async defer src="https://buttons.github.io/buttons.js"></script>
</body>
</html>
