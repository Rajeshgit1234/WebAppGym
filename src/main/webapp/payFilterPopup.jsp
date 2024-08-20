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
            <div class="modal fade" role="dialog" id="payFilterPopup" >

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


                            <div class="card-body">
                                <div class="mb-3">
                                    <label class="form-label" for="filterMonth">Month</label>
                                    <div class="input-group input-group-merge">
                                            <span id="basic-icon-default-fullname2" class="input-group-text"
                                            ><i class="bx bx-calendar"></i
                                            ></span>
                                        <select id="filterMonth" class="select2 form-select" >

                                            <option value="0">Select</option>
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
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="filterYear">Year</label>
                                    <div class="input-group input-group-merge">
                                            <span id="basic-icon-default-fullname2" class="input-group-text"
                                            ><i class="bx bx-calendar"></i
                                            ></span>
                                        <select id="filterYear" class="select2 form-select" >

                                            <option value="0">Select</option>
                                            <option value="2024">2024</option>
                                            <option value="2025">2025</option>
                                            <option value="2026">2026</option>
                                            <option value="2027">2027</option>
                                            <option value="2028">2028</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="usersListFilter">Users</label>
                                    <div class="input-group input-group-merge">
                                            <span id="basic-icon-default-fullname2" class="input-group-text"
                                            ><i class="bx bx-calendar"></i
                                            ></span>
                                        <select id="usersListFilter" class="select2 form-select">
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
