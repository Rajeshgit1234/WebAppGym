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

        $('#attFrom').val(attJson.fromdate);
        $('#attTo').val(attJson.toDate);
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


    $("#searchAttBtn").click(function() {


        var attTo =  $('#attTo').val();
        var attFrom =  $('#attFrom').val();


        if(attTo && attFrom){

            from= attFrom;
            to=attTo;

            $.fn.loadUserData();

        }else{

            alert("Please enter details")
        }



    });


    $('#attFrom').on('input',function(e){

        var attFrom =  $('#attFrom').val();

        var date = new Date(attFrom.replace( /(\d{2})-(\d{2})-(\d{4})/, "$2/$1/$3"))
       //alert(date)
        date.setDate(date.getDate() + 15);
        var  endDate = (date).toISOString().split('T')[0];
        $('#attTo').val(endDate);
       // alert(date)
        /*var endDate = new Date();
        endDate.setDate(date.getDate()+15);
        endDate = (endDate).toISOString().split('T')[0];

        $('#attTo').val(endDate);*/


    });
    $('#attTo').on('input',function(e){

        var attTo =  $('#attTo').val();

        var date = new Date(attTo.replace( /(\d{2})-(\d{2})-(\d{4})/, "$2/$1/$3"))
        //alert(date)
        date.setDate(date.getDate() - 15);
        var  fromDate = (date).toISOString().split('T')[0];
        $('#attFrom').val(fromDate);
    });



    $.fn.loadNextSet =function (){


        $.fn.openLoader();


        var url = baseUrl+"/viewAttendanceMonth"

        var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"offset":(offset+10) ,"from":from,"to":to});
        $.ajax(settings).done(function (response) {
            console.log(response);
            $.fn.closeLoader();
            response = jQuery.parseJSON(response)

            if(response.status ) {
                $.fn.renderAttData((response));
                offset = offset+10;
            }

        });


    };
    $.fn.loadPrevSet =function (){

        if(offset!=0){


            $.fn.openLoader();


            var url = baseUrl+"/viewAttendanceMonth"

            var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id"),"offset":(offset-10) ,"from":from,"to":to});
            $.ajax(settings).done(function (response) {
                console.log(response);
                $.fn.closeLoader();
                response = jQuery.parseJSON(response)
                if(response.status ) {
                    $.fn.renderAttData(response);
                    offset = offset-10;
                }

            });

        }

    };


};