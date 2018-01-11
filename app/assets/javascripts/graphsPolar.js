$(document).ready(function(){

  $.ajax({
    type: 'GET',
    contentType: 'application/json; charset=utf-8',
    url: '../graphs/polar',
    dataType: 'json',
    success: function(data){
      drawPolar(data);
      },
    failure: function(result){
      error();
      }
  });

function error() {
    console.log("Something went wrong!");
}

function drawPolar(data) {

  var ctx = document.getElementById("polarGraph");
  console.log(data);
  var movements = data[0];
  var volume = data[3];


  var radar = new Chart(ctx, {
      type: 'polarArea',
      data: {
        datasets: [{
          data: volume,

          labels: ['Push', 'Pull', 'Squat', 'Hip Extension', 'Core Stability'],
          backgroundColor: [
                'rgba(255, 99, 132, 0.5)',
                'rgba(54, 162, 235, 0.5)',
                'rgba(255, 206, 86, 0.5)',
                'rgba(75, 192, 192, 0.5)',
                'rgba(255, 159, 64, 0.5)'
            ],
            borderColor: [
                  'rgba(255, 99, 132, 1)',
                  'rgba(54, 162, 235, 1)',
                  'rgba(255, 206, 86, 1)',
                  'rgba(75, 192, 192, 1)',
                  'rgba(255, 159, 64, 1)'
              ],
        }],
      },
      options: {

      },
  });
}

});


// for (let i = 0; i < data.length; i++) {
//   for (let j = 0; j < data[i].exercises.length; j++){
//     if (data[i].exercises[j].pattern === "Push") {
//       var x = [data[i].exercises[j].weight * data[i].exercises[j].reps, data[i].exercises[j].pattern, data[i].exercises[j].workout_id];
//       console.log(x);
//     }
//   }
// }

// var vol0 = volPerSet[0].
//
// for (let i = 0; i < volPerSet; i++) {
//
// }
