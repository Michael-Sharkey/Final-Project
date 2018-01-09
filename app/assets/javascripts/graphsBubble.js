// $(document).ready(function(){
//
//   $.ajax({
//     type: 'GET',
//     contentType: 'application/json; charset=utf-8',
//     url: '../graphs/bubble',
//     dataType: 'json',
//     success: function(data){
//       drawBubble(data);
//       },
//     failure: function(result){
//       error();
//       }
//   });
//
// function error() {
//     console.log("Something went wrong!");
// }
//
// function drawBubble(data) {
//
//   var ctx = document.getElementById("bubbleGraph");
//   console.log(data);
//
//
//   var bubble = new Chart(ctx, {
//       type: 'bubble',
//       data: {
//           datasets: [{
//             label: 'Bubble Dataset',
//             data: [
//               {
//                 x: 10,
//                 y: 20,
//                 r: 30
//               },
//               {
//                 x: 15,
//                 y: 25,
//                 r: 35
//               }
//             ]
//             }]
//           },
//       options: {
//           scales: {
//               xAxes: [{
//                   type: 'linear',
//                   position: 'bottom'
//               }]
//           }
//       }
//   });
// };
//
//
// });
