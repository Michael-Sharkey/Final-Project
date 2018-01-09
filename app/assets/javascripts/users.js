$(document).ready(function(){

  const navButton = document.getElementById('nav-button');
  const closeNvg = document.getElementById('close-nav');
  const sideNav = document.getElementById('sideNav');
  const mainArea = document.getElementById('mainArea');

  const newButton = document.getElementById('new-button');
  const closeModal = document.getElementById('close-new');
  const newModal = document.getElementById('new-modal');

  function toggleNav() {
    if (sideNav.style.width === "0px" || sideNav.style.width === "") {
      sideNav.style.width = "250px";
      mainArea.style.marginLeft = "250px";
    }
    else if (sideNav.style.width === "250px") {
      sideNav.style.width = "0";
      mainArea.style.marginLeft = "0";
    };
  };

  function openNav() {
      sideNav.style.width = "250px";
      mainArea.style.marginLeft = "250px";
  };

  function closeNav() {
      sideNav.style.width = "0";
      mainArea.style.marginLeft = "0";
  };

  function openNew() {
      newModal.classList.remove('hidden');
  };

  function closeNew() {
      newModal.classList.add('hidden');
  };

  navButton.addEventListener('click', toggleNav);
  closeNvg.addEventListener('click', closeNav);
  newButton.addEventListener('click', openNew);
  closeModal.addEventListener('click', closeNew);

});
