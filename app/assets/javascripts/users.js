$(document).on('turbolinks:load', function(){

  const newButton = document.getElementById('new-button');
  const newModal = document.getElementById('new-modal');


  function toggleNew() {
    if (newModal.style.height === "0px" || newModal.style.height === ""){
      newModal.style.height = "100px";
    } else if (newModal.style.height === "100px"){
      newModal.style.height = "0px";
    };
  };

  newButton.addEventListener('click', toggleNew);

});
