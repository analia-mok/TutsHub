(function(){
  let menuIcon;
  let accordion;

  window.onload = init;

  function init(){
    menuIcon = document.getElementById('menuIcon');
    menuIcon.addEventListener('click', toggleNav);

    accordion = document.querySelector('.nav__accordion');
  }

  function toggleNav(){
    let closeClass = 'nav__accordion--close';
    let openClass = 'nav__accordion--open';
    
    if(accordion.classList.contains(closeClass)){
      accordion.classList.remove(closeClass);
      accordion.classList.add(openClass);
    }else{
      accordion.classList.remove(openClass);
      accordion.classList.add(closeClass);
    }
    console.log(accordion.classList);
  }

  return {};

})();