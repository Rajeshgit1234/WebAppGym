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
    <script type="text/javascript" src="/WebAppGym/gym/js/addExpenses.js"></script>

</head>
<script>

    var expenseMasterList = <%=session.getAttribute("expenseMasterList") %>







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
                    <h4 class="py-3 mb-4"><span class="text-muted fw-light">Home/</span> Profile</h4>

                    <div class="row">
                        <div class="col-md-12">
                            <%--<ul class="nav nav-pills flex-column flex-md-row mb-3">
                                <li class="nav-item">
                                    <a class="nav-link active" href="javascript:void(0);"><i class="bx bx-user me-1"></i> Account</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="pages-account-settings-notifications.html"
                                    ><i class="bx bx-bell me-1"></i> Notifications</a
                                    >
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="pages-account-settings-connections.html"
                                    ><i class="bx bx-link-alt me-1"></i> Connections</a
                                    >
                                </li>
                            </ul>--%>
                            <div class="card mb-4">
                                <h5 class="card-header">Profile Details</h5>
                                <!-- Account -->
                                <%--<div class="card-body">
                                    <div class="d-flex align-items-start align-items-sm-center gap-4">
                                        <img
                                                src="../assets/img/avatars/1.png"
                                                alt="user-avatar"
                                                class="d-block rounded"
                                                height="100"
                                                width="100"
                                                id="uploadedAvatar" />
                                        <div class="button-wrapper">
                                            <label for="upload" class="btn btn-primary me-2 mb-4" tabindex="0">
                                                <span class="d-none d-sm-block">Upload new photo</span>
                                                <i class="bx bx-upload d-block d-sm-none"></i>
                                                <input
                                                        type="file"
                                                        id="upload"
                                                        class="account-file-input"
                                                        hidden
                                                        accept="image/png, image/jpeg" />
                                            </label>
                                            <button type="button" class="btn btn-outline-secondary account-image-reset mb-4">
                                                <i class="bx bx-reset d-block d-sm-none"></i>
                                                <span class="d-none d-sm-block">Reset</span>
                                            </button>

                                            <p class="text-muted mb-0">Allowed JPG, GIF or PNG. Max size of 800K</p>
                                        </div>
                                    </div>
                                </div>--%>
                                <hr class="my-0" />
                                <div class="card-body">
                                    <form id="formAccountSettings" method="POST" onsubmit="return false">
                                        <div class="row">
                                            <div class="mb-3 col-md-6">
                                                <label for="firstName" class="form-label"> Name</label>
                                                <input
                                                        class="form-control"
                                                        type="text"
                                                        id="firstName"
                                                        name="firstName"
                                                        value="${name}"
                                                        autofocus />
                                            </div>
                                            <div class="mb-3 col-md-6">
                                                <label for="lastName" class="form-label">User Name</label>
                                                <input class="form-control" readonly type="text" name="lastName" id="lastName" value="${username}" />
                                            </div>
                                            <div class="mb-3 col-md-6">
                                                <label for="organization" class="form-label">Gym Name</label>
                                                <input
                                                        type="text"
                                                        class="form-control"
                                                        readonly
                                                        id="organization"
                                                        name="organization"
                                                        value="${gym}"
                                                        value="ThemeSelection" />
                                            </div>
                                            <div class="mb-3 col-md-6">
                                                <label for="email" class="form-label">Gym Address</label>
                                                <input
                                                        class="form-control"
                                                        type="text"
                                                        id="email"
                                                        name="email"
                                                        value="${gymaddress}"
                                                        placeholder="john.doe@example.com" />
                                            </div>

                                            <div class="mb-3 col-md-6">
                                                <label class="form-label" for="phoneNumber">Relation</label>
                                                <div class="input-group input-group-merge">
                                                    <input
                                                            type="text"
                                                            readonly
                                                            id="phoneNumber"
                                                            name="phoneNumber"
                                                            class="form-control"
                                                            value="${profile}"
                                                            placeholder="202 555 0111" />
                                                </div>
                                            </div>
                                            <div class="mb-3 col-md-6">
                                                <label for="address" class="form-label">Address</label>
                                                <input type="text" class="form-control" value="${address}" id="address" name="address" placeholder="Address" />
                                            </div>
                                            <div class="mb-3 col-md-6">
                                                <label for="address" class="form-label">Profile created </label>
                                                <input type="text"   readonly class="form-control" value="${created}" id="created" name="address" placeholder="Address" />
                                            </div>


                                        </div>
                                        <div class="mt-2">
                                            <button type="submit" class="btn btn-primary me-2">Save changes</button>
                                        </div>
                                    </form>
                                </div>
                                <!-- /Account -->
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
