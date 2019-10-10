jQuery(document).ready(function( $ ) {
  $("#offcanvas").mmenu({
   "extensions": [
     "pagedim-black",
     "position-right",
     "theme-dark"
   ],
   "navbars": [
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
