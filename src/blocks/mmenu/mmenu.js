jQuery(document).ready(function( $ ) {
  $("#offcanvas").mmenu({
   "extensions": [
     "pagedim-black",
     "position-front",
     "position-right",
     "theme-dark",
     "border-none"
   ],
   "navbars": [
      {
        "position": "top",
        "content": [
          "breadcrumbs",
          "close"
        ]
      },
      {
        "position": "bottom",
        "content": [
          "<a class='' href='#'>Call me back</a>"
        ]
      }
    ]
  },
  {
    // configuration
    offCanvas: {
      pageSelector: "#content-wrapper"
    }
  });
});
