document.addEventListener('DOMContentLoaded', function(){
  (function(){
    // указатель на текущую страницу
    var pagination = document.querySelector('.pagination');
    var paginationItem = document.querySelectorAll('.pagination__item');
    Array.prototype.forEach.call(paginationItem, function (item) {
      var link = item.children[0];
      if (item.classList.contains('active')) {
        link.setAttribute('aria-current', 'page');
      }
      else {
        link.removeAttribute('aria-current');
      }
    });
  }());
});

