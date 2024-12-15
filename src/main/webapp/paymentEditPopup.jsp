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
                        <div class="modal-content">

                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel4">Edit Payment</h5>
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
                                    <label class="form-label" for="payEditDate">Payment from Date</label>
                                    <div class="input-group input-group-merge">
                                            <span id="basic-icon-default-fullname2" class="input-group-text"
                                            ><i class="fa fa-calendar fa-lg"></i
                                            ></span>
                                        <input
                                                type="date"
                                                readonly
                                                class="form-control"
                                                id="payEditDate"
                                                placeholder="Date"
                                                aria-label="Date"
                                                aria-describedby="basic-icon-default-fullname2" />
                                        <input
                                                type="hidden"

                                                class="form-control"
                                                id="payExpired"
                                                placeholder="Date"
                                                aria-label="Date"
                                                aria-describedby="basic-icon-default-fullname2" />
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="usersEditList">User </label>
                                    <div class="input-group input-group-merge">
                                    <span id="basic-icon-default-company2" class="input-group-text" ><i class="fa fa-user fa-lg"></i></span>

                                        <select id="usersEditList"  disabled class="select2 form-select">
                                            <option value="">Select</option>

                                        </select>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="usersEditList">Subscription </label>
                                    <div class="input-group input-group-merge">
                                    <span id="basic-icon-default-company2" class="input-group-text" ><i class="fa fa-pencil fa-lg"></i></span>

                                        <select id="payEditSub" class="select2 form-select">
                                            <option value="0">Select</option>

                                        </select>
                                    </div>
                                </div>

                                <div class="mb-3" >
                                    <label class="form-label" for="payEditDesc">Description </label>
                                    <div class="input-group input-group-merge">
                                    <span id="basic-icon-default-company2" class="input-group-text" ><i class="fa fa-sticky-note fa-lg"></i></span>

                                        <input
                                                type="text"
                                                id="payEditDesc"
                                                class="form-control"
                                                placeholder="Description"
                                                aria-label="Description"
                                                aria-describedby="basic-icon-default-email2" />
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="payEditAmount">Amount</label>
                                    <div class="input-group input-group-merge">
                                        <span class="input-group-text"><i class="bx bx-rupee"></i></span>
                                        <input
                                                type="text"
                                                id="payEditAmount"
                                                readonly
                                                class="form-control"
                                                placeholder="Amount"
                                                aria-label="Amount"
                                                aria-describedby="basic-icon-default-email2" />
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="1" id="discountEditAdded"  />
                                        <label class="form-check-label" for="discountEditAdded"> Discount  </label>
                                    </div>
                                </div>
                                <div class="mb-3" id="finalEditAmtDiv">
                                    <label class="form-label" for="finalEditamount">Amount after discount</label>
                                    <div class="input-group input-group-merge">
                                        <span class="input-group-text"><i class="bx bx-rupee"></i></span>
                                        <input
                                                type="text"
                                                id="finalEditamount"
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
                                <button id="editPayBtn" type="button" class="btn btn-primary">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>



        </div>
    </div>
