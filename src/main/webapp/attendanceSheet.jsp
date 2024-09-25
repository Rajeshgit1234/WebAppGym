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
    <script type="text/javascript" src="/WebAppGym/gym/js/attendanceSheet.js"></script>

</head>
<script>

    var offset =0;
    var from ="";
    var to ="";


</script>
<style>

    .mb-2 {

        font-size: medium !important;
    }

    #attendanceSub {
        display: block;

    }

    body {
        line-height: 1.6;
        margin: 2em;
    }

    th {
        background-color: #001f3f;
        color: #fff;
        padding: 0.5em 1em;
    }

    td {
        border-top: 1px solid #eee;
        padding: 0.5em 1em;
    }

    input {
        cursor: pointer;
    }

    /* Column types */
    th.missed-col {
        background-color: #f00;
    }

    td.missed-col {
        background-color: #ffecec;
        color: #f00;
        text-align: center;
    }

    .name-col {
        text-align: left;
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
                    <h4 class="py-3 mb-4"><span class="text-muted fw-light">Home/</span> Attendance Sheet</h4>

                    <div class="row">
                        <div class="col-md-12">



                            <div>



                                <div class="card-body">
                                    <small class="text-light fw-medium">Attendance Sheet</small>
                                    <div class="demo-inline-spacing">
                                        <div class="btn-group" style="width: auto;padding-right: 2%">


                                            <%--<div class="input-group input-group-merge">
                                            <span id="basic-icon-default-fullname2" class="input-group-text"
                                            ><i class="bx bx-calendar"></i
                                            ></span>
                                                <input
                                                        type="date"
                                                        class="form-control"
                                                        id="attFrom"
                                                        placeholder="Choose start date"
                                                        aria-label="Choose start date"
                                                        aria-describedby="basic-icon-default-fullname2" />
                                            </div>--%>
                                                <div class="btn-group" role="group" aria-label="Basic example">
                                                    <button  type="button" class="btn btn-outline-secondary" style="border: none;width: 100%">Attendance From  </button>

                                                    <div class="input-group input-group-merge">
                                            <span id="basic-icon-default-fullname2" class="input-group-text"
                                            ><i class="bx bx-calendar"></i
                                            ></span>
                                                        <input
                                                                type="date"
                                                                class="form-control"
                                                                id="attFrom"
                                                                placeholder="Choose start date"
                                                                aria-label="Choose start date"
                                                                aria-describedby="basic-icon-default-fullname2" />
                                                    </div>
                                                </div>


                                        </div>
                                        <div class="btn-group" style="width: auto;padding-left: 0%">


                                           <%-- <div class="input-group input-group-merge">
                                            <span id="basic-icon-default-fullname2" class="input-group-text"
                                            ><i class="bx bx-calendar"></i
                                            ></span>
                                                <input
                                                        type="date"
                                                        class="form-control"
                                                        id="attTo"
                                                        placeholder="Choose end date"
                                                        aria-label="Choose end date"
                                                        aria-describedby="basic-icon-default-fullname2" />
                                            </div>--%>
                                               <div class="btn-group" role="group" aria-label="Basic example">
                                                   <button type="button" class="btn btn-outline-secondary" style="border: none;">To</button>

                                                   <div class="input-group input-group-merge">
                                            <span id="basic-icon-default-fullname2" class="input-group-text"
                                            ><i class="bx bx-calendar"></i
                                            ></span>
                                                       <input
                                                               type="date"
                                                               class="form-control"
                                                               id="attTo"
                                                               placeholder="Choose start date"
                                                               aria-label="Choose start date"
                                                               aria-describedby="basic-icon-default-fullname2" />
                                                   </div>
                                               </div>

                                        </div>
                                        <div class="btn-group" style="padding-left: 10%">
                                            <button id="searchAttBtn" type="button" class="btn rounded-pill btn-outline-secondary">Search</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="table-responsive text-nowrap" style="margin-top: 3%">
                                <table id="attTable" class="table">
                                    <thead>
                                    <tr class="text-nowrap" id="attHeading">
                                        <%--<th>#</th>
                                        <th>Customer Name</th>
                                        <th>Table heading</th>
                                        <th>Table heading</th>
                                        <th>Table heading</th>
                                        <th>Table heading</th>
                                        <th>Table heading</th>
                                        <th>Table heading</th>
                                        <th>Table heading</th>
                                        <th>Table heading</th>--%>
                                    </tr>
                                    </thead>
                                    <tbody class="table-border-bottom-0" id="attRow">
                                    <%--<tr>
                                        <th scope="row">1</th>
                                        <td><i class="fa fa-check-circle text-success" aria-hidden="true"></i></td>
                                        <td><i class="fa fa-times-circle text-danger" aria-hidden="true"></i></td>
                                        <td>Table cell</td>
                                        <td>Table cell</td>
                                        <td>Table cell</td>
                                        <td>Table cell</td>
                                        <td>Table cell</td>
                                        <td>Table cell</td>
                                        <td>Table cell</td>
                                    </tr>--%>

                                    </tbody>
                                </table>

                            </div>
                            <jsp:include page="pagination.jsp"/>

                            <%--<table>
                                <thead>
                                <tr>
                                    <th class="name-col">Student Name</th>
                                    <th>1</th>
                                    <th>2</th>
                                    <th>3</th>
                                    <th>4</th>
                                    <th>5</th>
                                    <th>6</th>
                                    <th>7</th>
                                    <th>8</th>
                                    <th>9</th>
                                    <th>10</th>
                                    <th>11</th>
                                    <th>12</th>
                                    <th class="missed-col">Days Missed-col</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="student">
                                    <td class="name-col">Slappy the Frog</td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="missed-col">0</td>
                                </tr>
                                <tr class="student">
                                    <td class="name-col">Lilly the Lizard</td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="missed-col">0</td>
                                </tr>
                                <tr class="student">
                                    <td class="name-col">Paulrus the Walrus</td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="missed-col">0</td>
                                </tr>
                                <tr class="student">
                                    <td class="name-col">Gregory the Goat</td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="missed-col">0</td>
                                </tr>
                                <tr class="student">
                                    <td class="name-col">Adam the Anaconda</td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="attend-col"><input type="checkbox"></td>
                                    <td class="missed-col">0</td>
                                </tr>
                                </tbody>
                            </table>--%>






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
