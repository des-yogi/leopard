{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main-content" role="main">

    <div class="container">
      <div class="callback-btn">
        <button class="callback-btn__item" type="button" data-toggle="modal" data-target="#callback">Call me back</button>
      </div>
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
            <a href="[[~[[BabelTranslation:default=`7`? &resourceId=`7` &contextKey=`[[*context_key]]`]]]]" class="btn">[[$langs? &uk=`Всі товари` &en=`All Products`]]</a>
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
            <a href="[[~[[BabelTranslation:default=`8`? &resourceId=`8` &contextKey=`[[*context_key]]`]]]]" class="btn">[[$langs? &uk=`Всі товари` &en=`All Items`]]</a>
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
          &limit=`9`
          &sortby=`{ "menuindex":"ASC" }`
          &tpl=`@FILE chunks/service_mini_card.tpl`
          &includeTVs=`image`
          ]]
        </div>
        <div class="row section__btn-wrapper">
          <div class="col-1-3  col-1-3--btn">
            <a href="[[~[[BabelTranslation:default=`9`? &resourceId=`9` &contextKey=`[[*context_key]]`]]]]" class="btn">[[$langs? &uk=`Всі послуги` &en=`All Services`]]</a>
          </div>
        </div>
      </div>
    </section>

    <section class="section  section--padding-b  partners-slider">
      <div class="container">
        <h2 class="section__title">
          [[pdoField? &id=`[[BabelTranslation:default=`15`? &resourceId=`15` &contextKey=`[[*context_key]]`]]` &field=`pagetitle`]]
        </h2>
        <div class="swiper-container  partners-slider__container">
          <div class="swiper-wrapper">
            [[!getImageList?
            &tvname=`partners`
            &tpl=`partners_tpl`
            &docid=`[[BabelTranslation:default=`15`? &resourceId=`15` &contextKey=`[[*context_key]]`]]`
            &limit=`20`
            ]]
          </div>
        </div>
      </div>
    </section>

    <section class="section  section--padding-b  partnership">
      <div class="container">
        <h2 class="section__title">Partnership</h2>
        <div class="row">
          <div class="col-1-2  partnership__intro-col">
            <div class="partnership__intro">
              <p class="h4">Let's start cooperation today</p>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet cras urna, malesuada euismod. Vulputate non suspendisse consequat volutpat, tellus. Nisi ac sit lacus, mauris.</p>
            </div>
          </div>
        </div>
        <form class="partnership__form" id="partnershipForm" action="/" method="post">
          <div class="partnership__form-info">
            <p class="h4">Fill the form, please</p>
            <p class="partnership__form-note">Fields marked with * are required!</p>
          </div>
          <div class="row">
            <div class="partnership__form-col">
              <label class="field-text">
                    <span class="field-text__input-wrap">
                      <input class="field-text__input  field-text__input--required" type="text" name="name" value placeholder="Your name">
                      <span class="field-text__help-text  error"></span>
                    </span>
              </label>
              <label class="field-text">
                    <span class="field-text__input-wrap">
                      <input class="field-text__input" type="text" name="company" value placeholder="Company Name">
                      <span class="field-text__help-text  error"></span>
                    </span>
              </label>
            </div>
            <div class="partnership__form-col">
              <label class="field-text">
                    <span class="field-text__input-wrap">
                      <input class="field-text__input  field-text__input--required" type="tel" name="tel" value placeholder="Phone">
                      <span class="field-text__help-text  error"></span>
                    </span>
              </label>
              <label class="field-text">
                    <span class="field-text__input-wrap">
                      <input class="field-text__input  field-text__input--required" type="email" name="email" value placeholder="Email">
                      <span class="field-text__help-text  error"></span>
                    </span>
              </label>
            </div>
            <div class="partnership__form-col  partnership__form-col--flex">
              <label class="field-text  field-text--nomargin">
                    <span class="field-text__input-wrap">
                      <textarea class="field-text__input" name="message" value placeholder="Message"></textarea>
                      <span class="field-text__help-text  error"></span>
                    </span>
              </label>
            </div>
            <div class="partnership__form-col">
              <div class="field-actions">
                <input class="btn  partnership__submit" type="submit" name="submit" value="Submit">
              </div>
              <div class="field-checkbox">
                <label class="field-checkbox__name">
                  <input id="agreement" class="field-checkbox__input" type="checkbox" checked>
                  <span class="field-checkbox__name-text  partnership__agreement-text">I consent to the processing of personal data</span>
                </label>
              </div>
            </div>
          </div>
        </form>
      </div>
    </section>

    <section class="section  last-news">
      <div class="container">
        <h2 class="section__title">
          [[$langs? &uk=`Останні новини` &en=`Last News`]]
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
            <a href="[[~[[BabelTranslation:default=`10`? &resourceId=`10` &contextKey=`[[*context_key]]`]]]]" class="btn">[[$langs? &uk=`Усі новини` &en=`All news`]]</a>
          </div>
        </div>
      </div>
    </section>
  </main>
{/block}
