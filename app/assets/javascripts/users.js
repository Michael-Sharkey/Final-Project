$(document).ready(function(){

  const navButton = document.getElementById('nav-button');
  const closeNvg = document.getElementById('close-nav');
  const newButton = document.getElementById('new-button');
  const closeModal = document.getElementById('close-new');
  const newModal = document.getElementById('new-modal');

  function openNav() {
      document.getElementById("sideNav").style.width = "250px";
      document.getElementById("mainArea").style.marginLeft = "250px";
  };

  function closeNav() {
      document.getElementById("sideNav").style.width = "0";
      document.getElementById("mainArea").style.marginLeft = "0";
  };

  function openNew() {
      newModal.classList.remove('hidden');
  };

  function closeNew() {
      newModal.classList.add('hidden');
  };

  navButton.addEventListener('click', openNav);
  closeNvg.addEventListener('click', closeNav);
  newButton.addEventListener('click', openNew);
  closeModal.addEventListener('click', closeNew);

});
