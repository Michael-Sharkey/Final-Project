$(document).on('turbolinks:load', function() {

  $.ajax({
    type: 'GET',
    contentType: 'application/json; charset=utf-8',
    url: '../graphs/polar',
    dataType: 'json',
    success: function(data) {
      drawBubble(data);
    },
    failure: function(result) {
      error();
    }
  });

  function error() {
    console.log("Something went wrong!");
  }

  function drawBubble(data) {
    console.log(data);
    var time1 = moment(data[0][0]).format("MM-DD-YY");
    var time2 = moment(data[0][1]).format("MM-DD-YY")

    var ctx = document.getElementById("workingWeights");

    var bubble = new Chart(ctx, {
      type: 'line',
      data: {
        datasets: [{
          label: 'Bench Press',
          data: [{
              x: time1,
              y: 2
            },
            {
              x: "01-25-18",
              y: 5
            }
          ]
        }]
      },
      options: {
        scales: {
          xAxes: [{
            type: 'time',
            time: {
              displayFormats: {
                day: 'MM-DD-YY'
              }
            }
          }]
        }
      }
    });

  };
})
