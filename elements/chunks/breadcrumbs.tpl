<nav class="breadcrumbs">
  <h4 class="visually-hidden">Постраничная навигация — ваш путь на сайте (Page navigation is your way through the site)</h4>
  [[pdoCrumbs?
  &tplWrapper=`@INLINE <ol class="breadcrumbs__list" itemscope itemtype="http://schema.org/BreadcrumbList">[[+output]]</ol>`
  &tpl=`@INLINE
  <li class="breadcrumbs__item" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
    <a href="[[+link]]" itemprop="item" class="breadcrumbs__link">
      <span itemprop="name">[[+menutitle]]</span>
      <meta itemprop="position" content="[[+idx]]">
    </a>
  </li>`
  &tplCurrent=`@INLINE
  <li class="breadcrumbs__item  active" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
    <a href="[[+link]]" itemprop="item" class="breadcrumbs__link">
      <span itemprop="name">[[+menutitle]]</span>
      <meta itemprop="position" content="[[+idx]]">
    </a>
  </li>`
  &showHome=`1`
  ]]
</nav>
