
$(document).ready(function(){

  const newButton = document.getElementById('new-button');
  const newModal = document.getElementById('new-modal');


  function toggleNew() {
    if (newModal.style.paddingRight !== "100px"){
      newModal.style.paddingRight = "100px";
    } else if (newModal.style.paddingRight === "100px"){
      newModal.style.paddingRight = "0px";
    };
  };

  newButton.addEventListener('click', toggleNew);

})
