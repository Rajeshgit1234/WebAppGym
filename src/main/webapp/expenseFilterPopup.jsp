<style>
    #expOtherDiv {

        display: none ;
    }

</style>
<div class="card mb-4" >



    <div class="row gy-3">
        <!-- Modal Sizes -->
        <div class="col-lg-4 col-md-6">


            <!-- Large Modal -->

            <!-- Extra Large Modal -->
            <div class="modal fade" role="dialog" id="filterModal" >

                    <div class="modal-dialog modal-xl" role="document">
                        <div class="modal-content">

                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel4">Filter</h5>
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
                                    <label class="form-label" for="filterFromExpDate">From Date</label>
                                    <div class="input-group input-group-merge">
                                            <span id="basic-icon-default-fullname2" class="input-group-text"
                                            ><i class="bx bx-calendar"></i
                                            ></span>
                                        <input
                                                type="date"
                                                class="form-control"
                                                id="filterFromExpDate"
                                                placeholder="Date"
                                                aria-label="Date"
                                                aria-describedby="basic-icon-default-fullname2" />
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="filterToExpDate">To Date</label>
                                    <div class="input-group input-group-merge">
                                            <span id="basic-icon-default-fullname2" class="input-group-text"
                                            ><i class="bx bx-calendar"></i
                                            ></span>
                                        <input
                                                type="date"
                                                class="form-control"
                                                id="filterToExpDate"
                                                placeholder="Date"
                                                aria-label="Date"
                                                aria-describedby="basic-icon-default-fullname2" />
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="filterexpenseType">Expense </label>
                                    <div class="input-group input-group-merge">
                                        <span id="basic-icon-default-company2" class="input-group-text" ><i class="bx bx-purchase-tag"></i></span>

                                        <select id="filterexpenseType" class="select2 form-select">
                                            <option value="">Select</option>

                                        </select>
                                    </div>
                                </div>


                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                                    Close
                                </button>
                                <button id="filterBtn" type="button" class="btn btn-primary">Save changes</button>
                            </div>
                        </div>
                    </div>


            </div>

            <!--filter popup-->

            <!--filter popup-->

        </div>



    </div>
</div>
