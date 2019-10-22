{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main-content  main-content--noindex" role="main">

    <div class="container">
      {include 'file:chunks/callback_btn.tpl'}
    </div>

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
    
    <div class="main-content__content">
      <div class="container">
        <div class="row">
          [[*template:is=`3`:then=`
              [[pdoResources?
              &parents=`[[*id]]`
              &depth=`0`
              &limit=`0`
              &sortby=`{ "menuindex":"ASC" }`
              &tpl=`@FILE chunks/card_vert.tpl`
              &includeTVs=`image`
              ]]
          `:else=`
              [[!pdoPage@thisSite?
              &parents=`[[*id]]`
              &tpl=`@FILE chunks/card_vert.tpl`
              &sortby=`{ "publishedon":"DESC" }`
              &limit=`9`
              &includeTVs=`image`
              ]]
          `]]
        </div>

        <!--Pagination's block-->
        [[*template:ne=`3`:then=`[[!+page.nav]]`]]

      </div>
    </div>
  </main>
{/block}
