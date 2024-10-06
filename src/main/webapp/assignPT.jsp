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
    <script type="text/javascript" src="/WebAppGym/gym/js/assignPT.js"></script>

</head>
<script>



</script>
<style>

    .mb-2 {

        font-size: medium !important;
    }



</style>
<script>

    var profile = <%=session.getAttribute("customers") %>
    var ptuser = <%=session.getAttribute("ptuser") %>


</script>

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
                    <h4 class="py-3 mb-4"><span class="text-muted fw-light">Home/</span> Assign PT </h4>

                    <div class="row">
                        <div class="col-md-12">


                            <div id="regFrom" class="mb-3" >
                                <div class="mb-3">
                                    <label class="form-label" for="usersList">User </label>
                                    <div class="input-group input-group-merge">
                                        <span id="basic-icon-default-company2" class="input-group-text" ><i class="fa fa-user fa-lg"></i></span>

                                        <select id="usersList" class="select2 form-select">
                                            <option value="0">Select</option>

                                        </select>
                                    </div>
                                </div><div class="mb-3">
                                <label class="form-label" for="usersList">PT </label>
                                <div class="input-group input-group-merge">
                                    <span id="basic-icon-default-company2" class="input-group-text" ><i class="fa fa-user fa-lg"></i></span>

                                    <select id="ptList" class="select2 form-select">
                                        <option value="0">Select</option>

                                    </select>
                                </div>
                            </div>
                            </div>
                                <button id="linkPt" class="btn btn-primary d-grid w-100">Assign</button>
                            </div>

                        </div>
                    </div>
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
