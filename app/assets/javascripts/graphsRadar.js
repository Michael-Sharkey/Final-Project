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
  var arr = [];
  var x = data;
  console.log(x);

  function weight(obj) {
    for (let i = 0; i < x.length; i++){
      arr.push(x[i].name);
    }
  };

  weight(x);

  console.log(arr);

  var radar = new Chart(ctx, {
      type: 'radar',
      data: {
          labels: arr,
          datasets:
            [
              {
              label: 'Monday',
              data: [2, 5, 3, 5, 2],
              backgroundColor: [ 'rgba(255, 0, 0, 0.2)' ],
              borderColor: [ 'rgba(255, 0, 0, 1)' ],
              borderWidth: 1
            },
            {
            label: 'Tuesday',
            data: [3, 2, 7, 2, 1],
            backgroundColor: [ 'rgba(255, 184, 0, 0.2)' ],
            borderColor: [ 'rgba(255, 184, 0, 1)' ],
            borderWidth: 1
          },
          {
            label: 'Wednesday',
            data: [4, 6, 8, 10, 9 ],
            backgroundColor: [ 'rgba(0, 249, 0, 0.2)' ],
            borderColor: [ 'rgba(0, 249, 0, 1)' ],
            borderWidth: 1
          },
          {
          label: 'Thursday',
          data: [1, 3, 5, 7, 9],
          backgroundColor: [ 'rgba(5, 33, 246, 0.2)' ],
          borderColor: [ 'rgba(5, 33, 246, 1)' ],
          borderWidth: 1
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
