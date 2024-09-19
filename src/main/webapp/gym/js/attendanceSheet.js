window.onload = function() {

    $(document).ready(function(){





        $.fn.loadUserData();

    });


    $.fn.loadUserData = function(){


        var url = baseUrl+"/viewAttendanceMonth"

        var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"offset":offset ,"from":from,"to":to});
        $.ajax(settings).done(function (response) {
            console.log(response);
            $.fn.closeLoader();

            $.fn.renderAttData(jQuery.parseJSON(response));
        });


    }

    $.fn.renderAttData = function(attJson){

        // var expJson = JSON.parse(data)
        // $('#exptable').remove();
        // $('#exptable').append('<thead><tr><th>Expense</th><th>Amount</th><th>Added by</th><th>Added On</th><th>Actions</th></tr></thead>')
        //  $('#exptable').append('<tbody class="table-border-bottom-0"></tbody>')
        $("#attHeading").empty();
        $("#attRow").empty();


        if(attJson.status){

            if(attJson.doyJson.length!=0 && attJson.custJson.length!=0){

                var doyLen = attJson.doyJson.length;

                $("#attHeading").append("<th>Customer Name</th>");
                $.each( attJson.doyJson, function( key, value ) {

                    $("#attHeading").append('<th>'+ value.date + '</th>');



                });

                $.each( attJson.custJson, function( key, value ) {
                    $("#attRow").append('<tr>');
                    $("#attRow").append('<td>'+ value.cust_name + '</td>');
                    this.custid = value.cust_id;
                    var self = this;
                    $.each( attJson.doyJson, function( key, value ) {
                        var rwid = value.doy+"_"+self.custid;

                        $("#attRow").append(' <td><i id="att_'+ rwid + '" class="fa fa-times-circle text-danger" aria-hidden="true"></i></td>');
                    });
                    $("#attRow").append('</tr>');


                });


                $.each( attJson.attendance, function( key, value ) {

                    if(value.doy){

                        var id = "att_"+value.doy+"_"+value.userid;
                        //$("#" + id).removeClass('text-danger').addClass('text-success');
                        $("#" + id).removeClass('fa-times-circle text-danger').addClass('fa-check-circle text-success');
                    }


                });

            }

        } else {

        }
        /* $('#exptable').append('<tr><td>my data</td><td>more data</td></tr>');*/




    }




};