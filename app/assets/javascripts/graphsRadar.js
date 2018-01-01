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

  var ctx = document.getElementById("radarGraph");
  console.log(data);
  var movements = data[0];
  


  var radar = new Chart(ctx, {
      type: 'radar',
      data: {
          labels: movements,
          datasets:
            [
              {
              label: data[2][0].created_at,
              data: [2, 5, 3, 5, 2],
              backgroundColor: [ 'rgba(177, 20, 20, 0.2)' ],
              borderColor: [ 'rgba(177, 20, 20, 1)' ],
              borderWidth: 2
              },
              {
              label: data[2][1].created_at,
              data: [3, 2, 7, 2, 1],
              backgroundColor: [ 'rgba(2177, 135, 20, 0.2)' ],
              borderColor: [ 'rgba(177, 135, 20, 1)' ],
              borderWidth: 2
              },
              {
              label: data[2][2].created_at,
              data: [4, 6, 8, 10, 9 ],
              backgroundColor: [ 'rgba(128, 167, 19, 0.2)' ],
              borderColor: [ 'rgba(128, 167, 19, 1)' ],
              borderWidth: 2
              },
              {
              label: data[2][3].created_at,
              data: [1, 3, 5, 7, 9],
              backgroundColor: [ 'rgba(16, 89, 110, 0.2)' ],
              borderColor: [ 'rgba(16, 89, 110, 1)' ],
              borderWidth: 2
              },
              {
              label: data[2][4].created_at,
              data: [4, 4, 8, 3, 12],
              backgroundColor: [ 'rgba(68, 22, 120, 0.2)' ],
              borderColor: [ 'rgba(68, 22, 120, 1)' ],
              borderWidth: 2
              }
            ]
      },
      options: {
          scales: {
              yAxes: [{
                  ticks: {
                      beginAtZero:true
                  }
              }]
          }
      }
  });
};


});
