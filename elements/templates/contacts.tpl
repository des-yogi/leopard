{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main-content  main-content--noindex" role="main">
    <div class="container">
      {include 'file:chunks/callback_btn.tpl'}
    </div>
    <article class="article  article--wo-border  contacts">
      <div class="main-content__header" style="background-image: url([[*header_bg:ne=``:then=`[[*header_bg]]`:else=`[[pdoField? &id=`[[BabelTranslation:default=`[[*parent]]`? &resourceId=`[[*parent]]` &contextKey=`[[*context_key]]`]]` &field=`header_bg`]]`]]);">
        <div class="container">
          {include 'file:chunks/breadcrumbs.tpl'}
          <div class="row">
            <div class="col-1-2">
              <h1 class="main-content__title">[[*longtitle:default=`[[*pagetitle]]`]]</h1>
              <p class="main-content__descr">[[*introtext]]</p>
            </div>
          </div>
        </div>
      </div>
      <div class="main-content__content  main-content__content--wo-pad-bottom" itemscope itemtype="http://schema.org/Organization">
        <meta itemprop="name" content="[[++site_name]]">
        <div class="container">
          <div class="row">
            <div class="col-1-3  col-1-3--nohide">
              <div class="contacts__block">
                <dl class="contacts__list" itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
                  <div class="contacts__list-inner">
                    <dt>
                      <h3>[[$langs? &uk=`Адреса офісу` &en=`Office Address`]]</h3>
                    </dt>
                    <dd>
                      <span itemprop="streetAddress">[[++street_address]]</span> <span itemprop="addressLocality">[[++address_locality]]</span> &shy;<span itemprop="addressRegion">[[++address_region]]</span> &shy;<span itemprop="postalCode">[[++postal_code]]</span>
                    </dd>
                  </div>
                  <div class="contacts__list-inner">
                    <dt>
                      <h3>Email</h3>
                    </dt>
                    <dd itemprop="email">
                      <a href="mailto:[[++main_email]]" class="contacts__link">[[++main_email]]</a>
                    </dd>
                  </div>
                  <div class="contacts__list-inner">
                    <dt>
                      <h3>[[$langs? &uk=`Телефон` &en=`Phone`]]</h3>
                    </dt>
                    <dd itemprop="telephone">
                      <a href="tel:+[[++main_tel]]" class="contacts__link">[[++main_tel:phone_format]]</a>
                    </dd>
                  </div>
                </dl>
              </div>
            </div>
            <div class="col-1-3  col-1-3--nohide">
              <div class="contacts__block">
                <h3>[[$langs? &uk=`Месенджери повідомлень` &en=`Instant Messengers`]]</h3>
                <ul class="list-nostyled  contacts__list">
                  <li class="contacts__item">
                    <a class="contacts__link" href="https://www.messenger.com/t/[[++fb_messenger]]">
                      <svg width="26" height="26">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#fb-messenger-icon"/>
                      </svg>
                      <span>[[$langs? &uk=`Facebook Месенджер` &en=`Facebook Messenger`]]</span>
                    </a>
                  </li>
                  <li class="contacts__item">
                    <a class="contacts__link" href="https://t.me/[[++tg_messenger]]">
                      <svg width="26" height="22">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#telegram-icon"/>
                      </svg>
                      <span>Telegram</span>
                    </a>
                  </li>
                  <li class="contacts__item">
                    <a class="contacts__link" href="viber://add?number=+[[++viber]]">
                      <svg width="26" height="28">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#viber-icon"/>
                      </svg>
                      <span>Viber</span>
                    </a>
                  </li>
                  <li class="contacts__item">
                    <a class="contacts__link" href="whatsapp://send?phone=+[[++whatsapp]]">
                      <svg width="26" height="26">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#whatsapp-icon"/>
                      </svg>
                      <span>Whatsapp</span>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="col-1-3  col-1-3--nohide">
              <div class="contacts__block">
                <h3>[[$langs? &uk=`Соціальні мережі` &en=`Social networks`]]</h3>
                <ul class="list-nostyled  contacts__list">
                  <link itemprop="url" href="https://leopard-agri.com/">
                  <li class="contacts__item">
                    <a class="contacts__link" href="[[++fb_page]]" itemprop="sameAs">
                      <svg width="14" height="28">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#facebook-icon"/>
                      </svg>
                      <span>Facebook</span>
                    </a>
                  </li>
                  <li class="contacts__item">
                    <a class="contacts__link" href="[[++in_page]]" itemprop="sameAs">
                      <svg width="27" height="26">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#linkedin-icon"/>
                      </svg>
                      <span>Linkedin</span>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </article>

    {include 'file:chunks/worldwide_map.tpl'}
  </main>
{/block}

{block 'map_scripts'}
  {include 'file:chunks/map_scripts.tpl'}
{/block}
