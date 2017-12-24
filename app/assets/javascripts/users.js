$(document).ready(function(){

  var ctx = document.getElementById('myChart').getContext('2d');
  var chart = new Chart(ctx, {
      // The type of chart we want to create
      type: 'line',

      // The data for our dataset
      data: {
          labels: ["January", "February", "March", "April", "May", "June", "July", "August,", "September", "October", "November", "December"],
          datasets: [{
              label: "My First dataset",
              backgroundColor: 'red',
              borderColor: 'red',
              data: [0, 10, 5, 2, 20, 30, 45, 38, 34, 24, 17, 14],
          }]
      },

      // Configuration options go here
      options: {}
  });


})
