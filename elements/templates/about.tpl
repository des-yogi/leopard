{extends 'file:templates/layout.tpl'}

{block 'main'}
  <main class="main-content  main-content--noindex" role="main">

    <div class="container">
      {include 'file:chunks/callback_btn.tpl'}
    </div>
    
    <div class="article  article--wo-border">
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
      <div class="main-content__content  main-content__content--wo-pad-bottom">
        <div class="container">
          <div class="row">
            [[!getImageList?
            &tvname=`about_intro`
            &tpl=`@CODE:
            <div class="col-1-1-3">
              <h2>[[+title]]</h2>
              <div>[[+text]]</div>
            </div>
            `
            &docid=`[[*id]]`
            &limit=`3`
            ]]
          </div>
        </div>
      </div>
    </div>

    {include 'file:chunks/partnership.tpl'}

    {include 'file:chunks/partners_slider.tpl'}

    {include 'file:chunks/worldwide_map.tpl'}
    
  </main>
{/block}

{block 'map_scripts'}
  {include 'file:chunks/map_scripts.tpl'}
{/block}
