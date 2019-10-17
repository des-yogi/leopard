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
      }/*,
      {
        "position": "bottom",
        "content": [
          "<button class='btn' type='button' data-toggle='modal' data-target='#callback'>Call me back</button>"
        ]
      }*/
    ]
  },
  {
    // configuration
    offCanvas: {
      pageSelector: "#content-wrapper"
    }
  });
});
