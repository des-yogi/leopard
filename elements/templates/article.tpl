{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main-content  main-content--noindex" role="main">
    <div class="container">
      {include 'file:chunks/callback_btn.tpl'}
    </div>
    <article class="article">
      <div class="main-content__header" style="background-image: url([[*header_bg:ne=``:then=`[[*header_bg]]`:else=`[[pdoField? &id=`[[BabelTranslation:default=`[[*parent]]`? &resourceId=`[[*parent]]` &contextKey=`[[*context_key]]`]]` &field=`header_bg`]]`]]);">
        <div class="container">
          <div class="row">
            <div class="col-article">
              {include 'file:chunks/breadcrumbs.tpl'}
              [[*parent:is=`[[BabelTranslation:default=`10`? &resourceId=`10` &contextKey=`[[*context_key]]`]]`:then=`
                <span class="publishedon">[[$langs? &uk=`[[*publishedon:date=`%d.%m.%Y`]]` &ru=`[[*publishedon:date=`%d.%m.%Y`]]` &en=`[[*publishedon:date=`%B %d, %Y`]]`]]</span>
              `]]
              <h1 class="main-content__title">[[*longtitle:default=`[[*pagetitle]]`]]</h1>
              [[*introtext:ne=``:then=`<p class="main-content__descr">[[*introtext]]</p>`:else=`
                <div class="main-content__descr">[[*content:ellipsis=`109`]]</div>`]]
            </div>
          </div>
        </div>
      </div>
      <div class="main-content__content  main-content__content--article">
        <div class="container">
          <div class="row">
            <div class="col-article">
              <div>
                [[*content]]
              </div>
            </div>
          </div>
        </div>
      </div>
    </article>
    
    <section class="section">
      <div class="container">
        <h2 class="section__title">
          [[*parent:is=`[[BabelTranslation:default=`8`? &resourceId=`8` &contextKey=`[[*context_key]]`]]`:or:if=`
            [[pdoField? &id=`[[*id]]` &field=`id` &top=`2`]]`:is=`7`:then=`
              [[$langs? &uk=`Інші товари` &ru=`Другие товары` &en=`Other products`]]
          `]]
          [[*parent:is=`[[BabelTranslation:default=`9`? &resourceId=`9` &contextKey=`[[*context_key]]`]]`:then=`
            [[$langs? &uk=`Інші послуги` &ru=`Другие услуги` &en=`Other Services`]]
          `]]
          [[*parent:is=`[[BabelTranslation:default=`10`? &resourceId=`10` &contextKey=`[[*context_key]]`]]`:then=`
            [[$langs? &uk=`Інші новини` &ru=`Другие новости` &en=`Other news`]]
          `]]
        </h2>
        <div class="row">
          [[*parent:is=`[[BabelTranslation:default=`10`? &resourceId=`10` &contextKey=`[[*context_key]]`]]`:then=`
            [[pdoResources?
            &parents=`[[*parent]]`
            &resources=`-[[*id]]`
            &depth=`0`
            &limit=`3`
            &sortby=`{ "publishedon":"DESC" }`
            &tpl=`@FILE chunks/service_mini_card.tpl`
            ]]
          `:else=`
            [[pdoResources?
            &parents=`[[*parent]]`
            &resources=`-[[*id]]`
            &depth=`0`
            &limit=`3`
            &sortby=`RAND()`
            &tpl=`@FILE chunks/service_mini_card.tpl`
            ]]
          `]]
        </div>
        <div class="row section__btn-wrapper">
          <div class="col-1-3  col-1-3--btn">
            <a href="[[~[[*parent]]]]" class="btn">
              [[*parent:is=`[[BabelTranslation:default=`8`? &resourceId=`8` &contextKey=`[[*context_key]]`]]`:or:if=`
                [[pdoField? &id=`[[*id]]` &field=`id` &top=`2`]]`:is=`7`:then=`
                [[$langs? &uk=`Всі товари` &ru=`Все товары` &en=`All products`]]
              `]]
              [[*parent:is=`[[BabelTranslation:default=`9`? &resourceId=`9` &contextKey=`[[*context_key]]`]]`:then=`
                [[$langs? &uk=`Всі послуги` &ru=`Все услуги` &en=`All Services`]]
              `]]
              [[*parent:is=`[[BabelTranslation:default=`10`? &resourceId=`10` &contextKey=`[[*context_key]]`]]`:then=`
                [[$langs? &uk=`Всі новини` &ru=`Все новости` &en=`All news`]]
              `]]
            </a>
          </div>
        </div>
      </div>
    </section>
  </main>
{/block}
