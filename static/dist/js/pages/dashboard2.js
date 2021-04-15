$(function () {
  'use strict'
  /* ChartJS
   * -------
   * Here we will create a few charts using ChartJS
   */

  //-----------------------
  //- TRENDS CHART -
  //-----------------------

  var trendsChartCanvas = $('#trendsChart').get(0).getContext('2d')
  var trendsChartData = {
    labels  : iot_data[0].dates,
    datasets: [
      {
        label               : 'SPY',
        backgroundColor     : 'transparent',
        borderColor         : '#1E90FF',
        pointRadius         : true,
        data                : iot_data[0].values
      },
      {
        label               : 'Recession',
        backgroundColor     : 'transparent',
        borderColor         : '#FF0000',
        pointRadius         : true,
        data                : iot_data[1].values
      },
      {
        label               : 'COVID',
        backgroundColor     : 'transparent',
        borderColor         : '#008000',
        pointRadius         : true,
        data                : iot_data[2].values
      },
    ]
  }

  var trendsChartOptions = {
    maintainAspectRatio : false,
    responsive : true,
    legend: {
      display: true,
    },
    tooltips: {
      enabled: true,
    },
    scales: {
      xAxes: [{
        gridLines : {
          display : false,
        },
        type: 'time',
        distribution: 'series',
        time: {
          unit: 'week', 
          displayFormats: {
            month: 'MMM YYYY'
          }
        },
        scaleLabel: {
            display: false,
          },
          ticks: {
            autoSkip: false,
            maxTicksLimit: 12, 
            maxRotation: 0,
            minRotation: 0
          }
        }
      ],
      yAxes: [{
        gridLines : {
          display : true,
        }, 
        scaleLabel: {
          display: false,
        },
        ticks: {
          autoSkip: false,
          maxTicksLimit: 10
        }
      }]
    }
  }

  
  // This will get the first returned node in the jQuery collection.
  var trendsCharts = new Chart(trendsChartCanvas, { 
    type: 'line', 
    data: trendsChartData, 
    options: trendsChartOptions
  }
)
})

