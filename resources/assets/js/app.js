(function(){
  let menuIcon;
  let accordion;

  window.onload = init;

  function init(){
    menuIcon = document.getElementById('menuIcon');
    menuIcon.addEventListener('click', toggleNav);

    accordion = document.querySelector('.nav__accordion');
    let searchFrom = document.querySelector('#searchForm');

    if(searchForm !== undefined){
      var searchBox = searchForm.querySelector('input[type=text]');
      searchBox.addEventListener('keypress', search);
    }
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

  // Search Method Launched By Ajax
  function search(e){
    if(e.keyCode === 13){
      e.preventDefault();
      let keyword = e.target.value;
      let contentType = e.target.getAttribute('data-contenttype');

      let requestUrl = `http://tutshub/search?keyword=${keyword}&contentType=${contentType}`;
      fetch(requestUrl)
        .then(res => res.json())
        .then(
          (result) => {
            console.log({result});
            let page = document.querySelector('.page');
            if(page){
              page.innerHTML = result.html;
            }
          },
          (error) => {
            console.log({error});
          }
        );
    }
  }

  function searchPagination(e){
    if(document.querySelector('.search__pagination') !== null){
      e.preventDefault();
      console.log({e});
    }
  }

  return {
    'search': search,
    'searchPagination': searchPagination
  };

})();
