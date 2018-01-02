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
  console.log(data[2][0][1]);


  var radar = new Chart(ctx, {
      type: 'radar',
      data: {
          labels: data[0],
          datasets:
            [
              {
              label: `${data[1][0][0]}/${data[1][0][1]}/${data[1][0][2]}`,
              data: [],
              backgroundColor: [ 'rgba(177, 20, 20, 0.2)' ],
              borderColor: [ 'rgba(177, 20, 20, 1)' ],
              borderWidth: 2
              },
              {
              label: `${data[1][1][0]}/${data[1][1][1]}/${data[1][1][2]}`,
              data: [3, 2, 7, 2, 1],
              backgroundColor: [ 'rgba(2177, 135, 20, 0.2)' ],
              borderColor: [ 'rgba(177, 135, 20, 1)' ],
              borderWidth: 2
              },
              {
              label: `${data[1][2][0]}/${data[1][2][1]}/${data[1][2][2]}`,
              data: [4, 6, 8, 10, 9 ],
              backgroundColor: [ 'rgba(128, 167, 19, 0.2)' ],
              borderColor: [ 'rgba(128, 167, 19, 1)' ],
              borderWidth: 2
              },
              {
              label: `${data[1][3][0]}/${data[1][3][1]}/${data[1][3][2]}`,
              data: [1, 3, 5, 7, 9],
              backgroundColor: [ 'rgba(16, 89, 110, 0.2)' ],
              borderColor: [ 'rgba(16, 89, 110, 1)' ],
              borderWidth: 2
              },
              {
              label: `${data[1][4][0]}/${data[1][4][1]}/${data[1][4][2]}`,
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
