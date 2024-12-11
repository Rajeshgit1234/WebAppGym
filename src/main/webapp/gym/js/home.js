window.onload = function() {

    $(document).ready(function(){


        var piechartoptionslabels = [];
        var piechartoptionsvalues = [];

        /*var payoptionsDataLabel = ['2018-09-01', '2018-09-02', '2018-09-03'];
        var payoptionsData = [150, 145, 15];*/
        var payoptionsDataLabel = [];
        var payoptionsData = [];

        $.each(expData, function( index, value ) {

            piechartoptionslabels.push(value.expItem);
            piechartoptionsvalues.push(value.amount);


        })

        $.each(payList, function( index, value ) {

            payoptionsDataLabel.push(value.pay_date);
            payoptionsData.push(value.pay_amount);


        })




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


        var areachartOptions = {
            chart: {
                height: 280,
                type: "area"
            },
            dataLabels: {
                enabled: false
            },
            series: [
                {
                    name: "Series 1",
                    data: payoptionsData
                }
            ],
            fill: {
                type: "gradient",
                gradient: {
                    shadeIntensity: 1,
                    opacityFrom: 0.7,
                    opacityTo: 0.9,
                    stops: [0, 90, 100]
                }
            },
            xaxis: {
                categories: payoptionsDataLabel
            }
        };


        // Create the chart
       var piechart = new ApexCharts(document.querySelector("#piechart"), piechartoptions);

        // Render the chart
       piechart.render();

        var areachart = new ApexCharts(document.querySelector("#areachart"), areachartOptions);

        areachart.render();


        var expoptionsData = [47, 45, 54];

        var expoptionsDataLabel = ['2018-09-01', '2018-09-02', '2018-09-03'];


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