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
              <h5 class="modal-title" id="exampleModalLabel4">Add Diet Plan</h5>
              <button
                      type="button"
                      class="btn-close"
                      data-bs-dismiss="modal"
                      aria-label="Close"></button>
            </div>
            <div class="alert alert-success" id="alertDiv" style="margin: 1%;display: none" role="alert"></div>

            <div class="card-body">
              <div class="mb-3">
                <label class="form-label" for="diet_plan">Diet Name</label>
                <div class="input-group input-group-merge">
                                            <span id="basic-icon-default-diet" class="input-group-text"
                                            ><i class="fa fa-pencil fa-lg"></i
                                            ></span>
                  <input
                          type="date"
                          class="form-control"
                          id="dietName"
                          placeholder="Date"
                          aria-label="Date"
                          aria-describedby="basic-icon-default-fullname2" />

                </div>
              </div>
              <div class="mb-3">
                <label class="form-label" for="diet_plan">Diet details</label>
                <div class="input-group input-group-merge">
                                            <span id="basic-icon-default-fullname2" class="input-group-text"
                                            ><i class="fa fa-pencil fa-lg"></i
                                            ></span>
                  <textarea id="diet_plan" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>

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
