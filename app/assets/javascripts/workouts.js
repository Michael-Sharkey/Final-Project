// $(document).ready(function() {
//
//   var movementFields = document.getElementsByClassName('movement');
//   var exerciseFields = document.getElementsByClassName('exercise');
//   var counter = 0;
//
//   const setBtn = document.querySelector('#set_btn');
//   const workout = document.querySelector('#workout_form');
//   const setRows = document.getElementsByClassName('one_set');
//   const firstRow = setRows[0];
//
//   function filterExercises() {
//     let selectedMovement = movementFields.selectedOptions[0].innerText;
//     let exercises = [];
//     for (let i = 1; i < exerciseFields.children.length; i++) {
//       exercises.push(exerciseFields.children[i]);
//     };
//     exerciseFields.innerHTML = '';
//     exercises.forEach(function(x) {
//       if(x.label === mPSelected) {
//         console.log(x.innerHTML);
//         eX.innerHTML = x.innerHTML;
//         };
//     });
//   };
//
//   function addSet() {
//     let newSet = document.createElement('tr');
//     newSet.classList.add('.one_set');
//     newSet.innerHTML = firstRow.innerHTML;
//     workout.appendChild(newSet);
//   }
//
//   mP.addEventListener('change', pickFilter);
//
//
//   setBtn.addEventListener('click', function(event) {
//     event.preventDefault();
//     addSet();
//     filterExercises();
//   })
// });
