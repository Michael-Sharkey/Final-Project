$(document).ready(function(){

  const navButton = document.getElementById('nav-button');
  const sideNav = document.getElementById('sideNav');

  const newButton = document.getElementById('new-button');
  const newModal = document.getElementById('new-modal');

  function toggleNav() {
    if (sideNav.style.width === "0px" || sideNav.style.width === "") {
      sideNav.style.width = "200px";
    } else if (sideNav.style.width === "200px") {
      sideNav.style.width = "0";
      };
  };

  function toggleNew() {
    if (newModal.style.height === "0px" || newModal.style.height === ""){
      newModal.style.height = "100px";
    } else if (newModal.style.height === "100px"){
      newModal.style.height = "0px";
    };
  };


  navButton.addEventListener('click', toggleNav);
  newButton.addEventListener('click', toggleNew);

});
