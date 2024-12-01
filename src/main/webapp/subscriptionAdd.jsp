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
      <div class="modal fade" id="planAddModal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-xl" role="document">
          <div class="modal-content">

            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel4">Add Plan</h5>
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
                <label class="form-label" for="subscriptiontext">Name</label>
                <div class="input-group input-group-merge">
                                            <span id="basic-icon-default-fullname2" class="input-group-text"
                                            ><i class="fa fa-pencil fa-lg"></i
                                            ></span>
                  <input
                          type="text"
                          class="form-control"
                          id="subscriptiontext"
                          placeholder="Plan Name"
                          aria-label="Plan Name"
                          aria-describedby="basic-icon-default-fullname2" />
                </div>
              </div>
              <div class="mb-3">
                <label class="form-label" for="amount">Amount </label>
                <div class="input-group input-group-merge">
                  <span id="basic-icon-default-company2" class="input-group-text" ><i class="fa fa-money fa-lg"></i></span>

                    <input
                            type="text"
                            class="form-control"
                            id="amount"
                            placeholder="Amount"
                            aria-label="Amount"
                            aria-describedby="basic-icon-default-fullname2" />
                </div>

                <div class="mb-3">
                  <label class="form-label" for="amount">Duration </label>
                  <div class="input-group input-group-merge">
                    <span id="basic-icon-default-company21" class="input-group-text" ><i class="fa fa-money fa-lg"></i></span>

                    <select id="duration" class="select2 form-select">
                      <option value="">Select</option>
                      <option value="1">1 Months</option>
                      <option value="2">2 Months</option>
                      <option value="3">3 Months</option>
                      <option value="4">4 Months</option>
                      <option value="5">5 Months</option>
                      <option value="6">6 Months</option>
                      <option value="7">7 Months</option>
                      <option value="8">8 Months</option>
                      <option value="9">9 Months</option>
                      <option value="10">10 Months</option>
                      <option value="11">11 Months</option>
                      <option value="12">12 Months</option>

                    </select>
                  </div>




            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                Close
              </button>
              <button id="addPlanBtn" type="button" class="btn btn-primary">Save changes</button>
            </div>
          </div>
        </div>
      </div>

      <!--filter popup-->

      <!--filter popup-->

    </div>



  </div>
</div>
