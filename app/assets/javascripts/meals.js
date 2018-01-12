$(document).on('turbolinks:load', function() {

  const mealCarousel = document.getElementById('meal-carousel');
  const prevMeal = document.getElementById('prev');
  const nextMeal = document.getElementById('next');

  $.ajax({
    type: 'GET',
    contentType: 'application/json; charset=utf-8',
    url: '../meals/slides',
    dataType: 'json',
    success: function(data){
      buildSlides(data);
      },
    failure: function(result){
      error();
      }
  });

function error() {
  alert("Something went wrong!");
};

function buildSlides(data){
  for (let i = 0; i < data.length; i++) {
    let meal = document.createElement('img');
    meal.src = data[i][0];
    meal.alt = `Meal from ${data[i][1]}`;
    meal.classList.add('hidden');
    meal.classList.add('meal-pics');
    mealCarousel.append(meal);
  };
    mealCarousel.firstElementChild.setAttribute('id', 'active');
    mealCarousel.firstElementChild.classList.remove('hidden');
};


function nxtMeal(){
  var currentSlide = document.getElementById('active');
  currentSlide.removeAttribute('id');
  currentSlide.classList.add('hidden');
  if (currentSlide.nextElementSibling !== null){
    currentSlide.nextElementSibling.classList.remove('hidden');
    currentSlide.nextElementSibling.setAttribute('id', 'active');
  } else {
    mealCarousel.firstElementChild.setAttribute('id', 'active');
    mealCarousel.firstElementChild.classList.remove('hidden');
  }
};

function prvMeal(){
  var currentSlide = document.getElementById('active');
  currentSlide.removeAttribute('id');
  currentSlide.classList.add('hidden');
  if (currentSlide.previousElementSibling !== null){
    currentSlide.previousElementSibling.classList.remove('hidden');
    currentSlide.previousElementSibling.setAttribute('id', 'active');
  } else {
    mealCarousel.lastElementChild.setAttribute('id', 'active');
    mealCarousel.lastElementChild.classList.remove('hidden');
  }
};


nextMeal.addEventListener('click', nxtMeal);
prevMeal.addEventListener('click', prvMeal);


})
