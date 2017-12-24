$(document).ready(function(){
  var photos = document.getElementsByClassName('carousel-inner');
  var lastMeal = photos[0].firstElementChild;

  window.addEventListener('load', function() {
    lastMeal.classList.add('active');
    console.log(lastMeal.classList);
  });

})
