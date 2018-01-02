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
  var push = data[0];
  var pull = data[1];
  var squat = data[2];
  var hinge = data[3];
  var core = data[4];

  var radar = new Chart(ctx, {
      type: 'radar',
      data: {
          labels: ['Weight', 'Sets', 'Repetitions', 'Volume', 'RPE'],
          datasets:
            [
              {
              label: "Push",
              data: push,
              backgroundColor: [ 'rgba(177, 20, 20, 0.2)' ],
              borderColor: [ 'rgba(177, 20, 20, 1)' ],
              borderWidth: 2
              },
              {
              label: "Pull",
              data: pull,
              backgroundColor: [ 'rgba(2177, 135, 20, 0.2)' ],
              borderColor: [ 'rgba(177, 135, 20, 1)' ],
              borderWidth: 2
              },
              {
              label: "Squat",
              data: squat,
              backgroundColor: [ 'rgba(128, 167, 19, 0.2)' ],
              borderColor: [ 'rgba(128, 167, 19, 1)' ],
              borderWidth: 2
              },
              {
              label: "Hinge",
              data: hinge,
              backgroundColor: [ 'rgba(16, 89, 110, 0.2)' ],
              borderColor: [ 'rgba(16, 89, 110, 1)' ],
              borderWidth: 2
              },
              {
              label: "Core",
              data: core,
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
