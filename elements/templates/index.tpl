{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main-content" role="main">
    <div class="container">
      {include 'file:chunks/callback_btn.tpl'}
    </div>
    <section class="b-lazy  index-slider  container" data-src="assets/img/index-slide-bg.jpg">
      <div class="swiper-container index-slider__container">
        <div class="swiper-wrapper">
          [[!getImageList?
          &tvname=`main_slider`
          &tpl=`main_slider_tpl`
          &docid=`[[*id]]`
          &limit=`9`
          ]]
        </div>
        <div class="index-slider__navigation">
          <div class="swiper-button-prev"></div>
          <div class="swiper-pagination"></div>
          <div class="swiper-button-next"></div>
        </div>
      </div>
    </section>

    <section class="section">
      <div class="container">
        <h2 class="section__title">[[pdoField? &id=`[[BabelTranslation:default=`7`? &resourceId=`7` &contextKey=`[[*context_key]]`]]` &field=`pagetitle`]]</h2>
        <div class="row">
          [[pdoResources?
          &parents=`[[BabelTranslation:default=`7`? &resourceId=`7` &contextKey=`[[*context_key]]`]]`
          &depth=`0`
          &limit=`0`
          &sortby=`{ "menuindex":"ASC" }`
          &tpl=`@FILE chunks/media_card.tpl`
          &includeTVs=`image`
          ]]
        </div>
        <div class="row  section__btn-wrapper">
          <div class="col-1-4  col-1-4--btn">
            <a href="[[~[[BabelTranslation:default=`7`? &resourceId=`7` &contextKey=`[[*context_key]]`]]]]" class="btn">[[$langs? &uk=`Всі товари` &ru=`Все товары` &en=`All Products`]]</a>
          </div>
        </div>
      </div>
    </section>

    <section class="section">
      <div class="container">
        <h2 class="section__title">[[pdoField? &id=`[[BabelTranslation:default=`8`? &resourceId=`8` &contextKey=`[[*context_key]]`]]` &field=`pagetitle`]]</h2>
        <div class="row">
          [[pdoResources?
          &parents=`[[BabelTranslation:default=`8`? &resourceId=`8` &contextKey=`[[*context_key]]`]]`
          &depth=`0`
          &limit=`8`
          &where = `{ "display_home":1 }`
          &sortby=`{ "menuindex":"ASC" }`
          &tpl=`@FILE chunks/media_card.tpl`
          &includeTVs=`image,display_home`
          ]]
        </div>
        <div class="row  section__btn-wrapper">
          <div class="col-1-4  col-1-4--btn">
            <a href="[[~[[BabelTranslation:default=`8`? &resourceId=`8` &contextKey=`[[*context_key]]`]]]]" class="btn">[[$langs? &uk=`Всі товари` &ru=`Все товары` &en=`All Items`]]</a>
          </div>
        </div>
      </div>
    </section>

    <section class="section">
      <div class="container">
        <h2 class="section__title">
          [[pdoField? &id=`[[BabelTranslation:default=`9`? &resourceId=`9` &contextKey=`[[*context_key]]`]]` &field=`pagetitle`]]
        </h2>
        <div class="row">
          [[pdoResources?
          &parents=`[[BabelTranslation:default=`9`? &resourceId=`9` &contextKey=`[[*context_key]]`]]`
          &depth=`0`
          &limit=`0`
          &sortby=`{ "menuindex":"ASC" }`
          &tpl=`@FILE chunks/service_mini_card.tpl`
          ]]
        </div>
        <div class="row section__btn-wrapper">
          <div class="col-1-3  col-1-3--btn">
            <a href="[[~[[BabelTranslation:default=`9`? &resourceId=`9` &contextKey=`[[*context_key]]`]]]]" class="btn">[[$langs? &uk=`Всі послуги` &ru=`Все услуги` &en=`All Services`]]</a>
          </div>
        </div>
      </div>
    </section>

    {include 'file:chunks/partners_slider.tpl'}
    {include 'file:chunks/partnership.tpl'}

    <section class="section  last-news">
      <div class="container">
        <h2 class="section__title">
          [[$langs? &uk=`Останні новини` &ru=`Последние новости` &en=`Last News`]]
        </h2>
        <div class="row">
          [[pdoResources?
          &parents=`[[BabelTranslation:default=`10`? &resourceId=`10` &contextKey=`[[*context_key]]`]]`
          &depth=`0`
          &limit=`3`
          &sortby=`{ "publishedon":"DESC" }`
          &tpl=`@FILE chunks/card_vert.tpl`
          &includeTVs=`image`
          ]]
        </div>
        <div class="row  section__btn-wrapper">
          <div class="col-1-3  col-1-3--btn">
            <a href="[[~[[BabelTranslation:default=`10`? &resourceId=`10` &contextKey=`[[*context_key]]`]]]]" class="btn">[[$langs? &uk=`Усі новини` &ru=`Все новости` &en=`All news`]]</a>
          </div>
        </div>
      </div>
    </section>
  </main>
{/block}
