{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main-content  main-content--success" role="main">

    <div class="container">
      {include 'file:chunks/callback_btn.tpl'}
    </div>

    <div class="container  page-success__wrapper">
      <div class="row">
        <div class="col-success">
          <div class="page-success">
            <div class="page-success__top">
              <div class="page-success__envelop">
                <img src="assets/img/envelop.svg" alt="[[$langs? &uk=`Зображення конверта` &en=`Envelop image`]]" width="150" height="62">
              </div>
            </div>
            <h1 class="visually-hidden">[[$langs?
              &uk=`Сторінка підтвердження успішного відправлення заповненої вами форми`
              &ru=`Страница подтверждения успешной отправки заполненной вами формы`
              &en=`Confirmation page for the successful submission of the form you completed`]]</h1>
            <p class="h3">[[*longtitle:default=`[[*pagetitle]]`]]</p>
            <div class="page-success__bottom">
              <a href="[[++site_url]]" class="btn">[[$langs? &uk=`На головну` &ru=`На главную` &en=`To Home Page`]]</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
{/block}
