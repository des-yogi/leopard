{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main-content  main-content--noindex" role="main">

    <div class="container">
      <div class="callback-btn">
        <button class="callback-btn__item" type="button" data-toggle="modal" data-target="#callback">Call me back</button>
      </div>
    </div>
    <article class="article  article--wo-border  contacts">
      <div class="main-content__header" style="background-image: url(./img/contacts-header-bg.jpg);">
        <div class="container">

          <nav class="breadcrumbs">
            <h4 class="visually-hidden">Постраничная навигация — ваш путь на сайте (Page navigation is your way through the site)</h4>
            <ol class="breadcrumbs__list" itemscope itemtype="http://schema.org/BreadcrumbList">
              <li class="breadcrumbs__item" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                <a itemprop="item" href="#" class="breadcrumbs__link">
                  <span itemprop="name">Главная</span>
                  <meta itemprop="position" content="1">
                </a>
              </li>
              <li class="breadcrumbs__item" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                <a itemprop="item" href="#" class="breadcrumbs__link">
                  <span itemprop="name">Страница 1</span>
                  <meta itemprop="position" content="2">
                </a>
              </li>
              <li class="breadcrumbs__item  active" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                <a itemprop="item" class="breadcrumbs__link">
                  <span itemprop="name">Страница Текущая</span>
                  <meta itemprop="position" content="3">
                </a>
              </li>
            </ol>
          </nav>
          <div class="row">
            <div class="col-1-2">
              <h1 class="main-content__title">Contacts</h1>
              <p class="main-content__descr">Consequat veniam cupidatat sunt sint cupidatat ex nostrud reprehenderit et.</p>
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
                      <h3>Office Address</h3>
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
                      <h3>Phone</h3>
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
                <h3>Instant Messengers</h3>
                <ul class="list-nostyled  contacts__list">
                  <li class="contacts__item">
                    <a class="contacts__link" href="https://www.messenger.com/t/[[++fb_messenger]]">
                      <svg width="26" height="26">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="img/sprite-svg.svg#fb-messenger-icon"/>
                      </svg>
                      <span>Facebook Messenger</span>
                    </a>
                  </li>
                  <li class="contacts__item">
                    <a class="contacts__link" href="https://t.me/[[++tg_messenger]]">
                      <svg width="26" height="22">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="img/sprite-svg.svg#telegram-icon"/>
                      </svg>
                      <span>Telegram</span>
                    </a>
                  </li>
                  <li class="contacts__item">
                    <a class="contacts__link" href="viber://add?number=+[[++viber]]">
                      <svg width="26" height="28">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="img/sprite-svg.svg#viber-icon"/>
                      </svg>
                      <span>Viber</span>
                    </a>
                  </li>
                  <li class="contacts__item">
                    <a class="contacts__link" href="whatsapp://send?phone=+[[++whatsapp]]">
                      <svg width="26" height="26">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="img/sprite-svg.svg#whatsapp-icon"/>
                      </svg>
                      <span>Whatsapp</span>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="col-1-3  col-1-3--nohide">
              <div class="contacts__block">
                <h3>Social networks</h3>
                <ul class="list-nostyled  contacts__list">
                  <link itemprop="url" href="https://leopard-agri.com/">
                  <li class="contacts__item">
                    <a class="contacts__link" href="[[++fb_page]]" itemprop="sameAs">
                      <svg width="14" height="28">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="img/sprite-svg.svg#facebook-icon"/>
                      </svg>
                      <span>Facebook</span>
                    </a>
                  </li>
                  <li class="contacts__item">
                    <a class="contacts__link" href="[[++in_page]]" itemprop="sameAs">
                      <svg width="27" height="26">
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="img/sprite-svg.svg#linkedin-icon"/>
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
    
    <section class="section  section--padding-b  partners-worldwide">
      <div class="container">
        <h2 class="section__title">We are Worldwide</h2>
        <meta name="description" content="map created using amCharts pixel map generator">
        <div id="map" style="width: 100%" class="partners-worldwide__map"></div>
      </div>
    </section>
  </main>
{/block}

{block 'map_scripts'}
  {include 'file:chunks/map_scripts.tpl'}
{/block}

