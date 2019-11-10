{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main-content  main-content--success" role="main">

    <div class="container">
      {include 'file:chunks/callback_btn.tpl'}
    </div>
    
    <div class="container  page-success__wrapper  page-404">
      <h1 class="visually-hidden">[[*longtitle:default=`[[*pagetitle]]`]]</h1>
      <div class="row">
        <div class="col-404-text">
          <div class="page-404__text">
            <span class="h1">[[$langs? &uk=`На жаль,` &ru=`К сожалению,` &en=`Unfortunately`]]</span>
            <span class="h2">[[$langs? &uk=`щось пішло не так` &ru=`что-то пошло не так` &en=`something went wrong`]]…</span>
            <a href="[[++site_url]]" class="btn">[[$langs? &uk=`На головну` &ru=`На главную` &en=`To Home Page`]]</a>
          </div>
        </div>
        <div class="col-404-logo">
          <div class="page-404__logo">
            <img src="assets/img/404-logo.svg" alt="Page not found. Error 404 image">
          </div>
        </div>
      </div>
    </div>
  </main>
{/block}
