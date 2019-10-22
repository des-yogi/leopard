<!DOCTYPE html>
<html class="no-js  page" lang="[[++cultureKey]]" prefix="og: https://ogp.me/ns#">
<head>
  <base href="[[++site_url]]"/>
  <meta charset="utf-8">
  {block 'title'}
    <title>[[*longtitle:default=`[[*pagetitle]]`]] | [[++site_name]]</title>
  {/block}
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="MobileOptimized" content="320">
  <meta name="format-detection" content="telephone=no">
  <meta name="description" content="[[*description:notempty=`[[*description]]`]]">
  <meta name="keywords" content="[[+seoPro.keywords:notempty=`[[+seoPro.keywords]]`]]">
  <meta name="robots" content="[[+seoTab.robotsTag]]">

  <meta property="og:url"           content="[[~[[*id]]? &scheme=`full`]]" />
  <meta property="og:type"          content="website" />
  <meta property="og:site_name"     content="[[++site_name]]" />
  <meta property="og:locale"        content="[[$langs? &uk=`uk_UA` &en=`en_US`]]" />
  <meta property="og:image"         content="[[*og_img:ne=``:then=`[[++site_url]][[*og_img]]`:else=`[[++site_url]]assets/images/opengraph/og-main.jpg`]]" />
  <meta property="og:image:alt"     content="[[*longtitle:default=`[[*pagetitle]]`]]" />
  <meta property="og:image:width"   content="1200" />
  <meta property="og:image:height"  content="630" />
  <meta property="og:title"         content="[[*longtitle:default=`[[*pagetitle]]`]]" />
  <meta property="og:description"   content="[[*description:notempty=`[[*description]]`]]" />

  <link rel="canonical" href="[[~[[*id]]? &scheme=`full`]]">
  <link rel="preload" href="assets/fonts/Inter-Regular.woff2" as="font" type="font/woff2" crossorigin>
  <link rel="preload" href="assets/fonts/Inter-Medium.woff2" as="font" type="font/woff2" crossorigin>
  <link rel="preload" href="assets/fonts/Inter-SemiBold.woff2" as="font" type="font/woff2" crossorigin>
  <link rel="preload" href="assets/fonts/Inter-Bold.woff2" as="font" type="font/woff2" crossorigin>
  <link href="[[!modxMinify?&group=`styles`]]" rel="stylesheet" media="screen">
  <link rel="prefetch" href="https://www.amcharts.com/lib/3/ammap.js" as="script">
  <link rel="prefetch" href="https://www.amcharts.com/lib/3/maps/js/worldLow.js" as="script">
  <script>
    document.createElement("picture");
  </script>
  <link rel="apple-touch-icon" sizes="180x180" href="assets/img/apple-touch-icon.png">
  <link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicon-16x16.png">
  <link rel="manifest" href="assets/img/site.webmanifest">
  <link rel="mask-icon" href="assets/img/safari-pinned-tab.svg" color="#ffffff">
  <link rel="shortcut icon" href="assets/img/favicon.ico">
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="assets/img/mstile-144x144.png">
  <meta name="msapplication-config" content="assets/img/browserconfig.xml">
  <meta name="theme-color" content="#ffffff"></head>
