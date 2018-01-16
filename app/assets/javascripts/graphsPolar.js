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
  console.log(data);

  var pushVol = data.filter(y => y.pattern === 'Push').map(x => x.weight * x.reps).reduce( (a, b) => a + b);
  var pullVol = data.filter(y => y.pattern === 'Pull').map(x => x.weight * x.reps).reduce( (a, b) => a + b);
  var squatVol = data.filter(y => y.pattern === 'Squat').map(x => x.weight * x.reps).reduce( (a, b) => a + b);
  var hingeVol = data.filter(y => y.pattern === 'Hinge').map(x => x.weight * x.reps).reduce( (a, b) => a + b);
  var coreVol = data.filter(y => y.pattern === 'Core').map(x => x.weight * x.reps).reduce( (a, b) => a + b);
  var dataSet = [pushVol, pullVol, squatVol, hingeVol, coreVol];

  var ctx = document.getElementById("polarGraph");

  var radar = new Chart(ctx, {
      type: 'polarArea',
      data: {
        datasets: [{
          data:   dataSet,
          labels:          [
                            "Push",
                            "Pull",
                            "Squat",
                            "Hinge",
                            "Core"
          ],
          backgroundColor: [
                            'rgba(180, 30, 6, 0.2)',
                            'rgba(15, 71, 199, 0.2)',
                            'rgba(238, 205, 23, 0.2)',
                            'rgba(27, 103, 7, 0.2)',
                            'rgba(88, 16, 137, 0.2)'
          ],
          borderColor:     [
                            'rgba(180, 30, 6, 1)',
                            'rgba(15, 71, 199, 1)',
                            'rgba(238, 205, 23, 1)',
                            'rgba(27, 103, 7, 1)',
                            'rgba(88, 16, 137, 1)'
          ],
          borderWidth: 2 
        }],
      },
      options: {

      },
  });
};

})
