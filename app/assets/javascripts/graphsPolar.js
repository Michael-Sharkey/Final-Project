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
  // var label1 = `${data[1][0][0]}/${data[1][0][1]}/${data[1][0][2]}`;
  // var label2 = `${data[1][1][0]}/${data[1][1][1]}/${data[1][1][2]}`;
  // var label3 = `${data[1][2][0]}/${data[1][2][1]}/${data[1][2][2]}`;
  // var label4 = `${data[1][3][0]}/${data[1][3][1]}/${data[1][3][2]}`;
  // var label5 = `${data[1][4][0]}/${data[1][4][1]}/${data[1][4][2]}`;

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
