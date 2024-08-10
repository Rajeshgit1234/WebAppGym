<div class="card mb-4">



        <div class="row gy-3">
            <!-- Modal Sizes -->
            <div class="col-lg-4 col-md-6">


                <!-- Large Modal -->

                <!-- Extra Large Modal -->
                <div class="modal fade" id="exLargeModal" tabindex="-1" aria-hidden="true">
                    <div class="modal-dialog modal-xl" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel4">Add Expenses</h5>
                                <button
                                        type="button"
                                        class="btn-close"
                                        data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
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
                                    <span id="basic-icon-default-company2" class="input-group-text" ><i class="bx bx-purchase-tag"></i></span>

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
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                                    Close
                                </button>
                                <button id="addExpensesBtn" type="button" class="btn btn-primary">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>



        </div>
    </div>
