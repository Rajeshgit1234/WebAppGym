window.onload = function() {

    $(document).ready(function(){








        $.fn.loadQueryData();

    });


    $.fn.loadQueryData = function(){

        var url = baseUrl+"/loadGymEnq"

        var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"offset":offset });
        $.ajax(settings).done(function (response) {
            console.log(response);
            $.fn.closeLoader();

            $.fn.renderData(jQuery.parseJSON(response));
        });



    }

    $.fn.renderData = function(qryJson){

        // var expJson = JSON.parse(data)
        // $('#exptable').remove();
        // $('#exptable').append('<thead><tr><th>Expense</th><th>Amount</th><th>Added by</th><th>Added On</th><th>Actions</th></tr></thead>')
        //  $('#exptable').append('<tbody class="table-border-bottom-0"></tbody>')
        $(".pyClass").empty();


        if(qryJson.status){

            if(qryJson.enqJson.length!=0){

                $("#qryTableDv").css("display", "block");
                $.each( qryJson.enqJson, function( key, value ) {
                    //2024-08-15 11:10:14.456078
                    var created_date = moment(value.addedOn).format('YYYY-MM-DD');


                     $('#qrtable').append('<tr class="pyClass"> <td><i className="bx bx-user"></i><span className="fw-medium"> '+ value.phone + '</span></td><td>' + value.query + '</td><td>' + value.added + '</td><td>' + created_date + '</td><td><div class="dropdown"><button type="button" class="btn p-0 dropdown-toggle hide-arrow"   onclick="callEditAction('+key+')"><i class="bx bx-dots-vertical-rounded"></i></button><div  id="editAction_'+key+'" class="dropdown-menu"><a class="dropdown-item" href="javascript:void(0);" onclick="delQry('+value.id+')"><i class="bx bx-trash me-1"></i> Delete</a> </div></div></td></tr>')

                });
            } else {
                $("#qryTableDv").css("display", "block");

            }

        } else {

        }
        /* $('#exptable').append('<tr><td>my data</td><td>more data</td></tr>');*/




    }



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


    $.fn.loadNextSet =function (){


        $.fn.openLoader();


        var url = baseUrl+"/loadGymEnq"

        var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"offset":(offset+10) });
        $.ajax(settings).done(function (response) {
            console.log(response);
            $.fn.closeLoader();
            response = jQuery.parseJSON(response)
            if(response.status && response.profile.length>0) {
                $.fn.renderData(response);
                offset = offset+10;
            }

        });


    };
    $.fn.loadPrevSet =function (){

        if(offset!=0){

            $.fn.openLoader();


            var url = baseUrl+"/loadGymEnq"

            var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"offset":(offset-10) });
            $.ajax(settings).done(function (response) {
                console.log(response);
                $.fn.closeLoader();
                response = jQuery.parseJSON(response)
                if(response.status && response.profile.length>0) {
                    $.fn.renderData(response);
                    offset = offset-10;
                }

            });

        }

    };


    $.fn.delQryAction =function (id){

        if(confirm("Are you sure you want to delete ?")){

            var qry_id = id;

            var url = baseUrl+"/delGymEnq"

            var settings = $.fn.commonajaxCall(url,{ "qry_id": qry_id,"user": sessionStorage.getItem("user_id")});
            $.ajax(settings).done(function (response) {
                console.log(response);
                $.fn.loadQueryData();
            });



        }else{

            $.fn.loadActionDiv(id);
        }


    };


};