window.onload = function() {

    $(document).ready(function(){


        var piechartoptionslabels = [];
        var piechartoptionsvalues = [];


        $.each(expData, function( index, value ) {

            piechartoptionslabels.push(value.expItem);
            piechartoptionsvalues.push(value.amount);


        })

       /* var url = baseUrl+"/loadExpSpark"

        var settings = $.fn.commonajaxCall(url,{ "gym_id": sessionStorage.getItem("gym_id")});
        $.ajax(settings).done(function (response) {
            response= jQuery.parseJSON(response)
            $.fn.closeLoader();

            if(response.status){

                piechartoptionslabels = [];
                piechartoptionsvalues = [];

                $.each( response.expData, function( key, value ) {
                    //var created_date = $.format.date(value.created_on, "dd/MM/yyyy hh:mm")

                    piechartoptionslabels.push(value.expItem);
                    piechartoptionsvalues.push(value.amount);


                });

                piechart.updateSeries([{
                    series: piechartoptionsvalues
                }])
                /!*piechart.updateOptions([{
                    name: 'piechartseries',
                    data: piechartoptionsvalues
                }]);*!/



            }

        });
*/


        var piechartoptions ={
            series: piechartoptionsvalues,
            chart: {
                width: 380,
                type: 'pie',
            },
            labels: piechartoptionslabels,
            responsive: [{
                breakpoint: 480,
                options: {
                    chart: {
                        width: 200
                    },
                    legend: {
                        position: 'bottom'
                    }
                }
            }],
            noData: {
                text: 'Loading...'
            }
        };




        // Create the chart
        var piechart = new ApexCharts(document.querySelector("#piechart"), piechartoptions);

        // Render the chart
        piechart.render();

        var expoptionsData = [47, 45, 54];
        var payoptionsData = [150, 145, 15];
        var expoptionsDataLabel = ['2018-09-01', '2018-09-02', '2018-09-03'];
        var payoptionsDataLabel = ['2018-09-01', '2018-09-02', '2018-09-03'];


        var expoptions = {
            series: [{
                data: (expoptionsData)
            }],
            chart: {
                type: 'area',
                height: 160,
                sparkline: {
                    enabled: true
                },
            },
            stroke: {
                curve: 'straight'
            },
            fill: {
                opacity: 0.3,
            },
            labels: expoptionsDataLabel,
            yaxis: {
                min: 0
            },
            xaxis: {
                type: 'datetime',
            },
            colors: ['#DCE6EC'],
            title: {
                text: exp_total,
                offsetX: 0,
                style: {
                    fontSize: '24px',
                }
            },
            subtitle: {
                text: 'Expenses',
                offsetX: 0,
                style: {
                    fontSize: '14px',
                }
            }
        };
        new ApexCharts(document.querySelector("#expspark"), expoptions).render();



        var payoptions = {
            chart: {
                id: 'payments',
                group: 'sparklines',
                type: 'area',
                height: 160,
                sparkline: {
                    enabled: true
                },
            },
            stroke: {
                curve: 'straight'
            },
            fill: {
                opacity: 1,
            },
            series: [{
                name: 'payments',
                data: (payoptionsData)
            }],
            labels: payoptionsDataLabel,
            xaxis: {
                type: 'datetime',
            },
            yaxis: {
                min: 0
            },
            colors: ['#DCE6EC'],
            //colors: ['#5564BE'],
            title: {
                text: pay_total,
                offsetX: 30,
                style: {
                    fontSize: '24px',
                    cssClass: 'apexcharts-yaxis-title'
                }
            },
            subtitle: {
                text: 'payments',
                offsetX: 30,
                style: {
                    fontSize: '14px',
                    cssClass: 'apexcharts-yaxis-title'
                }
            }
        }
        new ApexCharts(document.querySelector("#payspark"), payoptions).render();





    });





};