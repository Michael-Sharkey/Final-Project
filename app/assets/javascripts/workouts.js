$(document).on('turbolinks:load', function() {

  $('.pattern-fields').select2({
    width: '100%',
    placeholder: 'Movement Pattern'
  });
  $('.exercise-fields').select2({
    width: '100%',
    placeholder: 'Exercise'
  });

  $('main').on('cocoon:after-insert', function(){
    $('.pattern-fields').select2({
      width: '100%',
      placeholder: 'Movement Pattern'
    });
    $('.exercise-fields').select2({
      width: '100%',
      placeholder: 'Exercise'
    });
  })


  // var movementFields = document.getElementsByClassName('movement');
  // var exerciseFields = document.getElementsByClassName('exercise');
  //
  // function filterExercises() {
  //   let selectedMovement = movementFields.selectedOptions[0].innerText;
  //   let exercises = [];
  //   for (let i = 1; i < exerciseFields.children.length; i++) {
  //     exercises.push(exerciseFields.children[i]);
  //   };
  //   exerciseFields.innerHTML = '';
  //
  //   exercises.forEach(function(x) {
  //     if(x.label === mPSelected) {
  //       console.log(x.innerHTML);
  //       eX.innerHTML = x.innerHTML;
  //       };
  //   });
  // };



  })
