window.onload = function() {

    $(document).ready(function(){








        $.fn.loadNotificationData();

    });


    $.fn.loadNotificationData = function(){


        var response = sessionStorage.getItem('notification')
        var  notificationData = jQuery.parseJSON(response)


        if(notificationData.notification_count!=0){

            $("#notificationDiv").css("display", "block");
            $("#notificationDiv").html("");
            $.each( notificationData.notificationJson.dietPlan, function( key, value ) {
                //2024-08-15 11:10:14.456078



                // $('#notificationDiv').append('<tr class="pyClass"> <td><i className="bx bx-user"></i><span className="fw-medium"> '+ value.phone + '</span></td><td>' + value.query + '</td><td>' + value.added + '</td><td>' + created_date + '</td><td><div class="dropdown"><button type="button" class="btn p-0 dropdown-toggle hide-arrow"   onclick="callEditAction('+key+')"><i class="bx bx-dots-vertical-rounded"></i></button><div  id="editAction_'+key+'" class="dropdown-menu"><a class="dropdown-item" href="javascript:void(0);" onclick="delQry('+value.id+')"><i class="bx bx-trash me-1"></i> Delete</a> </div></div></td></tr>')
                $('#notificationDiv').append('<div class="card notification-card notification-invitation"><div class="card-body"><table><tr><td style="width:70%"><div class="card-title"> Diet plan  of user '+value.name +' not  added. </div></td><td style="width:30%"><a href="mapDiet" class="btn btn-primary">Add</a></td></tr></table></div></div>')

            });
            $.each( notificationData.notificationJson.payemntPending, function( key, value ) {
                //2024-08-15 11:10:14.456078



               // $('#notificationDiv').append('<tr class="pyClass"> <td><i className="bx bx-user"></i><span className="fw-medium"> '+ value.phone + '</span></td><td>' + value.query + '</td><td>' + value.added + '</td><td>' + created_date + '</td><td><div class="dropdown"><button type="button" class="btn p-0 dropdown-toggle hide-arrow"   onclick="callEditAction('+key+')"><i class="bx bx-dots-vertical-rounded"></i></button><div  id="editAction_'+key+'" class="dropdown-menu"><a class="dropdown-item" href="javascript:void(0);" onclick="delQry('+value.id+')"><i class="bx bx-trash me-1"></i> Delete</a> </div></div></td></tr>')
                $('#notificationDiv').append('<div class="card notification-card notification-invitation"><div class="card-body"><table><tr><td style="width:70%"><div class="card-title"> Payment of user '+value.name +' has expired. Please renew the payments</div></td><td style="width:30%"><a href="markpayment" class="btn btn-primary">Add</a></td></tr></table></div></div>')

            });
        } else {
            $("#notificationDiv").css("display", "block");

        }


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





};