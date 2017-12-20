$(document).ready(function() {

  var mP = document.querySelector('#movement_pattern');
  var eX = document.querySelector('#exercise');

  function pickFilter() {
    let mPSelected = mP.selectedOptions[0].innerText;
    console.log(mPSelected);
    let exercises = [];
    for (let i = 1; i < eX.children.length; i++) {
      exercises.push(eX.children[i]);
    };
    eX.innerHTML = '';
    exercises.forEach(function(x) {
      if(x.label === mPSelected) {
        console.log(x.innerHTML);
        eX.innerHTML = x.innerHTML;
        };
      });

  };

  mP.addEventListener('change', pickFilter);

});
