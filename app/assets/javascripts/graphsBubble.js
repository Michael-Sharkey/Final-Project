$(document).on('turbolinks:load', function() {

  $.ajax({
    type: 'GET',
    contentType: 'application/json; charset=utf-8',
    url: '../graphs/bubble',
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

    function DataPoint(x, y){
      this.x = moment(x).format("MM-DD-YY");
      this.y = y;
    };

    function getMaxes(array){
      var dMaxes = [[],[],[],[]];
      for (let i = 0; i < array.length; i++){
        let obj = new DataPoint(array[i].date, array[i].weight);
        if (array[i].name === 'Bench Press'){
          dMaxes[0].push(obj);
        } else if (array[i].name === 'Overhead Press'){
          dMaxes[1].push(obj);
        } else if (array[i].name === 'Power Squat' || data[i].name === 'Olympic Squat'){
          dMaxes[2].push(obj);
        } else if (array[i].name === 'Deadlift'){
          dMaxes[3].push(obj);
        };
      } return dMaxes;
    };

    var dailyMaxes = getMaxes(data);

    console.log(dailyMaxes);

    var ctx = document.getElementById("workingWeights");

    var bubble = new Chart(ctx, {
      type: 'line',
      data: {
        datasets: [
        {
          label: 'Bench Press',
          borderColor: 'red',
          backgroundColor: 'red',
          fill: false,
          data: dailyMaxes[0]
        },
        {
          label: 'Overhead Press',
          borderColor: 'blue',
          backgroundColor: 'blue',
          fill: false,
          data: dailyMaxes[1]
        },
        {
          label: 'Squat',
          borderColor: 'yellow',
          backgroundColor: 'yellow',
          fill: false,
          data: dailyMaxes[2]
        },
        {
          label: 'Deadlift',
          borderColor: 'green',
          backgroundColor: 'green',
          fill: false,
          data: dailyMaxes[3]
        }
      ],
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
