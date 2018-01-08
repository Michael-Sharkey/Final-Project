$(document).ready(function(){

  const navButton = document.getElementById('nav-button');
  const closeNvg = document.getElementById('close-nav');

  function openNav() {
      document.getElementById("sideNav").style.width = "250px";
      document.getElementById("mainArea").style.marginLeft = "250px";
  };

  function closeNav() {
      document.getElementById("sideNav").style.width = "0";
      document.getElementById("mainArea").style.marginLeft = "0";
  };

  navButton.addEventListener('click', openNav);
  closeNvg.addEventListener('click', closeNav);


});
