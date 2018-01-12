$(document).on('turbolinks:load', function() {

  $.ajax({
    type: 'GET',
    contentType: 'application/json; charset=utf-8',
    url: '../graphs/radar',
    dataType: 'json',
    success: function(data) {
      drawRadar(data);
    },
    failure: function(result) {
      error();
    }
  });

  function error() {
    console.log("Something went wrong!");
  }

  function drawRadar(data) {
    var volPerSet = data.map(x => x.exercises.map(y => [y.pattern, y.weight * y.reps]));

    function patternVolume(arr) {
      let vol = [0, 0, 0, 0, 0];
      for (let i = 0; i < arr.length; i++) {
        if (arr[i][0] === "Push") {
          vol[0] += arr[i][1];
        } else if (arr[i][0] === "Pull") {
          vol[1] += arr[i][1];
        } else if (arr[i][0] === "Squat") {
          vol[2] += arr[i][1];
        } else if (arr[i][0] === "Hinge") {
          vol[3] += arr[i][1];
        } else if (arr[i][0] === "Core") {
          vol[4] += arr[i][1];
        };
      } return vol;
    }

    var workout0 = patternVolume(volPerSet[0]);
    var workout1 = patternVolume(volPerSet[1]);
    var workout2 = patternVolume(volPerSet[2]);
    var workout3 = patternVolume(volPerSet[3]);
    var workout4 = patternVolume(volPerSet[4]);

    var ctx = document.getElementById("radarGraph").getContext('2d');
    var radar = new Chart(ctx, {
      type: 'radar',

      data: {
        labels: ["Push", "Pull", "Squat", "Hinge", "Core"],
        datasets: [
          //
          {
            label: 'A',
            data: workout0,
            backgroundColor: [
              'rgba(180, 30, 6, 0.2)'
            ],
            borderColor: [
              'rgba(180, 30, 6, 1)'
            ],
            borderWidth: 2
          },
          {
            label: 'B',
            data: workout1,
            backgroundColor: [
              'rgba(15, 71, 199, 0.2)'
            ],
            borderColor: [
              'rgba(15, 71, 199, 1)'
            ],
            borderWidth: 2
          },
          {
            label: 'C',
            data: workout2,
            backgroundColor: [
              'rgba(238, 205, 23, 0.2)'
            ],
            borderColor: [
              'rgba(238, 205, 23, 1)'
            ],
            borderWidth: 2
          },
          {
            label: 'D',
            data: workout3,
            backgroundColor: [
                'rgba(27, 103, 7, 0.2)'
            ],
            borderColor: [
                'rgba(27, 103, 7, 1)'
            ],
            borderWidth: 2
        },
        {
          label: 'F',
          data: workout4,
          backgroundColor: [
              'rgba(88, 16, 137, 0.2)'
          ],
          borderColor: [
              'rgba(88, 16, 137, 1)'
          ],
          borderWidth: 2
      },
        ]
      },
      options: {
        legend: {
          position: 'bottom'
        }
      }
    });
  }

});
