$(document).ready(function() {

  var mP = document.querySelector('.movement');
  var eX = document.querySelector('.exercise');

  function pickFilter() {
    let mPSelected = mP.selectedOptions[0].innerText;
    console.log(mPSelected);
    // save options from select field to array before deleting
    let exercises = [];
    for (let i = 1; i < eX.children.length; i++) {
      exercises.push(eX.children[i]);
    };
    eX.innerHTML = '';
    // Use 'for each' instead of for loop to avoid lazy loading, and apply function to all children
    exercises.forEach(function(x) {
      if(x.label === mPSelected) {
        console.log(x.innerHTML);
        eX.innerHTML = x.innerHTML;
        };
      });

  };

  mP.addEventListener('change', pickFilter);

});
