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
    <script type="text/javascript" src="/WebAppGym/gym/js/notifications.js"></script>

</head>

<body>
<jsp:include page="sessioncheck.jsp"/>
<jsp:include page="loader.jsp"/>
<style>

    .row{
        margin:auto;
        padding: 30px;
        width: 80%;
        display: flex;
        flex-flow: column;
        .card{
            width: 100%;
            margin-bottom: 5px;
            display: block;
            transition: opacity 0.3s;
        }
    }


    .card-body{
        padding: 0.5rem;
        table{
            width: 100%;
            tr{
                display:flex;
                td{
                    a.btn{
                        font-size: 0.8rem;
                        padding: 3px;
                    }
                }
                td:nth-child(2){
                    text-align:right;
                    justify-content: space-around;
                }
            }
        }

    }

    .card-title:before{
        display:inline-block;
        font-family: 'Font Awesome\ 5 Free';
        font-weight:900;
        font-size: 1.1rem;
        text-align: center;
        border: 2px solid grey;
        border-radius: 100px;
        width: 30px;
        height: 30px;
        padding-bottom: 3px;
        margin-right: 10px;
    }

    .notification-invitation {
        .card-body {
            .card-title:before {
                color: #90CAF9;
                border-color: #90CAF9;
                content: "\f007";
            }
        }
    }

    .notification-warning {
        .card-body {
            .card-title:before {
                color: #FFE082;
                border-color: #FFE082;
                content: "\f071";
            }
        }
    }

    .notification-danger {
        .card-body {
            .card-title:before {
                color: #FFAB91;
                border-color: #FFAB91;
                content: "\f00d";
            }
        }
    }

    .notification-reminder {
        .card-body {
            .card-title:before {
                color: #CE93D8;
                border-color: #CE93D8;
                content: "\f017";
            }
        }
    }

    .card.display-none{
        display: none;
        transition: opacity 2s;
    }

    .mb-2 {

        font-size: medium !important;
    }
    #enqMenuSub {
        display: block;

    }


</style>
<script>




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
                    <h4 class="py-3 mb-4"><span class="text-muted fw-light">Home/</span> View Inquiries</h4>



                    <!--/ Bootstrap modals -->
                    <div class="card">


                        <div  id="notificationDiv" class="row notification-container">
                            <%--<div class="card notification-card notification-invitation">
                                <div class="card-body">
                                    <table>
                                        <tr>
                                            <td style="width:70%"><div class="card-title">Jane invited you to join '<b>Familia</b>' group</div></td>
                                            <td style="width:30%">
                                                <a href="#" class="btn btn-primary">View</a>
                                                <a href="#" class="btn btn-danger dismiss-notification">Dismiss</a>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>--%>




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
