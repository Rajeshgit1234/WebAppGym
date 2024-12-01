window.onload = function() {

    $(document).ready(function(){




        $.fn.findDietPlans();

    });


    $.fn.findDietPlans = function(){

        var url = baseUrl+"/findDietPlans"

        var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"offset":offset });
        $.ajax(settings).done(function (response) {
            console.log(response);
            $.fn.closeLoader();

            $.fn.renderData(jQuery.parseJSON(response));
        });



    }

    $.fn.renderData = function(planJson){

        // var expJson = JSON.parse(data)
        // $('#exptable').remove();
        // $('#exptable').append('<thead><tr><th>Expense</th><th>Amount</th><th>Added by</th><th>Added On</th><th>Actions</th></tr></thead>')
        //  $('#exptable').append('<tbody class="table-border-bottom-0"></tbody>')
        $(".pyClass").empty();


        if(planJson.status){

            if(planJson.dietPlans.length!=0){

                $("#subTableDv").css("display", "block");
                $.each( planJson.dietPlans, function( key, value ) {
                    //2024-08-15 11:10:14.456078
                    var created_date = moment(value.created).format('YYYY-MM-DD');


                     $('#subtable').append('<tr class="pyClass"> <td>' +value.dietname+ '</td><td><i className="bx bx-user"></i><span className="fw-medium"><textarea style="border: none;height: auto;width: 100%"> '+ value.diet_details + '</textarea> </span></td><td>' +value.addedby+ '</td><td>' +created_date+ '</td><td><div class="dropdown"><button type="button" class="btn p-0 dropdown-toggle hide-arrow"   onclick="callEditAction('+key+')"><i class="bx bx-dots-vertical-rounded"></i></button><div  id="editAction_'+key+'" class="dropdown-menu"><a class="dropdown-item" href="javascript:void(0);" onclick="delPlan('+value.diet_id+')"><i class="bx bx-trash me-1"></i> Delete</a> </div></div></td></tr>')

                });
            } else {
                $("#subTableDv").css("display", "block");

            }

        } else {

        }
        /* $('#exptable').append('<tr><td>my data</td><td>more data</td></tr>');*/




    }


    $("#addPlanBtn").click(function() {


        var diet_plan =  $('#diet_plan').val();
        var dietName =  $('#dietName').val();


        if(diet_plan && dietName) {


            var url = baseUrl+"/addNewDietPlan"

            var settings = $.fn.commonajaxCall(url,{"gym":sessionStorage.getItem("gym_id"),"dietDetails":diet_plan,"dietname":dietname,"addedBy":sessionStorage.getItem("user_id")});
            $.ajax(settings).done(function (response) {
                console.log(response);
                response = jQuery.parseJSON(response)
                if(response.status) {
                    $("#alertDiv").html(response.statusDesc)
                    $("#alertDiv").addClass('alert alert-success');
                    $("#alertDiv").css("display", "block");
                    setTimeout(
                        function () {
                            $("#alertDiv").css("display", "none");
                            $("#userAddModal").modal('hide');
                            $('body').removeClass('modal-open');
                            $('.modal-backdrop').remove();
                        }, 2000);

                    $.fn.findDietPlans();
                }else{

                    $("#alertDiv").html(response.statusDesc)
                    $("#alertDiv").addClass('alert alert-success');
                    $("#alertDiv").css("display", "block");
                    setTimeout(
                        function () {
                            $("#alertDiv").css("display", "none");

                        }, 2000);
                }
            });



        }else {
            alert("Please enter all details");
        }

    });







    $.fn.loadNextSet =function (){


        $.fn.openLoader();


        var url = baseUrl+"/findDietPlans"

        var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"offset":(offset+10) });
        $.ajax(settings).done(function (response) {
            console.log(response);
            $.fn.closeLoader();
            response = jQuery.parseJSON(response)
            if(response.status && response.dietPlans.length>0) {
                $.fn.renderData(response);
                offset = offset+10;
            }

        });


    };
    $.fn.loadPrevSet =function (){

        if(offset!=0){

            $.fn.openLoader();


            var url = baseUrl+"/findDietPlans"

            var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"offset":(offset-10) });
            $.ajax(settings).done(function (response) {
                console.log(response);
                $.fn.closeLoader();
                response = jQuery.parseJSON(response)
                if(response.status && response.dietPlans.length>0) {
                    $.fn.renderData(response);
                    offset = offset-10;
                }

            });

        }

    };

    $.fn.loadActionDiv =function (id){

        editKey = -1;
        var div = "editAction_"+id;

        if(!$("#editAction_"+id).is(':visible'))
        {


            $(".dropdown-menu").css("display", "none");
            $("#editAction_"+id).css("display", "block");
        }else{
            $("#editAction_"+id).css("display", "none");
        }



    };


    $.fn.delPlanAction =function (id){

        if(confirm("Are you sure you want to delete ?")){



           var url = baseUrl+"/delDietPlans"

            var settings = $.fn.commonajaxCall(url,{ "diet_id": id,"user": sessionStorage.getItem("user_id")});
            $.ajax(settings).done(function (response) {
                console.log(response);
                response = jQuery.parseJSON(response)
                alert(response.statusDesc)
                $.fn.findDietPlans();
            });



        }else{

            $.fn.loadActionDiv(id);
        }


    };


};