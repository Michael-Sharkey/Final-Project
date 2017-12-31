
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
  var radar = new Chart(ctx, {
      type: 'radar',
      data: {
          labels: data,
          datasets: [{
              label: '# of Votes',
              data: [2, 5, 3, 5, 2],
              backgroundColor: [
                  'rgba(54, 162, 235, 0.2)',
                  'rgba(255, 206, 86, 0.2)',
                  'rgba(75, 192, 192, 0.2)',
                  'rgba(153, 102, 255, 0.2)',
                  'rgba(255, 159, 64, 0.2)'
              ],
              borderColor: [
                  'rgba(54, 162, 235, 1)',
                  'rgba(255, 206, 86, 1)',
                  'rgba(75, 192, 192, 1)',
                  'rgba(153, 102, 255, 1)',
                  'rgba(255, 159, 64, 1)'
              ],
              borderWidth: 1
          }]
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
