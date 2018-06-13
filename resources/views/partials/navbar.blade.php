<nav class="nav">
  <div class="nav__inner">
    <ul class="nav__items nav__items--logo">
      <li><a href="/">{{ setting('site.title') }}</a></li>
    </ul>
    <ul id="menuIcon">
      <li>
        <i class="fas fa-bars nav__menu-icon"></i>
      </li>
    </ul>
    {{ menu('main') }}
  </div>
  <div class="nav__accordion nav__accordion--close">{{ menu('main') }}</div>
</nav>