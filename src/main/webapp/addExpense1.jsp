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
    <script type="text/javascript" src="/WebAppGym/gym/js/addExpenses.js"></script>

</head>
<script>

    var expenseMasterList = <%=session.getAttribute("expenseMasterList") %>
    var expenseListJson = <%=session.getAttribute("expenseListJson") %>





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
                    <h4 class="py-3 mb-4"><span class="text-muted fw-light">Home/</span> Add Expenses</h4>

                    <div class="card mb-4">
                        <h5 class="card-header">Bootstrap modals</h5>
                        <div class="card-body">
                            <div class="row gy-3">
                                <!-- Default Modal -->
                                <div class="col-lg-4 col-md-6">
                                    <small class="text-light fw-medium">Default</small>
                                    <div class="mt-3">
                                        <!-- Button trigger modal -->
                                        <button
                                                type="button"
                                                class="btn btn-primary"
                                                data-bs-toggle="modal"
                                                data-bs-target="#basicModal">
                                            Launch modal
                                        </button>

                                        <!-- Modal -->
                                        <div class="modal fade" id="basicModal" tabindex="-1" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel1">Modal title</h5>
                                                        <button
                                                                type="button"
                                                                class="btn-close"
                                                                data-bs-dismiss="modal"
                                                                aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="row">
                                                            <div class="col mb-3">
                                                                <label for="nameBasic" class="form-label">Name</label>
                                                                <input type="text" id="nameBasic" class="form-control" placeholder="Enter Name" />
                                                            </div>
                                                        </div>
                                                        <div class="row g-2">
                                                            <div class="col mb-0">
                                                                <label for="emailBasic" class="form-label">Email</label>
                                                                <input
                                                                        type="email"
                                                                        id="emailBasic"
                                                                        class="form-control"
                                                                        placeholder="xxxx@xxx.xx" />
                                                            </div>
                                                            <div class="col mb-0">
                                                                <label for="dobBasic" class="form-label">DOB</label>
                                                                <input type="date" id="dobBasic" class="form-control" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                                                            Close
                                                        </button>
                                                        <button type="button" class="btn btn-primary">Save changes</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Vertically Centered Modal -->
                                <div class="col-lg-4 col-md-6">
                                    <small class="text-light fw-medium">Vertically centered</small>
                                    <div class="mt-3">
                                        <!-- Button trigger modal -->
                                        <button
                                                type="button"
                                                class="btn btn-primary"
                                                data-bs-toggle="modal"
                                                data-bs-target="#modalCenter">
                                            Launch modal
                                        </button>

                                        <!-- Modal -->
                                        <div class="modal fade" id="modalCenter" tabindex="-1" aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-centered" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="modalCenterTitle">Modal title</h5>
                                                        <button
                                                                type="button"
                                                                class="btn-close"
                                                                data-bs-dismiss="modal"
                                                                aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="row">
                                                            <div class="col mb-3">
                                                                <label for="nameWithTitle" class="form-label">Name</label>
                                                                <input
                                                                        type="text"
                                                                        id="nameWithTitle"
                                                                        class="form-control"
                                                                        placeholder="Enter Name" />
                                                            </div>
                                                        </div>
                                                        <div class="row g-2">
                                                            <div class="col mb-0">
                                                                <label for="emailWithTitle" class="form-label">Email</label>
                                                                <input
                                                                        type="email"
                                                                        id="emailWithTitle"
                                                                        class="form-control"
                                                                        placeholder="xxxx@xxx.xx" />
                                                            </div>
                                                            <div class="col mb-0">
                                                                <label for="dobWithTitle" class="form-label">DOB</label>
                                                                <input type="date" id="dobWithTitle" class="form-control" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                                                            Close
                                                        </button>
                                                        <button type="button" class="btn btn-primary">Save changes</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Slide from Top Modal -->
                                <div class="col-lg-4 col-md-6">
                                    <small class="text-light fw-medium">Slide from Top</small>
                                    <div class="mt-3">
                                        <!-- Button trigger modal -->
                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalTop">
                                            Launch modal
                                        </button>

                                        <!-- Modal -->
                                        <div class="modal modal-top fade" id="modalTop" tabindex="-1">
                                            <div class="modal-dialog">
                                                <form class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="modalTopTitle">Modal title</h5>
                                                        <button
                                                                type="button"
                                                                class="btn-close"
                                                                data-bs-dismiss="modal"
                                                                aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="row">
                                                            <div class="col mb-3">
                                                                <label for="nameSlideTop" class="form-label">Name</label>
                                                                <input
                                                                        type="text"
                                                                        id="nameSlideTop"
                                                                        class="form-control"
                                                                        placeholder="Enter Name" />
                                                            </div>
                                                        </div>
                                                        <div class="row g-2">
                                                            <div class="col mb-0">
                                                                <label for="emailSlideTop" class="form-label">Email</label>
                                                                <input
                                                                        type="email"
                                                                        id="emailSlideTop"
                                                                        class="form-control"
                                                                        placeholder="xxxx@xxx.xx" />
                                                            </div>
                                                            <div class="col mb-0">
                                                                <label for="dobSlideTop" class="form-label">DOB</label>
                                                                <input type="date" id="dobSlideTop" class="form-control" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                                                            Close
                                                        </button>
                                                        <button type="button" class="btn btn-primary">Save</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="m-0" />
                        <div class="card-body">
                            <div class="row gy-3">
                                <!-- Modal with YouTube Video -->
                                <div class="col-lg-4 col-md-6">
                                    <small class="text-light fw-medium">YouTube Video</small>
                                    <div class="mt-3">
                                        <button
                                                type="button"
                                                class="btn btn-primary"
                                                data-bs-toggle="modal"
                                                data-bs-target="#youTubeModal"
                                                data-theVideo="https://www.youtube.com/embed/EngW7tLk6R8">
                                            Launch modal
                                        </button>

                                        <!-- Modal -->
                                        <div class="modal fade" id="youTubeModal" tabindex="-1" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <iframe height="350" src="https://www.youtube.com/embed/EngW7tLk6R8"></iframe>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Toggle Between Modals -->
                                <div class="col-lg-4 col-md-6">
                                    <small class="text-light fw-medium">Toggle Between Modals</small>
                                    <div class="mt-3">
                                        <button
                                                type="button"
                                                class="btn btn-primary"
                                                data-bs-toggle="modal"
                                                data-bs-target="#modalToggle">
                                            Launch modal
                                        </button>

                                        <!-- Modal 1-->
                                        <div
                                                class="modal fade"
                                                id="modalToggle"
                                                aria-labelledby="modalToggleLabel"
                                                tabindex="-1"
                                                style="display: none"
                                                aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-centered">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="modalToggleLabel">Modal 1</h5>
                                                        <button
                                                                type="button"
                                                                class="btn-close"
                                                                data-bs-dismiss="modal"
                                                                aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">Show a second modal and hide this one with the button below.</div>
                                                    <div class="modal-footer">
                                                        <button
                                                                class="btn btn-primary"
                                                                data-bs-target="#modalToggle2"
                                                                data-bs-toggle="modal"
                                                                data-bs-dismiss="modal">
                                                            Open second modal
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Modal 2-->
                                        <div
                                                class="modal fade"
                                                id="modalToggle2"
                                                aria-hidden="true"
                                                aria-labelledby="modalToggleLabel2"
                                                tabindex="-1">
                                            <div class="modal-dialog modal-dialog-centered">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="modalToggleLabel2">Modal 2</h5>
                                                        <button
                                                                type="button"
                                                                class="btn-close"
                                                                data-bs-dismiss="modal"
                                                                aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">Hide this modal and show the first with the button below.</div>
                                                    <div class="modal-footer">
                                                        <button
                                                                class="btn btn-primary"
                                                                data-bs-target="#modalToggle"
                                                                data-bs-toggle="modal"
                                                                data-bs-dismiss="modal">
                                                            Back to first
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Fullscreen Modal -->
                                <div class="col-lg-4 col-md-6">
                                    <small class="text-light fw-medium">Fullscreen</small>
                                    <div class="mt-3">
                                        <button
                                                type="button"
                                                class="btn btn-primary"
                                                data-bs-toggle="modal"
                                                data-bs-target="#fullscreenModal">
                                            Launch modal
                                        </button>

                                        <!-- Modal -->
                                        <div class="modal fade" id="fullscreenModal" tabindex="-1" aria-hidden="true">
                                            <div class="modal-dialog modal-fullscreen" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="modalFullTitle">Modal title</h5>
                                                        <button
                                                                type="button"
                                                                class="btn-close"
                                                                data-bs-dismiss="modal"
                                                                aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <p>
                                                            Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac
                                                            facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum
                                                            at eros.
                                                        </p>
                                                        <p>
                                                            Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis
                                                            lacus vel augue laoreet rutrum faucibus dolor auctor.
                                                        </p>
                                                        <p>
                                                            Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel
                                                            scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus
                                                            auctor fringilla.
                                                        </p>
                                                        <p>
                                                            Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac
                                                            facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum
                                                            at eros.
                                                        </p>
                                                        <p>
                                                            Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis
                                                            lacus vel augue laoreet rutrum faucibus dolor auctor.
                                                        </p>
                                                        <p>
                                                            Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel
                                                            scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus
                                                            auctor fringilla.
                                                        </p>
                                                        <p>
                                                            Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac
                                                            facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum
                                                            at eros.
                                                        </p>
                                                        <p>
                                                            Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis
                                                            lacus vel augue laoreet rutrum faucibus dolor auctor.
                                                        </p>
                                                        <p>
                                                            Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel
                                                            scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus
                                                            auctor fringilla.
                                                        </p>
                                                        <p>
                                                            Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac
                                                            facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum
                                                            at eros.
                                                        </p>
                                                        <p>
                                                            Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis
                                                            lacus vel augue laoreet rutrum faucibus dolor auctor.
                                                        </p>
                                                        <p>
                                                            Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel
                                                            scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus
                                                            auctor fringilla.
                                                        </p>
                                                        <p>
                                                            Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac
                                                            facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum
                                                            at eros.
                                                        </p>
                                                        <p>
                                                            Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis
                                                            lacus vel augue laoreet rutrum faucibus dolor auctor.
                                                        </p>
                                                        <p>
                                                            Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel
                                                            scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus
                                                            auctor fringilla.
                                                        </p>
                                                        <p>
                                                            Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac
                                                            facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum
                                                            at eros.
                                                        </p>
                                                        <p>
                                                            Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis
                                                            lacus vel augue laoreet rutrum faucibus dolor auctor.
                                                        </p>
                                                        <p>
                                                            Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel
                                                            scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus
                                                            auctor fringilla.
                                                        </p>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                                                            Close
                                                        </button>
                                                        <button type="button" class="btn btn-primary">Save changes</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="m-0" />
                        <div class="card-body">
                            <div class="row gy-3">
                                <!-- Modal Sizes -->
                                <div class="col-lg-4 col-md-6">
                                    <small class="text-light fw-medium">Sizes</small>
                                    <!-- Small Modal -->
                                    <div class="modal fade" id="smallModal" tabindex="-1" aria-hidden="true">
                                        <div class="modal-dialog modal-sm" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel2">Modal title</h5>
                                                    <button
                                                            type="button"
                                                            class="btn-close"
                                                            data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="row">
                                                        <div class="col mb-3">
                                                            <label for="nameSmall" class="form-label">Name</label>
                                                            <input type="text" id="nameSmall" class="form-control" placeholder="Enter Name" />
                                                        </div>
                                                    </div>
                                                    <div class="row g-2">
                                                        <div class="col mb-0">
                                                            <label class="form-label" for="emailSmall">Email</label>
                                                            <input type="email" class="form-control" id="emailSmall" placeholder="xxxx@xxx.xx" />
                                                        </div>
                                                        <div class="col mb-0">
                                                            <label for="dobSmall" class="form-label">DOB</label>
                                                            <input id="dobSmall" type="date" class="form-control" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                                                        Close
                                                    </button>
                                                    <button type="button" class="btn btn-primary">Save changes</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Large Modal -->
                                    <div class="modal fade" id="largeModal" tabindex="-1" aria-hidden="true">
                                        <div class="modal-dialog modal-lg" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel3">Modal title</h5>
                                                    <button
                                                            type="button"
                                                            class="btn-close"
                                                            data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="row">
                                                        <div class="col mb-3">
                                                            <label for="nameLarge" class="form-label">Name</label>
                                                            <input type="text" id="nameLarge" class="form-control" placeholder="Enter Name" />
                                                        </div>
                                                    </div>
                                                    <div class="row g-2">
                                                        <div class="col mb-0">
                                                            <label for="emailLarge" class="form-label">Email</label>
                                                            <input type="email" id="emailLarge" class="form-control" placeholder="xxxx@xxx.xx" />
                                                        </div>
                                                        <div class="col mb-0">
                                                            <label for="dobLarge" class="form-label">DOB</label>
                                                            <input type="date" id="dobLarge" class="form-control" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                                                        Close
                                                    </button>
                                                    <button type="button" class="btn btn-primary">Save changes</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Extra Large Modal -->
                                    <div class="modal fade" id="exLargeModal" tabindex="-1" aria-hidden="true">
                                        <div class="modal-dialog modal-xl" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel4">Modal title</h5>
                                                    <button
                                                            type="button"
                                                            class="btn-close"
                                                            data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="row">

                                                        <div class="col-xl">
                                                            <div class="card mb-4">
                                                                <div class="card-header d-flex justify-content-between align-items-center">
                                                                    <h5 class="mb-0">Add expenses</h5>

                                                                </div>
                                                                <div class="card-body">
                                                                    <div>
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
                                                                            <label class="form-label" for="expenseType">Expense </label>
                                                                            <div class="input-group input-group-merge">
                            <span id="basic-icon-default-company2" class="input-group-text"
                            ><i class="bx bx-purchase-tag"></i
                            ></span>
                                                                                &lt;%&ndash;<input
                                                                                    type="text"
                                                                                    id="basic-icon-default-company"
                                                                                    class="form-control"
                                                                                    placeholder="ACME Inc."
                                                                                    aria-label="ACME Inc."
                                                                                    aria-describedby="basic-icon-default-company2" />&ndash;%&gt;
                                                                                <select id="expenseType" class="select2 form-select">
                                                                                    <option value="">Select</option>

                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                        <div class="mb-3">
                                                                            <label class="form-label" for="expAmount">Amount</label>
                                                                            <div class="input-group input-group-merge">
                                                                                <span class="input-group-text"><i class="bx bx-rupee"></i></span>
                                                                                <input
                                                                                        type="text"
                                                                                        id="expAmount"
                                                                                        class="form-control"
                                                                                        placeholder="Amount"
                                                                                        aria-label="Amount"
                                                                                        aria-describedby="basic-icon-default-email2" />
                                                                            </div>
                                                                        </div>

                                                                        <button id="addExpensesBtn"  class="btn btn-primary d-grid w-100" type="submit">Add </button>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <!--form-->



                                                        <!--form-->
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                                                        Close
                                                    </button>
                                                    <button type="button" class="btn btn-primary">Save changes</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="demo-inline-spacing">
                                        <button
                                                type="button"
                                                class="btn btn-primary"
                                                data-bs-toggle="modal"
                                                data-bs-target="#smallModal">
                                            Small
                                        </button>

                                        <button
                                                type="button"
                                                class="btn btn-primary"
                                                data-bs-toggle="modal"
                                                data-bs-target="#largeModal">
                                            Large
                                        </button>

                                        <button
                                                type="button"
                                                class="btn btn-primary"
                                                data-bs-toggle="modal"
                                                data-bs-target="#exLargeModal">
                                            Extra Large
                                        </button>
                                    </div>
                                </div>

                                <!-- Modal Scroll long content -->
                                <div class="col-lg-4 col-md-3">
                                    <small class="text-light fw-medium">Scrolling long content</small>
                                    <!-- Modal -->
                                    <div class="modal fade" id="modalLong" tabindex="-1" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="modalLongTitle">Modal title</h5>
                                                    <button
                                                            type="button"
                                                            class="btn-close"
                                                            data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <p>
                                                        Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis
                                                        in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.
                                                    </p>
                                                    <p>
                                                        Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis
                                                        lacus vel augue laoreet rutrum faucibus dolor auctor.
                                                    </p>
                                                    <p>
                                                        Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel
                                                        scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus
                                                        auctor fringilla.
                                                    </p>
                                                    <p>
                                                        Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis
                                                        in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.
                                                    </p>
                                                    <p>
                                                        Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis
                                                        lacus vel augue laoreet rutrum faucibus dolor auctor.
                                                    </p>
                                                    <p>
                                                        Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel
                                                        scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus
                                                        auctor fringilla.
                                                    </p>
                                                    <p>
                                                        Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis
                                                        in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.
                                                    </p>
                                                    <p>
                                                        Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis
                                                        lacus vel augue laoreet rutrum faucibus dolor auctor.
                                                    </p>
                                                    <p>
                                                        Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel
                                                        scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus
                                                        auctor fringilla.
                                                    </p>
                                                    <p>
                                                        Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis
                                                        in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.
                                                    </p>
                                                    <p>
                                                        Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis
                                                        lacus vel augue laoreet rutrum faucibus dolor auctor.
                                                    </p>
                                                    <p>
                                                        Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel
                                                        scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus
                                                        auctor fringilla.
                                                    </p>
                                                    <p>
                                                        Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis
                                                        in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.
                                                    </p>
                                                    <p>
                                                        Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis
                                                        lacus vel augue laoreet rutrum faucibus dolor auctor.
                                                    </p>
                                                    <p>
                                                        Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel
                                                        scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus
                                                        auctor fringilla.
                                                    </p>
                                                    <p>
                                                        Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis
                                                        in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.
                                                    </p>
                                                    <p>
                                                        Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis
                                                        lacus vel augue laoreet rutrum faucibus dolor auctor.
                                                    </p>
                                                    <p>
                                                        Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel
                                                        scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus
                                                        auctor fringilla.
                                                    </p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                                                        Close
                                                    </button>
                                                    <button type="button" class="btn btn-primary">Save changes</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal -->
                                    <div class="modal fade" id="modalScrollable" tabindex="-1" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-scrollable" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="modalScrollableTitle">Modal title</h5>
                                                    <button
                                                            type="button"
                                                            class="btn-close"
                                                            data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <p>
                                                        Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis
                                                        in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.
                                                    </p>
                                                    <p>
                                                        Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis
                                                        lacus vel augue laoreet rutrum faucibus dolor auctor.
                                                    </p>
                                                    <p>
                                                        Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel
                                                        scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus
                                                        auctor fringilla.
                                                    </p>
                                                    <p>
                                                        Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis
                                                        in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.
                                                    </p>
                                                    <p>
                                                        Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis
                                                        lacus vel augue laoreet rutrum faucibus dolor auctor.
                                                    </p>
                                                    <p>
                                                        Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel
                                                        scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus
                                                        auctor fringilla.
                                                    </p>
                                                    <p>
                                                        Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis
                                                        in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.
                                                    </p>
                                                    <p>
                                                        Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis
                                                        lacus vel augue laoreet rutrum faucibus dolor auctor.
                                                    </p>
                                                    <p>
                                                        Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel
                                                        scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus
                                                        auctor fringilla.
                                                    </p>
                                                    <p>
                                                        Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis
                                                        in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.
                                                    </p>
                                                    <p>
                                                        Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis
                                                        lacus vel augue laoreet rutrum faucibus dolor auctor.
                                                    </p>
                                                    <p>
                                                        Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel
                                                        scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus
                                                        auctor fringilla.
                                                    </p>
                                                    <p>
                                                        Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis
                                                        in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.
                                                    </p>
                                                    <p>
                                                        Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis
                                                        lacus vel augue laoreet rutrum faucibus dolor auctor.
                                                    </p>
                                                    <p>
                                                        Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel
                                                        scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus
                                                        auctor fringilla.
                                                    </p>
                                                    <p>
                                                        Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis
                                                        in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.
                                                    </p>
                                                    <p>
                                                        Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis
                                                        lacus vel augue laoreet rutrum faucibus dolor auctor.
                                                    </p>
                                                    <p>
                                                        Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel
                                                        scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus
                                                        auctor fringilla.
                                                    </p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                                                        Close
                                                    </button>
                                                    <button type="button" class="btn btn-primary">Save changes</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="demo-inline-spacing">
                                        <!-- Button trigger modal -->
                                        <button
                                                type="button"
                                                class="btn btn-primary"
                                                data-bs-toggle="modal"
                                                data-bs-target="#modalLong">
                                            Option 1
                                        </button>

                                        <!-- Button ModalScrollable -->
                                        <button
                                                type="button"
                                                class="btn btn-primary"
                                                data-bs-toggle="modal"
                                                data-bs-target="#modalScrollable">
                                            Option 2
                                        </button>
                                    </div>
                                </div>

                                <!-- Modal Backdrop -->
                                <div class="col-lg-4 col-md-3">
                                    <small class="text-light fw-medium">Backdrop</small>
                                    <div class="mt-3">
                                        <!-- Button trigger modal -->
                                        <button
                                                type="button"
                                                class="btn btn-primary"
                                                data-bs-toggle="modal"
                                                data-bs-target="#backDropModal">
                                            Launch modal
                                        </button>

                                        <!-- Modal -->
                                        <div class="modal fade" id="backDropModal" data-bs-backdrop="static" tabindex="-1">
                                            <div class="modal-dialog">
                                                <form class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="backDropModalTitle">Modal title</h5>
                                                        <button
                                                                type="button"
                                                                class="btn-close"
                                                                data-bs-dismiss="modal"
                                                                aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="row">
                                                            <div class="col mb-3">
                                                                <label for="nameBackdrop" class="form-label">Name</label>
                                                                <input
                                                                        type="text"
                                                                        id="nameBackdrop"
                                                                        class="form-control"
                                                                        placeholder="Enter Name" />
                                                            </div>
                                                        </div>
                                                        <div class="row g-2">
                                                            <div class="col mb-0">
                                                                <label for="emailBackdrop" class="form-label">Email</label>
                                                                <input
                                                                        type="email"
                                                                        id="emailBackdrop"
                                                                        class="form-control"
                                                                        placeholder="xxxx@xxx.xx" />
                                                            </div>
                                                            <div class="col mb-0">
                                                                <label for="dobBackdrop" class="form-label">DOB</label>
                                                                <input type="date" id="dobBackdrop" class="form-control" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                                                            Close
                                                        </button>
                                                        <button type="button" class="btn btn-primary">Save</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Basic Layout -->
                    <div class="row">

                        <div class="col-xl">
                            <div class="card mb-4">
                                <div class="card-header d-flex justify-content-between align-items-center">
                                    <h5 class="mb-0">Add expenses</h5>

                                </div>
                                <div class="card-body">
                                    <div>
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
                                            <label class="form-label" for="expenseType">Expense </label>
                                            <div class="input-group input-group-merge">
                                    <span id="basic-icon-default-company2" class="input-group-text"
                                    ><i class="bx bx-purchase-tag"></i
                                    ></span>
                                                &lt;%&ndash;<input
                                                        type="text"
                                                        id="basic-icon-default-company"
                                                        class="form-control"
                                                        placeholder="ACME Inc."
                                                        aria-label="ACME Inc."
                                                        aria-describedby="basic-icon-default-company2" />&ndash;%&gt;
                                                <select id="expenseType" class="select2 form-select">
                                                    <option value="">Select</option>

                                                </select>
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label" for="expAmount">Amount</label>
                                            <div class="input-group input-group-merge">
                                                <span class="input-group-text"><i class="bx bx-rupee"></i></span>
                                                <input
                                                        type="text"
                                                        id="expAmount"
                                                        class="form-control"
                                                        placeholder="Amount"
                                                        aria-label="Amount"
                                                        aria-describedby="basic-icon-default-email2" />
                                            </div>
                                        </div>

                                        <button id="addExpensesBtn"  class="btn btn-primary d-grid w-100" type="submit">Add </button>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <!--form-->

                        <div class="col-xl">
                            <div class="card mb-4" style="background: none;box-shadow: none;">

                                <div class="card-body">





                                </div>
                            </div>

                        </div>

                        <!--form-->
                    </div>
                </div>

                <form  id="addExp" action="addExpense" method="post" style="display:none">

                    <input type = "text"  style="display: none" name = "expid" id = "expid">
                    <input type = "text"  style="display: none" name = "expname" id = "expname">
                    <input type = "text"  style="display: none" name = "expDate" id = "expDatef">
                    <input type = "text"  style="display: none" name = "expAmount" id = "expAmountf">


                </form>
                <!-- / Content -->

                <!-- Footer -->
                <footer class="content-footer footer bg-footer-theme">
                    <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
                        <div class="mb-2 mb-md-0">
                            ©
                            <script>
                                document.write(new Date().getFullYear());
                            </script>
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