$(function () {
  'use strict'
  //-----------------------
  //- MONTHLY price CHART -
  //-----------------------

  // Get context with jQuery - using jQuery's .get() method.
  var priceChartCanvas = $('#priceChart').get(0).getContext('2d')
  
  var priceChart1DData = {
    labels  : price_data_1d.dates,
    datasets: [
      {
        label               : 'Price',
        backgroundColor     : 'rgba(113, 159, 233,0.5)',
        borderColor         : 'rgba(60,141,188,1)',
        pointRadius          : true,
        pointColor          : '#ff4242',
        pointStrokeColor    : 'rgba(255, 66, 66,1)',
        pointHighlightFill  : '##ff4242',
        pointHighlightStroke: 'rgba(255, 66, 66,1)',
        data                : price_data_1d.prices
      },
      {
        label               : 'Sentiment',
        backgroundColor     : 'rgba(0, 0, 0, 0.7)',
        borderColor         : '#000',
        pointRadius         : true,
        pointColor          : '#000',
        pointStrokeColor    : 'rgba(255, 66, 66,1)',
        pointHighlightFill  : '#000',
        pointHighlightStroke: 'rgba(255, 66, 66,1)',
        data                : price_data_1d.sentiments
      },
    ]
  }

  var priceChart5DData = {
    labels  : price_data_5d.dates,
    datasets: [
      {
        label               : 'Price',
        backgroundColor     : 'rgba(113, 159, 233,0.5)',
        borderColor         : 'rgba(60,141,188,1)',
        pointRadius          : true,
        pointColor          : '#ff4242',
        pointStrokeColor    : 'rgba(255, 66, 66,1)',
        pointHighlightFill  : '##ff4242',
        pointHighlightStroke: 'rgba(255, 66, 66,1)',
        data                : price_data_5d.prices
      },
      {
        label               : 'Sentiment',
        backgroundColor     : 'rgba(0, 0, 0, 0.7)',
        borderColor         : '#000',
        pointRadius         : true,
        pointColor          : '#000',
        pointStrokeColor    : 'rgba(255, 66, 66,1)',
        pointHighlightFill  : '#000',
        pointHighlightStroke: 'rgba(255, 66, 66,1)',
        data                : price_data_5d.sentiments
      },
    ]
  }

  var priceChart1MData = {
    labels  : price_data_1m.dates,
    datasets: [
      {
        label               : 'Price',
        backgroundColor     : 'rgba(113, 159, 233,0.5)',
        borderColor         : 'rgba(60,141,188,1)',
        pointRadius          : true,
        pointColor          : '#ff4242',
        pointStrokeColor    : 'rgba(255, 66, 66,1)',
        pointHighlightFill  : '##ff4242',
        pointHighlightStroke: 'rgba(255, 66, 66,1)',
        data                : price_data_1m.prices
      },
      {
        label               : 'Sentiment',
        backgroundColor     : 'rgba(0, 0, 0, 0.7)',
        borderColor         : '#000',
        pointRadius         : true,
        pointColor          : '#000',
        pointStrokeColor    : 'rgba(255, 66, 66,1)',
        pointHighlightFill  : '#000',
        pointHighlightStroke: 'rgba(255, 66, 66,1)',
        data                : price_data_1m.sentiments
      },
    ]
  }

  var priceChart3MData = {
    labels  : price_data_3m.dates,
    datasets: [
      {
        label               : 'Price',
        backgroundColor     : 'rgba(113, 159, 233,0.5)',
        borderColor         : 'rgba(60,141,188,1)',
        pointRadius          : true,
        pointColor          : '#ff4242',
        pointStrokeColor    : 'rgba(255, 66, 66,1)',
        pointHighlightFill  : '##ff4242',
        pointHighlightStroke: 'rgba(255, 66, 66,1)',
        data                : price_data_3m.prices
      },
      {
        label               : 'Sentiment',
        backgroundColor     : 'rgba(0, 0, 0, 0.7)',
        borderColor         : '#000',
        pointRadius         : true,
        pointColor          : '#000',
        pointStrokeColor    : 'rgba(255, 66, 66,1)',
        pointHighlightFill  : '#000',
        pointHighlightStroke: 'rgba(255, 66, 66,1)',
        data                : price_data_3m.sentiments
      },
    ]
  }

  var priceChart6MData = {
    labels  : price_data_6m.dates,
    datasets: [
      {
        label               : 'Price',
        backgroundColor     : 'rgba(113, 159, 233,0.5)',
        borderColor         : 'rgba(60,141,188,1)',
        pointRadius          : true,
        pointColor          : '#ff4242',
        pointStrokeColor    : 'rgba(255, 66, 66,1)',
        pointHighlightFill  : '##ff4242',
        pointHighlightStroke: 'rgba(255, 66, 66,1)',
        data                : price_data_6m.prices
      },
      {
        label               : 'Sentiment',
        backgroundColor     : 'rgba(0, 0, 0, 0.7)',
        borderColor         : '#000',
        pointRadius         : true,
        pointColor          : '#000',
        pointStrokeColor    : 'rgba(255, 66, 66,1)',
        pointHighlightFill  : '#000',
        pointHighlightStroke: 'rgba(255, 66, 66,1)',
        data                : price_data_6m.sentiments
      },
    ]
  }


  var priceChartYTDData = {
    labels  : price_data_ytd.dates,
    datasets: [
      {
        label               : 'Price',
        backgroundColor     : 'rgba(113, 159, 233,0.5)',
        borderColor         : 'rgba(60,141,188,1)',
        pointRadius          : true,
        pointColor          : '#ff4242',
        pointStrokeColor    : 'rgba(255, 66, 66,1)',
        pointHighlightFill  : '##ff4242',
        pointHighlightStroke: 'rgba(255, 66, 66,1)',
        data                : price_data_ytd.prices
      },
      {
        label               : 'Sentiment',
        backgroundColor     : 'rgba(0, 0, 0, 0.7)',
        borderColor         : '#000',
        pointRadius         : true,
        pointColor          : '#000',
        pointStrokeColor    : 'rgba(255, 66, 66,1)',
        pointHighlightFill  : '#000',
        pointHighlightStroke: 'rgba(255, 66, 66,1)',
        data                : price_data_ytd.sentiments
      },
    ]
  }

  var priceChart1YRData = {
    labels  : price_data_1yr.dates,
    datasets: [
      {
        label               : 'Price',
        backgroundColor     : 'rgba(113, 159, 233,0.5)',
        borderColor         : 'rgba(60,141,188,1)',
        pointRadius          : true,
        pointColor          : '#ff4242',
        pointStrokeColor    : 'rgba(255, 66, 66,1)',
        pointHighlightFill  : '##ff4242',
        pointHighlightStroke: 'rgba(255, 66, 66,1)',
        data                : price_data_1yr.prices
      },
      {
        label               : 'Sentiment',
        backgroundColor     : 'rgba(0, 0, 0, 0.7)',
        borderColor         : '#000',
        pointRadius         : true,
        pointColor          : '#000',
        pointStrokeColor    : 'rgba(255, 66, 66,1)',
        pointHighlightFill  : '#000',
        pointHighlightStroke: 'rgba(255, 66, 66,1)',
        data                : price_data_1yr.sentiments
      },
    ]
  }

  var priceChart3YRData = {
    labels  : price_data_3yr.dates,
    datasets: [
      {
        label               : 'Price',
        backgroundColor     : 'rgba(113, 159, 233,0.5)',
        borderColor         : 'rgba(60,141,188,1)',
        pointRadius          : true,
        pointColor          : '#ff4242',
        pointStrokeColor    : 'rgba(255, 66, 66,1)',
        pointHighlightFill  : '##ff4242',
        pointHighlightStroke: 'rgba(255, 66, 66,1)',
        data                : price_data_3yr.prices
      },
      {
        label               : 'Sentiment',
        backgroundColor     : 'rgba(0, 0, 0, 0.7)',
        borderColor         : '#000',
        pointRadius         : true,
        pointColor          : '#000',
        pointStrokeColor    : 'rgba(255, 66, 66,1)',
        pointHighlightFill  : '#000',
        pointHighlightStroke: 'rgba(255, 66, 66,1)',
        data                : price_data_3yr.sentiments
      },
    ]
  }

  var priceChart5YRData = {
    labels  : price_data_5yr.dates,
    datasets: [
      {
        label               : 'Price',
        backgroundColor     : 'rgba(113, 159, 233,0.5)',
        borderColor         : 'rgba(60,141,188,1)',
        pointRadius          : true,
        pointColor          : '#ff4242',
        pointStrokeColor    : 'rgba(255, 66, 66,1)',
        pointHighlightFill  : '##ff4242',
        pointHighlightStroke: 'rgba(255, 66, 66,1)',
        data                : price_data_5yr.prices
      },
      {
        label               : 'Sentiment',
        backgroundColor     : 'rgba(0, 0, 0, 0.7)',
        borderColor         : '#000',
        pointRadius         : true,
        pointColor          : '#000',
        pointStrokeColor    : 'rgba(255, 66, 66,1)',
        pointHighlightFill  : '#000',
        pointHighlightStroke: 'rgba(255, 66, 66,1)',
        data                : price_data_5yr.sentiments
      },
    ]
  }

  var priceChartMAXData = {
    labels  : price_data_max.dates,
    datasets: [
      {
        label               : 'Price',
        backgroundColor     : 'rgba(113, 159, 233,0.5)',
        borderColor         : 'rgba(60,141,188,1)',
        pointRadius          : true,
        pointColor          : '#ff4242',
        pointStrokeColor    : 'rgba(255, 66, 66,1)',
        pointHighlightFill  : '##ff4242',
        pointHighlightStroke: 'rgba(255, 66, 66,1)',
        data                : price_data_max.prices
      },
      {
        label               : 'Sentiment',
        backgroundColor     : 'rgba(0, 0, 0, 0.7)',
        borderColor         : '#000',
        pointRadius         : true,
        pointColor          : '#000',
        pointStrokeColor    : 'rgba(255, 66, 66,1)',
        pointHighlightFill  : '#000',
        pointHighlightStroke: 'rgba(255, 66, 66,1)',
        data                : price_data_max.sentiments
      },
    ]
  }

  var priceChart1DOptions = {
    maintainAspectRatio : false,
    responsive : true,
    legend: {
      display: true
    },
    tooltips: {
      enabled: true,
    },
    scales: {
      xAxes: [{
        type: 'time',
        distribution: 'series',
        scaleLabel: {
            display: true,
          },
          ticks: {
            autoSkip: false,
            maxTicksLimit: 8, 
            maxRotation: 0,
            minRotation: 0
          }
        }],
      yAxes: [{
        gridLines : {
          display : true,
        }
      }]
    }
  }

  var priceChart5DOptions = {
    maintainAspectRatio : false,
    responsive : true,
    legend: {
      display: true
    },
    tooltips: {
      enabled: true,
    },
    scales: {
      xAxes: [{
        type: 'time',
        distribution: 'series',
        time: {
          unit: 'day', 
          displayFormats: {
            day: 'MMM D'
          }
        },
        scaleLabel: {
            display: true,
          },
          ticks: {
            autoSkip: false,
            maxTicksLimit: 5, 
            maxRotation: 0,
            minRotation: 0
          }
        }],
      yAxes: [{
        gridLines : {
          display : true,
        }
      }]
    }
  }

  var priceChart1MOptions = {
    maintainAspectRatio : false,
    responsive : true,
    legend: {
      display: true
    },
    tooltips: {
      enabled: true,
    },
    scales: {
      xAxes: [{
        type: 'time',
        distribution: 'series',
        time: {
          unit: 'day', 
          displayFormats: {
            day: 'MMM D'
          }
        },
        scaleLabel: {
            display: true,
          },
          ticks: {
            autoSkip: true,
            maxTicksLimit: 12, 
            maxRotation: 0,
            minRotation: 0
          }
        }],
      yAxes: [{
        gridLines : {
          display : true,
        }
      }]
    }
  }

  var priceChartMAXOptions = {
    maintainAspectRatio : false,
    responsive : true,
    legend: {
      display: true
    },
    tooltips: {
      enabled: true,
    },
    scales: {
      xAxes: [{
        type: 'time', /* <--- this */
        time: {
          unit: 'year'
        },
        scaleLabel: {
            display: true,
          },
          ticks: {
            autoSkip: true,
            maxTicksLimit: 12, 
            maxRotation: 0,
            minRotation: 0
          }
        }],
      yAxes: [{
        gridLines : {
          display : true,
        }
      }]
    }
  }

  var priceChartOptions = {
    maintainAspectRatio : false,
    responsive : true,
    legend: {
      display: true
    },
    tooltips: {
      enabled: true,
    },
    scales: {
      xAxes: [{
        type: 'time', /* <--- this */
        time: {
          unit: 'week'
        },
        scaleLabel: {
            display: true,
          },
          ticks: {
            autoSkip: true,
            maxTicksLimit: 12, 
            maxRotation: 0,
            minRotation: 0
          }
        }],
      yAxes: [{
        gridLines : {
          display : true,
        }
      }]
    }
  }
  

  // This will get the first returned node in the jQuery collection.
  var priceCharts = new Chart(priceChartCanvas, { 
      type: 'line', 
      data: priceChart5DData, 
      options: priceChart1DOptions
    }
  )

var btnContainer = document.getElementById("periodMenu");

// Get all buttons with class="btn" inside the container
var btns = btnContainer.getElementsByClassName("btn btn-tool");

// Loop through the buttons and add the active class to the current/clicked button
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function() {
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}

$("#1d").on("click", function() {
  priceCharts.destroy();
  priceCharts = new Chart(priceChartCanvas, { 
    type: 'line', 
    data: priceChart1DData, 
    options: priceChart1DOptions
  })
});

$("#5d").on("click", function() {
  priceCharts.destroy();
  priceCharts = new Chart(priceChartCanvas, { 
    type: 'line', 
    data: priceChart5DData, 
    options: priceChart5DOptions
  })
});

$("#1m").on("click", function() {
  priceCharts.destroy();
  priceCharts = new Chart(priceChartCanvas, { 
    type: 'line', 
    data: priceChart1MData, 
    options: priceChart1MOptions
  })
});

$("#3m").on("click", function() {
  priceCharts.destroy();
  priceCharts = new Chart(priceChartCanvas, { 
    type: 'line', 
    data: priceChart3MData, 
    options: priceChartOptions
  })
});

$("#6m").on("click", function() {
  priceCharts.destroy();
  priceCharts = new Chart(priceChartCanvas, { 
    type: 'line', 
    data: priceChart6MData, 
    options: priceChartOptions
  })
});

$("#ytd").on("click", function() {
    priceCharts.destroy();
    priceCharts = new Chart(priceChartCanvas, { 
      type: 'line', 
      data: priceChartYTDData, 
      options: priceChartOptions
    })
});

$("#1yr").on("click", function() {
  priceCharts.destroy();
  priceCharts = new Chart(priceChartCanvas, { 
    type: 'line', 
    data: priceChart1YRData, 
    options: priceChartOptions
  })
});

$("#3yr").on("click", function() {
  priceCharts.destroy();
  priceCharts = new Chart(priceChartCanvas, { 
      type: 'line', 
      data: priceChart3YRData, 
      options: priceChartMAXOptions
    })
});

$("#5yr").on("click", function() {
  priceCharts.destroy();
  priceCharts = new Chart(priceChartCanvas, { 
    type: 'line', 
    data: priceChart5YRData, 
    options: priceChartMAXOptions
  })
});

$("#max").on("click", function() {
  priceCharts.destroy();
  priceCharts = new Chart(priceChartCanvas, { 
      type: 'line', 
      data: priceChartMAXData, 
      options: priceChartMAXOptions
    })
});

 


  //---------------------------
  //- END MONTHLY price CHART -
  //---------------------------

  //-------------
  //- PIE CHART -
  //-------------
  // Get context with jQuery - using jQuery's .get() method.
    var pieChartCanvas = $('#pieChart').get(0).getContext('2d')
    var pieData        = {
      labels: [
          'Chrome', 
          'IE',
          'FireFox', 
          'Safari', 
          'Opera', 
          'Navigator', 
      ],
      datasets: [
        {
          data: [700,500,400,600,300,100],
          backgroundColor : ['#f56954', '#00a65a', '#f39c12', '#00c0ef', '#3c8dbc', '#d2d6de'],
        }
      ]
    }
    var pieOptions     = {
      legend: {
        display: false
      }
    }
    //Create pie or douhnut chart
    // You can switch between pie and douhnut using the method below.
    var pieChart = new Chart(pieChartCanvas, {
      type: 'doughnut',
      data: pieData,
      options: pieOptions      
    })

  //-----------------
  //- END PIE CHART -
  //-----------------

  /* jVector Maps
   * ------------
   * Create a world map with markers
   */
  $('#world-map-markers').mapael({
      map: {
        name : "usa_states",
        zoom: {
          enabled: true,
          maxLevel: 10
        },
      },
    }
  );

  // $('#world-map-markers').vectorMap({
  //   map              : 'world_en',
  //   normalizeFunction: 'polynomial',
  //   hoverOpacity     : 0.7,
  //   hoverColor       : false,
  //   backgroundColor  : 'transparent',
  //   regionStyle      : {
  //     initial      : {
  //       fill            : 'rgba(210, 214, 222, 1)',
  //       'fill-opacity'  : 1,
  //       stroke          : 'none',
  //       'stroke-width'  : 0,
  //       'stroke-opacity': 1
  //     },
  //     hover        : {
  //       'fill-opacity': 0.7,
  //       cursor        : 'pointer'
  //     },
  //     selected     : {
  //       fill: 'yellow'
  //     },
  //     selectedHover: {}
  //   },
  //   markerStyle      : {
  //     initial: {
  //       fill  : '#00a65a',
  //       stroke: '#111'
  //     }
  //   },
  //   markers          : [
  //     {
  //       latLng: [41.90, 12.45],
  //       name  : 'Vatican City'
  //     },
  //     {
  //       latLng: [43.73, 7.41],
  //       name  : 'Monaco'
  //     },
  //     {
  //       latLng: [-0.52, 166.93],
  //       name  : 'Nauru'
  //     },
  //     {
  //       latLng: [-8.51, 179.21],
  //       name  : 'Tuvalu'
  //     },
  //     {
  //       latLng: [43.93, 12.46],
  //       name  : 'San Marino'
  //     },
  //     {
  //       latLng: [47.14, 9.52],
  //       name  : 'Liechtenstein'
  //     },
  //     {
  //       latLng: [7.11, 171.06],
  //       name  : 'Marshall Islands'
  //     },
  //     {
  //       latLng: [17.3, -62.73],
  //       name  : 'Saint Kitts and Nevis'
  //     },
  //     {
  //       latLng: [3.2, 73.22],
  //       name  : 'Maldives'
  //     },
  //     {
  //       latLng: [35.88, 14.5],
  //       name  : 'Malta'
  //     },
  //     {
  //       latLng: [12.05, -61.75],
  //       name  : 'Grenada'
  //     },
  //     {
  //       latLng: [13.16, -61.23],
  //       name  : 'Saint Vincent and the Grenadines'
  //     },
  //     {
  //       latLng: [13.16, -59.55],
  //       name  : 'Barbados'
  //     },
  //     {
  //       latLng: [17.11, -61.85],
  //       name  : 'Antigua and Barbuda'
  //     },
  //     {
  //       latLng: [-4.61, 55.45],
  //       name  : 'Seychelles'
  //     },
  //     {
  //       latLng: [7.35, 134.46],
  //       name  : 'Palau'
  //     },
  //     {
  //       latLng: [42.5, 1.51],
  //       name  : 'Andorra'
  //     },
  //     {
  //       latLng: [14.01, -60.98],
  //       name  : 'Saint Lucia'
  //     },
  //     {
  //       latLng: [6.91, 158.18],
  //       name  : 'Federated States of Micronesia'
  //     },
  //     {
  //       latLng: [1.3, 103.8],
  //       name  : 'Singapore'
  //     },
  //     {
  //       latLng: [1.46, 173.03],
  //       name  : 'Kiribati'
  //     },
  //     {
  //       latLng: [-21.13, -175.2],
  //       name  : 'Tonga'
  //     },
  //     {
  //       latLng: [15.3, -61.38],
  //       name  : 'Dominica'
  //     },
  //     {
  //       latLng: [-20.2, 57.5],
  //       name  : 'Mauritius'
  //     },
  //     {
  //       latLng: [26.02, 50.55],
  //       name  : 'Bahrain'
  //     },
  //     {
  //       latLng: [0.33, 6.73],
  //       name  : 'São Tomé and Príncipe'
  //     }
  //   ]
  // })

})
