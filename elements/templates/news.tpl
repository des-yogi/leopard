{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main-content  main-content--noindex" role="main">

    <div class="container">
      {include 'file:chunks/callback_btn.tpl'}
    </div>

    <div class="main-content__header" style="background-image: url([[*header_bg:ne=``:then=`[[*header_bg]]`:else=`[[pdoField? &id=`[[BabelTranslation:default=`[[*parent]]`? &resourceId=`[[*parent]]` &contextKey=`[[*context_key]]`]]` &field=`header_bg`]]`]]);">
      <span class="visually-hidden">
        [[pdoField? &id=`[[BabelTranslation:default=`[[*parent]]`? &resourceId=`[[*parent]]` &contextKey=`[[*context_key]]`]]` &field=`header_bg`]]
      </span>
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
    
    <div class="main-content__content">
      <div class="container">
        <div class="row">
          [[!pdoPage@thisSite?
          &parents=`[[*id]]`
          &depth=`0`
          &limit=`4`
          &sortby=`{ "publishedon":"DESC" }`
          &tpl=`@FILE chunks/card_horiz.tpl`
          &includeTVs=`image`
          ]]
        </div>

        [[!+page.nav]]

      </div>
    </div>
  </main>
{/block}
