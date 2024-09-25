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
                <div class="modal fade" id="payModel" tabindex="-1" aria-hidden="true">
                    <div class="modal-dialog modal-xl" role="document">
                        <div class="modal-content">

                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel4">Mark Payment</h5>
                                <button
                                        type="button"
                                        class="btn-close"
                                        data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="alert alert-success" id="alertDiv" style="margin: 1%;display: none" role="alert"></div>

                        <%--<div class="modal-body">
                                <div class="row">
                                    <div class="col mb-3">
                                        <label for="nameExLarge" class="form-label">Name</label>
                                        <input type="text" id="nameExLarge" class="form-control" placeholder="Enter Name" />
                                    </div>
                                </div>
                                <div class="row g-2">
                                    <div class="col mb-0">
                                        <label for="emailExLarge" class="form-label">Email</label>
                                        <input
                                                type="email"
                                                id="emailExLarge"
                                                class="form-control"
                                                placeholder="xxxx@xxx.xx" />
                                    </div>
                                    <div class="col mb-0">
                                        <label for="dobExLarge" class="form-label">DOB</label>
                                        <input type="date" id="dobExLarge" class="form-control" />
                                    </div>
                                </div>
                            </div>--%>
                            <div class="card-body">
                                <div class="mb-3">
                                    <label class="form-label" for="payDate">Date</label>
                                    <div class="input-group input-group-merge">
                                            <span id="basic-icon-default-fullname2" class="input-group-text"
                                            ><i class="fa fa-calendar fa-lg"></i
                                            ></span>
                                        <input
                                                type="date"
                                                class="form-control"
                                                id="payDate"
                                                placeholder="Date"
                                                aria-label="Date"
                                                aria-describedby="basic-icon-default-fullname2" />
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="usersList">User </label>
                                    <div class="input-group input-group-merge">
                                    <span id="basic-icon-default-company2" class="input-group-text" ><i class="fa fa-user fa-lg"></i></span>

                                        <select id="usersList" class="select2 form-select">
                                            <option value="">Select</option>

                                        </select>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="usersList">Subscription </label>
                                    <div class="input-group input-group-merge">
                                    <span id="basic-icon-default-company2" class="input-group-text" ><i class="fa fa-pencil fa-lg"></i></span>

                                        <select id="paySub" class="select2 form-select">
                                            <option value="0">Select</option>

                                        </select>
                                    </div>
                                </div>
                                <div class="mb-3" >
                                    <label class="form-label" for="usersList">Payment collecting for month(s) </label>
                                    <div class="input-group input-group-merge">

                                        <div class="input-group input-group-merge">
                                            <div class="demo-inline-spacing">
                                                <div class="btn-group">
                                                    <select id="fromMonth" class="select2 form-select" style="width: 100%;">
                                                        <option value="0">From (Month)</option>
                                                        <option value="1">January</option>
                                                        <option value="2">February</option>
                                                        <option value="3">March</option>
                                                        <option value="4">April</option>
                                                        <option value="5">May</option>
                                                        <option value="6">June</option>
                                                        <option value="7">July</option>
                                                        <option value="8">August</option>
                                                        <option value="9">September</option>
                                                        <option value="10">October</option>
                                                        <option value="11">November</option>
                                                        <option value="12">December</option>

                                                    </select>
                                                    <select id="fromYear" class="select2 form-select" style="width: 100%;">
                                                        <option value="0">Year</option>
                                                        <option value="2024">2024</option>
                                                        <option value="2025">2025</option>
                                                        <option value="2026">2026</option>
                                                        <option value="2027">2027</option>
                                                        <option value="2028">2028</option>


                                                    </select>
                                                </div>

                                                <div class="btn-group" style="margin-left: 40px !important;">

                                                    <select id="toMonth" class="select2 form-select" style="margin-left: 3px !important;width: 100%;">

                                                        <option value="0">To (Month)</option>
                                                        <option value="1">January</option>
                                                        <option value="2">February</option>
                                                        <option value="3">March</option>
                                                        <option value="4">April</option>
                                                        <option value="5">May</option>
                                                        <option value="6">June</option>
                                                        <option value="7">July</option>
                                                        <option value="8">August</option>
                                                        <option value="9">September</option>
                                                        <option value="10">October</option>
                                                        <option value="11">November</option>
                                                        <option value="12">December</option>
                                                    </select>

                                                    <select id="toYear" class="select2 form-select" style="width: 100%;">
                                                        <option value="0">Year</option>
                                                        <option value="2024">2024</option>
                                                        <option value="2025">2025</option>
                                                        <option value="2026">2026</option>
                                                        <option value="2027">2027</option>
                                                        <option value="2028">2028</option>


                                                    </select>
                                                </div>


                                            </div>
                                        </div>


                                    </div>
                                </div>

                                <div class="mb-3" >
                                    <label class="form-label" for="usersList">Description </label>
                                    <div class="input-group input-group-merge">
                                    <span id="basic-icon-default-company2" class="input-group-text" ><i class="fa fa-sticky-note fa-lg"></i></span>

                                        <input
                                                type="text"
                                                id="payDesc"
                                                class="form-control"
                                                placeholder="Description"
                                                aria-label="Description"
                                                aria-describedby="basic-icon-default-email2" />
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="payAmount">Amount</label>
                                    <div class="input-group input-group-merge">
                                        <span class="input-group-text"><i class="bx bx-rupee"></i></span>
                                        <input
                                                type="text"
                                                id="payAmount"
                                                class="form-control"
                                                placeholder="Amount"
                                                aria-label="Amount"
                                                aria-describedby="basic-icon-default-email2" />
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                                    Close
                                </button>
                                <button id="addPayBtn" type="button" class="btn btn-primary">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>



        </div>
    </div>
