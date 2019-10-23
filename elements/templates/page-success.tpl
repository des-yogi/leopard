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
            <h1 class="visually-hidden">[[$langs? &uk=`Сторінка підтвердження успішного відправлення заповненої вами форми` &en=`Confirmation page for the successful submission of the form you completed`]]</h1>
            <p class="h3">[[*longtitle:default=`[[*pagetitle]]`]]</p>
            <div class="page-success__bottom">
              {*<button type="button" onclick="goBack()" class="btn  btn--inverted">[[$langs? &uk=`Повернутися назад` &en=`Come back`]]</button>*}
              <a href="[[++site_url]]" class="btn">[[$langs? &uk=`На головну` &en=`To Home Page`]]</a>
            </div>
            {*<script>function goBack() { window.history.back(); }</script>*}
          </div>
        </div>
      </div>
    </div>
  </main>
{/block}
