$(document).ready(function(){

  $.ajax({
    type: 'GET',
    contentType: 'application/json; charset=utf-8',
    url: '../graphs/radar',
    dataType: 'json',
    success: function(data){
      drawRadar(data);
      },
    failure: function(result){
      error();
      }
  });

function error() {
      console.log("Something went wrong!");
  }

function drawRadar(data) {
console.log(data);
var ctx = document.getElementById("radarGraph").getContext('2d');

var radar = new Chart(ctx, {
    type: 'radar',

    data: {
        labels: ["Push", "Pull", "Squat", "Hinge", "Core"],
        datasets: [
          //
          {
            label: 'Workout Date',
            // data = average rpe by movement pattern
            data: [12, 19, 3, 5, 2, 3],
            backgroundColor: [
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 2
        },
      ]
    },

    options: {
        scales: {
            // yAxes: [{
            //     ticks: {
            //         beginAtZero:true
            //     }
            // }]
        }
    }
});
}

});
