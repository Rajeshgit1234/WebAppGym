<style>
    #expOtherDiv {

        display: none ;
    }

</style>
<div class="card mb-4">



    <div class="row gy-3">
        <!-- Modal Sizes -->
        <div class="col-lg-4 col-md-6">


            <!-- Large Modal -->

            <!-- Extra Large Modal -->
            <div class="modal fade" id="userEditModal" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-xl" role="document">
                    <div class="modal-content" style="padding:3%">
                        <div class="alert alert-success" id="alertDiv" style="margin: 1%;display: none" role="alert"></div>

                        <div class="row">
                            <div class="col-xl-12">
                                <h6 class="text-muted">Customer Details</h6>
                                <div class="nav-align-top mb-4">
                                    <ul class="nav nav-pills mb-3" role="tablist">
                                        <li class="nav-item" id="accTab">
                                            <button
                                                    type="button"
                                                    class="nav-link active"
                                                    role="tab"
                                                    data-bs-toggle="tab"
                                                    data-bs-target="#navs-pills-top-home"
                                                    aria-controls="navs-pills-top-home"
                                                    aria-selected="true">
                                                Account
                                            </button>
                                        </li>
                                        <li class="nav-item" id="payTab">
                                            <button
                                                    type="button"
                                                    class="nav-link"
                                                    role="tab"
                                                    data-bs-toggle="tab"
                                                    data-bs-target="#navs-pills-top-profile"
                                                    aria-controls="navs-pills-top-profile"
                                                    aria-selected="false">
                                                Payments
                                            </button>
                                        </li>
                                        <li class="nav-item" id="atTab">
                                            <button
                                                    type="button"
                                                    class="nav-link"
                                                    role="tab"
                                                    data-bs-toggle="tab"
                                                    data-bs-target="#navs-pills-top-messages"
                                                    aria-controls="navs-pills-top-messages"
                                                    aria-selected="false">
                                                Attendance
                                            </button>
                                        </li>
                                    </ul>
                                    <div class="tab-content">
                                        <div class="tab-pane fade show active" id="navs-pills-top-home" role="tabpanel">
                                            <h5 class="card-header">Profile Details</h5>
                                            <!-- Account -->

                                            <div class="mb-3" style="display: none">
                                                <label class="form-label" for="editName">Name</label>
                                                <div class="input-group input-group-merge">
                                            <span id="basic-icon-default-fullname2" class="input-group-text"
                                            ><i class="fa fa-user-o fa-lg"></i></span>
                                                    <input
                                                            type="hidden"
                                                            class="form-control"
                                                            id="editId"
                                                            placeholder="Name"
                                                            aria-label="Name"
                                                            aria-describedby="basic-icon-default-fullname2" />
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label" for="editName">Name</label>
                                                <div class="input-group input-group-merge">
                                            <span id="basic-icon-default-fullname2" class="input-group-text"
                                            ><i class="fa fa-user-o fa-lg"></i></span>
                                                    <input
                                                            type="text"
                                                            class="form-control"
                                                            id="editName"
                                                            placeholder="Name"
                                                            aria-label="Name"
                                                            aria-describedby="basic-icon-default-fullname2" />
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label" for="editProfileType">Profile </label>
                                                <div class="input-group input-group-merge">
                                                    <span id="basic-icon-default-company2" class="input-group-text" ><i class="fa fa-users fa-lg"></i></span>

                                                    <select id="editProfileType" class="select2 form-select">
                                                        <option value="">Select</option>

                                                    </select>
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label" for="editSubscriptionPlan">Subscriptions </label>
                                                <div class="input-group input-group-merge">
                                                    <span id="basic-icon-default-company2" class="input-group-text" ><i class="fa fa-cc-amex fa-lg"></i></span>

                                                    <select id="editSubscriptionPlan" class="select2 form-select">
                                                        <option value="">Select</option>

                                                    </select>
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label" for="editAddress">Address</label>
                                                <div class="input-group input-group-merge">
                                            <span id="basic-icon-default-fullname2" class="input-group-text"
                                            ><i class="fa fa-address-card fa-lg"></i></span>
                                                    <%-- <input
                                                             type="text"
                                                             class="form-control"
                                                             id="address"
                                                             placeholder="Date"
                                                             aria-label="Date"
                                                             aria-describedby="basic-icon-default-fullname2" />--%>
                                                    <textarea id="editAddress" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label" for="editPhone">phone</label>
                                                <div class="input-group input-group-merge">
                                            <span id="basic-icon-default-fullname2" class="input-group-text"
                                            ><i class="fa fa-phone fa-lg"></i></span>
                                                    <input
                                                            type="tel"
                                                            class="form-control"
                                                            id="editPhone"
                                                            placeholder="phone"
                                                            aria-label="phone"
                                                            readonly
                                                            aria-describedby="basic-icon-default-fullname2" />
                                                </div>
                                            </div>

                                            <div class="mb-3">
                                                <label class="form-label" for="editEmail">email</label>
                                                <div class="input-group input-group-merge">
                                            <span id="basic-icon-default-fullname2" class="input-group-text"
                                            ><i class="fa fa-envelope fa-lg"></i></span>
                                                    <input
                                                            type="email"
                                                            class="form-control"
                                                            id="editEmail"
                                                            placeholder="email"
                                                            aria-label="email"
                                                            aria-describedby="basic-icon-default-fullname2" />
                                                </div>
                                            </div>

                                            <div class="mb-3">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" value="1" id="editDietPlan"  />
                                                    <label class="form-check-label" for="editDietPlan"> Diet plan required ? </label>
                                                </div>
                                            </div>


                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                                                    Close
                                                </button>
                                                <button id="editUserBtn" type="button" class="btn btn-primary">Save changes</button>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="navs-pills-top-profile" role="tabpanel">

                                            <div id="paymentsTabLoader" class="demo-inline-spacing">
                                                <div class="spinner-grow" role="status">
                                                    <span class="visually-hidden">Loading...</span>
                                                </div>
                                                <div class="spinner-grow text-primary" role="status">
                                                    <span class="visually-hidden">Loading...</span>
                                                </div>
                                                <div class="spinner-grow text-secondary" role="status">
                                                    <span class="visually-hidden">Loading...</span>
                                                </div>
                                                <div class="spinner-grow text-success" role="status">
                                                    <span class="visually-hidden">Loading...</span>
                                                </div>
                                                <div class="spinner-grow text-danger" role="status">
                                                    <span class="visually-hidden">Loading...</span>
                                                </div>
                                                <div class="spinner-grow text-warning" role="status">
                                                    <span class="visually-hidden">Loading...</span>
                                                </div>
                                                <div class="spinner-grow text-info" role="status">
                                                    <span class="visually-hidden">Loading...</span>
                                                </div>
                                                <div class="spinner-grow text-light" role="status">
                                                    <span class="visually-hidden">Loading...</span>
                                                </div>
                                                <div class="spinner-grow text-dark" role="status">
                                                    <span class="visually-hidden">Loading...</span>
                                                </div>
                                            </div>
                                            <div>
                                                <table id="payTable" class="table">
                                                    <thead>
                                                    <tr>
                                                        <th>Customer</th>
                                                        <th>Amount</th>
                                                        <th>From </th>
                                                        <th>To </th>

                                                        <th>description</th>
                                                        <th>Paid On </th>

                                                    </tr>
                                                    </thead>
                                                    <tbody class="table-border-bottom-0">


                                                    </tbody>

                                                </table><label id="noDataLabel">No data</label>


                                            </div>



                                        </div>
                                        <div class="tab-pane fade" id="navs-pills-top-messages" role="tabpanel">
                                            <p>
                                                Oat cake chupa chups dragée donut toffee. Sweet cotton candy jelly beans macaroon gummies
                                                cupcake gummi bears cake chocolate.
                                            </p>
                                            <p class="mb-0">
                                                Cake chocolate bar cotton candy apple pie tootsie roll ice cream apple pie brownie cake. Sweet
                                                roll icing sesame snaps caramels danish toffee. Brownie biscuit dessert dessert. Pudding jelly
                                                jelly-o tart brownie jelly.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>



                    </div>
                </div>
            </div>

            <!--filter popup-->

            <!--filter popup-->

        </div>



    </div>
</div>
