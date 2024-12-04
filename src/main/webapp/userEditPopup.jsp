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
              <h5 class="modal-title" id="exampleModalLabel4">Edit User</h5>
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

             <%-- <div class="mb-3">
                <label class="form-label" for="username">Username</label>
                <div class="input-group input-group-merge">
                                            <span id="basic-icon-default-fullname2" class="input-group-text"
                                            ><i class="bx bx-calendar"></i
                                            ></span>
                  <input
                          type="text"
                          class="form-control"
                          id="username"
                          placeholder="Username"
                          aria-label="Username"
                          aria-describedby="basic-icon-default-fullname2" />
                  <button class="btn btn-outline-primary" type="button" id="usernameavailability">Check availability</button>
                </div>
              </div>--%>
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
              </div><div class="mb-3">
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


            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                Close
              </button>
              <button id="editUserBtn" type="button" class="btn btn-primary">Save changes</button>
            </div>
          </div>
        </div>
      </div>

      <!--filter popup-->

      <!--filter popup-->

    </div>



  </div>
</div>