<body>
<noscript>[[$langs? &uk=`У вас відключений JavaScript. Приносимо наші вибачення, але це робить скрутним використання даного сайту` &ru=`У вас отключен JavaScript. Приносим наши извинения, но это делает затруднительным использование данного сайта` &en=`You have javascript disabled. We apologize, but this makes it difficult to use this site`]]!</noscript>
<div id="content-wrapper" class="page__inner">
  <div class="page__content">

    <header class="page-header" role="banner">
      <div class="container">
        <div class="page-header__inner">
          <a [[*template:ne=`1`:then=`href="[[++site_url]]"`:else=`style="pointer-events:none;"`]] class="logo" title="[[++site_name]]">
            <img src="assets/img/leopard-agri-service-logo.svg" alt="[[++site_name]] logo" width="142" height="42">
          </a>
          <div class="page-header__burger-wrapper">
            <a href="#offcanvas" class="burger" aria-labelledby="burger-menu"><span></span></a>
            <span id="burger-menu" class="burger__title">[[$langs? &uk=`Меню` &en=`Menu`]]</span>
          </div>
          <div class="page-header__service-menu">

            {include 'file:chunks/socials_block.tpl'}

            <div class="page-header__dropdowns">
              <div class="dropdown  phone-dropdown">
                <a href="tel:+[[++main_tel]]" class="phone-dropdown__link  phone-dropdown__link--main">[[++main_tel:phone_format]]</a>
                <button type="button" class="dropdown-toggle dropdown-toggle-split phone-dropdown__toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <span class="visually-hidden">[[$langs? &uk=`Увімкнути спадне меню` &en=`Toggle Dropdown`]]</span>
                </button>
                <div class="dropdown-menu">
                  <ul class="list-nostyled">
                    [[++add_tel1:notempty=`
                    <li>
                      <a href="tel:+[[++add_tel1]]" class="phone-dropdown__link">[[++add_tel1:phone_format]]</a>
                    </li>
                    `]]
                    [[++add_tel2:notempty=`
                    <li>
                      <a href="tel:+[[++add_tel2]]" class="phone-dropdown__link">[[++add_tel2:phone_format]]</a>
                    </li>
                    `]]
                    [[++add_tel3:notempty=`
                    <li>
                      <a href="tel:+[[++add_tel3]]" class="phone-dropdown__link">[[++add_tel3:phone_format]]</a>
                    </li>
                    `]]
                  </ul>
                </div>
              </div>
              <div class="lang-switcher  dropdown" id="lang-switcher">
                <button class="dropdown-toggle" type="button" id="lang-switcher-toggler" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <svg width="26" height="26">
                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="assets/img/sprite-svg.svg#lang-switcher-icon"/>
                  </svg>
                </button>
                <div class="dropdown-menu" aria-labelledby="lang-switcher">
                  <ul class="list-nostyled">
                    [[BabelLinks? &tpl=`BabelLinksTpl` &showCurrent=`0`]]
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>

    {block 'main'}

    {/block}

  </div>
  <div class="page__footer-wrapper">

    <footer class="page-footer" role="contentinfo">
      <div class="container">
        <div class="page-footer__content">
          <h2>[[$langs? &uk=`Меню` &en=`Menu`]]</h2>
          <div class="row">
            <div class="page-footer__col-menu">
              <div class="page-footer__menu" role="navigation">
                [[pdoMenu?
                &parents=`0`
                &resources=`
                  -[[BabelTranslation:default=`1`? &resourceId=`1` &contextKey=`[[*context_key]]`]],
                  -[[BabelTranslation:default=`11`? &resourceId=`11` &contextKey=`[[*context_key]]`]]
                `
                &level=`1`
                &tplOuter=`@INLINE <ul class="list-nostyled  page-footer__menu-list">[[+wrapper]]</ul>`
                &tpl=`@INLINE <li [[+classes]]><a href="[[+link]]" [[+attributes]]>[[+menutitle]]</a>[[+wrapper]]</li>`
                &tplHere=`@INLINE <li class="active"><a style="pointer-events:none; color:rgb(0, 188, 104);">[[+menutitle]]</a>[[+wrapper]]</li>`
                ]]
              </div>
            </div>
            <div class="page-footer__col-contacts">
              <div class="page-footer__contacts">
                <h3 class="page-footer__contacts-title">
                  <a href="[[~[[BabelTranslation:default=`11`? &resourceId=`11` &contextKey=`[[*context_key]]`]]]]">
                    [[pdoField? &id=`[[BabelTranslation:default=`11`? &resourceId=`11` &contextKey=`[[*context_key]]`]]` &field=`pagetitle`]]
                  </a>
                </h3>
                <ul class="list-nostyled  page-footer__links">
                  <li>
                    <a href="tel:+[[++main_tel]]">[[++main_tel:phone_format]]</a>
                  </li>
                  <li>
                    <a href="mailto:[[++main_email]]">[[++main_email]]</a>
                  </li>
                </ul>

                {include 'file:chunks/socials_block.tpl'}
                
              </div>
            </div>
          </div>
        </div>
        <div class="copyrights">
          <span class="copyrights__owner">© 2018-[[!+currentYear:default=`now`:strtotime:date=`%Y`]] Leopard Agri-Sevice. [[$langs? &uk=`Всі права захищені` &en=`All rights reserved`]].</span>
          <a href="https://it-doors.com" class="copyrights__dev" target="_blank" rel="nofollow noopener" title="It-Doors Outsourcing, [[$langs? &uk=`розробник` &en=`developer`]]">
            <img src="assets/img/it-doors-logo.svg" alt="It-Doors Outsourcing" width="75" height="27">
          </a>
        </div>
      </div>
    </footer>
  </div>
</div>

<!-- The off-canvas menu -->
<nav id="offcanvas" class="mmenu">
  [[pdoMenu?
  &parents=`0`
  &level=`1`
  &tplOuter=`@INLINE <ul>[[+wrapper]]</ul>`
  &tpl=`@INLINE <li [[+classes]]><a href="[[+link]]" [[+attributes]]>[[+menutitle]]</a>[[+wrapper]]</li>`
  &tplHere=`@INLINE <li class="active"><a [[+attributes]]>[[+menutitle]]</a>[[+wrapper]]</li>`
  ]]
</nav>

<div class="modal fade" id="callback" tabindex="-1" role="dialog" aria-labelledby="callbackModal" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="callbackModal">[[$langs? &uk=`Форма зворотного дзвінка` &en=`Callback Form`]]
          <span>[[$langs? &uk=`Всі поля обов'язкові для заповнення` &en=`All fields are required`]]!</span>
        </h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form id="callbackform" action="/" method="post">
          <label class="field-text">
            <span class="field-text__input-wrap">
              <input class="field-text__input  field-text__input--required" type="text" name="name" value="" placeholder="[[$langs? &uk=`Ваше ім'я` &en=`Your name`]]">
              <span class="field-text__help-text  error"></span>
            </span>
          </label>
          <label class="field-text">
            <span class="field-text__input-wrap">
              <input class="field-text__input  field-text__input--required" type="tel" name="tel" value="" placeholder="[[$langs? &uk=`Телефон` &en=`Phone`]]">
              <span class="field-text__help-text  error"></span>
            </span>
          </label>
          <div class="field-actions">
            <input class="btn" type="submit" name="submit" value="[[$langs? &uk=`Надіслати` &en=`Submit`]]">
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

{block 'map_scripts'}{/block}
<script src="[[!modxMinify?&group=`scripts`]]"></script>
</body>
</html>
