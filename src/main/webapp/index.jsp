<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>VividMarket · modern shopping</title>

  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Plus+Jakarta+Sans:wght@600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous" referrerpolicy="no-referrer" />

  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }
    body {
      font-family: 'Inter', system-ui, sans-serif;
      background: #f6f5fc;
      color: #171725;
      line-height: 1.5;
    }
    :root {
      --primary: #171725;
      --accent: #f97373;
      --accent2: #7c6df0;
      --accent3: #2dd4bf;
      --gold: #fbbf24;
      --orange: #fb923c;
      --bg-card: #ffffff;
      --bg-soft: #fff5f2;
      --shadow: 0 12px 30px rgba(0, 0, 0, 0.03), 0 8px 18px rgba(0, 0, 0, 0.02);
      --radius: 24px;
      --radius-sm: 14px;
      --container: 1240px;
    }

    a { color: inherit; text-decoration: none; }
    .container { max-width: var(--container); margin: 0 auto; padding: 0 20px; }

    /* ===== HEADER ===== */
    header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(255, 255, 255, 0.92);
      backdrop-filter: blur(10px);
      border-bottom: 1px solid #f0eff6;
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 14px;
      padding: 12px 0;
      flex-wrap: wrap;
    }
    .brand {
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-weight: 800;
      font-size: 1.7rem;
      letter-spacing: -0.5px;
      background: linear-gradient(145deg, #f97373, #7c6df0);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .brand i { -webkit-text-fill-color: initial; color: #f97373; margin-right: 6px; }

    nav.main-nav ul {
      display: flex;
      gap: 4px;
      list-style: none;
      align-items: center;
    }
    nav.main-nav li a {
      padding: 8px 18px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 0.95rem;
      display: flex;
      align-items: center;
      gap: 8px;
      color: #4a4a60;
      transition: all 0.2s;
    }
    nav.main-nav li a:hover,
    nav.main-nav li a[aria-current="page"] {
      background: #eeebff;
      color: #5b4bd8;
    }

    .search {
      display: flex;
      align-items: center;
      background: #fff;
      padding: 4px 4px 4px 18px;
      border-radius: 60px;
      border: 1px solid #e9e9f2;
      box-shadow: 0 6px 18px rgba(30, 30, 42, .04);
      min-width: 260px;
      transition: 0.2s;
    }
    .search:focus-within { border-color: #7c6df0; box-shadow: 0 6px 18px rgba(124, 109, 240, .08); }
    .search input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
      font-size: 0.9rem;
      padding: 6px 0;
    }
    .search input::placeholder { color: #9a9ab0; }
    .search button {
      background: var(--accent2);
      border: 0;
      color: #fff;
      width: 42px;
      height: 42px;
      border-radius: 60px;
      cursor: pointer;
      transition: 0.2s;
    }
    .search button:hover { background: #5e4dd6; transform: scale(0.94); }

    .header-actions { display: flex; align-items: center; gap: 8px; }
    .icon-btn {
      background: transparent;
      border: 0;
      font-size: 1.25rem;
      color: #171725;
      transition: 0.2s;
      cursor: pointer;
      width: 42px;
      height: 42px;
      border-radius: 60px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
    }
    .icon-btn:hover { background: rgba(124, 109, 240, 0.08); color: var(--accent2); }
    .cart {
      position: relative;
      display: inline-flex;
      align-items: center;
    }
    .cart-count {
      position: absolute;
      top: -6px;
      right: -6px;
      background: var(--accent);
      color: #fff;
      font-size: 0.7rem;
      font-weight: 700;
      width: 22px;
      height: 22px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      border: 2px solid #fff;
    }
    .mobile-toggle { display: none; background: transparent; border: 0; font-size: 1.6rem; cursor: pointer; }

    .utility-bar {
      background: #171725; color: #fff; font-size: .82rem;
      padding: 7px 0; text-align: center;
    }
    .utility-bar strong { color: #fbbf24; }

    /* ===== HERO ===== */
    .hero {
      margin: 18px auto 0;
      max-width: 1240px;
      border-radius: 32px;
      padding: 64px 20px;
      background:
        radial-gradient(circle at 80% 30%, rgba(255,255,255,.7), transparent 30%),
        linear-gradient(135deg, #ffedea 0%, #edeaff 100%);
      text-align: center;
      position: relative;
      overflow: hidden;
    }
    .hero::after {
      content: "🛍️";
      font-size: 8rem;
      position: absolute;
      right: 10px;
      bottom: -20px;
      opacity: 0.12;
      transform: rotate(6deg);
    }
    .hero h1 {
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-size: clamp(2.4rem, 5vw, 3.8rem);
      font-weight: 800;
      background: linear-gradient(135deg, #171725 20%, #7c6df0 80%);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
      margin-bottom: 12px;
      max-width: 720px;
      margin-left: auto;
      margin-right: auto;
    }
    .hero p {
      max-width: 600px;
      margin: 0 auto 28px;
      font-size: 1.1rem;
      color: #55556b;
    }
    .btn-group {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 16px;
    }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 14px 34px;
      border-radius: 60px;
      font-weight: 700;
      border: 0;
      cursor: pointer;
      transition: all 0.2s;
      font-size: 1rem;
    }
    .btn-primary {
      background: linear-gradient(145deg, var(--accent2), #9b8cff);
      color: #fff;
      box-shadow: 0 8px 24px rgba(124, 109, 240, 0.25);
    }
    .btn-primary:hover {
      transform: translateY(-3px);
      box-shadow: 0 14px 32px rgba(124, 109, 240, 0.35);
    }
    .btn-ghost {
      background: rgba(255, 255, 255, 0.7);
      backdrop-filter: blur(4px);
      color: #171725;
      border: 2px solid rgba(249, 115, 115, 0.15);
    }
    .btn-ghost:hover { background: #fff; border-color: var(--accent); }

    /* ===== SECTIONS ===== */
    .section { padding: 48px 0 24px; }
    .section-title {
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-size: clamp(1.6rem, 3vw, 2.1rem);
      font-weight: 700;
    }
    .section .title { text-align: center; margin-bottom: 28px; }
    .title p { color: #5a5a72; margin-top: 4px; }

    /* ===== CATEGORIES ===== */
    .category-toolbar {
      display: flex; justify-content: space-between; align-items: center;
      gap: 12px; margin-bottom: 18px; flex-wrap: wrap;
    }
    .filter-hint { color: #77778d; font-size: .9rem; }
    .clear-filter {
      border: 1px solid #e5e5ef; background: #fff; color: #55556b;
      border-radius: 999px; padding: 8px 16px; cursor: pointer; font-weight: 600;
      transition: 0.2s;
    }
    .clear-filter:hover { background: #f5f3ff; border-color: #b7abf5; }

    .categories {
      display: grid;
      grid-template-columns: repeat(6, minmax(0, 1fr));
      gap: 14px;
    }
    .cat-card {
      background: #fff;
      border-radius: var(--radius);
      padding: 18px 8px;
      text-align: center;
      border: 1px solid #eeedf5;
      box-shadow: 0 6px 20px rgba(30, 30, 42, .04);
      transition: all 0.2s;
      cursor: pointer;
    }
    .cat-card:hover {
      transform: translateY(-4px);
      border-color: #c6bfff;
      box-shadow: 0 12px 28px rgba(124, 109, 240, .08);
    }
    .cat-card.active { border-color: #7c6df0; background: #f6f4ff; }
    .cat-card .icon {
      font-size: 2.2rem;
      background: linear-gradient(145deg, #f97373, #fbbf24);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
      margin-bottom: 4px;
    }
    .cat-card h4 { font-weight: 700; font-size: 0.95rem; margin-top: 4px; }
    .cat-card .muted { color: #8888a0; font-size: 0.75rem; margin-top: 2px; }

    /* ===== PRODUCTS ===== */
    .product-toolbar {
      display: flex; justify-content: space-between; align-items: center;
      margin-bottom: 18px; gap: 12px; flex-wrap: wrap;
    }
    .result-count { color: #77778d; font-size: .9rem; }
    .sort-select {
      border: 1px solid #e5e5ef; border-radius: 14px; padding: 9px 14px;
      background: #fff; color: #333348; font: inherit; cursor: pointer;
      transition: 0.2s;
    }
    .sort-select:focus { border-color: #7c6df0; outline: none; }

    .products {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 20px;
    }
    .product {
      background: #fff;
      border-radius: var(--radius);
      overflow: hidden;
      border: 1px solid #eeedf5;
      box-shadow: 0 7px 24px rgba(30, 30, 42, .04);
      transition: all 0.25s;
      display: flex;
      flex-direction: column;
      position: relative;
    }
    .product:hover {
      transform: translateY(-5px);
      border-color: #d6ceff;
      box-shadow: 0 18px 36px rgba(30, 30, 42, .08);
    }
    .product img {
      width: 100%;
      height: 210px;
      object-fit: cover;
      background: #f2edea;
    }
    .product-body { padding: 16px 16px 4px; flex: 1; }
    .product-body h5 { font-weight: 700; font-size: 1.05rem; line-height: 1.35; margin-bottom: 2px; }
    .product-body .category-tag {
      font-size: 0.7rem;
      color: var(--accent2);
      font-weight: 600;
      text-transform: uppercase;
      letter-spacing: 0.5px;
    }
    .price-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-top: 6px;
    }
    .price { font-weight: 700; font-size: 1.2rem; color: #171725; }
    .old-price { color: #9a9ab0; text-decoration: line-through; font-size: 0.9rem; margin-left: 6px; }
    .rating { color: #fbbf24; font-size: 0.9rem; }
    .product-footer {
      padding: 12px 16px 16px;
      display: flex;
      gap: 10px;
      align-items: center;
    }
    .add-btn {
      flex: 1;
      background: linear-gradient(145deg, var(--accent2), #9b8cff);
      color: #fff;
      border: 0;
      padding: 12px 0;
      border-radius: 60px;
      font-weight: 700;
      cursor: pointer;
      transition: 0.2s;
      min-height: 44px;
    }
    .add-btn:hover { transform: scale(0.96); box-shadow: 0 8px 18px rgba(124, 109, 240, 0.2); }
    .wish-btn {
      background: #f5f0ee;
      border: 0;
      width: 44px;
      border-radius: 60px;
      cursor: pointer;
      transition: 0.2s;
      color: #171725;
      height: 44px;
    }
    .wish-btn:hover { background: var(--accent); color: #fff; }
    .wish-btn.active { background: #ffedf2; color: #f97373; }
    .badge {
      position: absolute;
      top: 12px;
      left: 12px;
      background: var(--gold);
      padding: 4px 14px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 0.7rem;
      color: #171725;
      box-shadow: 0 4px 12px rgba(251, 191, 36, 0.3);
    }

    .empty-state {
      grid-column: 1 / -1;
      text-align: center;
      padding: 42px 20px;
      background: #fff;
      border: 1px dashed #d9d9e6;
      border-radius: 20px;
      color: #66667d;
    }
    .empty-state i { font-size: 2.2rem; margin-bottom: 10px; color: #b8b8cc; }

    /* ===== DEAL ===== */
    .deal {
      display: flex;
      gap: 20px;
      background: linear-gradient(145deg, #fff2ed, #ffe8e0);
      border-radius: var(--radius);
      overflow: hidden;
      align-items: stretch;
      border: 1px solid #f0e2dd;
      box-shadow: 0 8px 28px rgba(30, 30, 42, .04);
    }
    .deal img {
      width: 50%;
      height: 300px;
      object-fit: cover;
    }
    .deal .content { padding: 32px 28px; flex: 1; display: flex; flex-direction: column; justify-content: center; }
    .deal .content h3 { font-family: 'Plus Jakarta Sans', sans-serif; font-size: 1.8rem; }
    .timer {
      display: flex;
      gap: 12px;
      margin: 18px 0;
      flex-wrap: wrap;
    }
    .time-box {
      background: #171725;
      color: #fff;
      padding: 10px 14px;
      border-radius: var(--radius-sm);
      min-width: 64px;
      text-align: center;
    }
    .time-box span { font-size: 1.6rem; font-weight: 700; }
    .deal .price { font-size: 2rem; font-weight: 700; }
    .deal-discount { background: #e94f64; color: #fff; padding: 6px 14px; border-radius: 40px; font-weight: 700; }

    /* ===== TESTIMONIALS ===== */
    .testimonials {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 12px;
    }
    .testimonial {
      min-width: 280px;
      background: #fff;
      padding: 22px;
      border-radius: var(--radius);
      box-shadow: var(--shadow);
      border-left: 6px solid var(--accent2);
    }
    .testimonial .rating { color: #fbbf24; font-size: 1rem; }

    /* ===== NEWSLETTER ===== */
    .newsletter {
      background: linear-gradient(145deg, #7c6df0, #b4a7ff);
      color: #fff;
      border-radius: var(--radius);
      padding: 44px 32px;
      text-align: center;
    }
    .newsletter h3 { font-size: 2rem; font-family: 'Plus Jakarta Sans', sans-serif; }
    .newsletter input {
      padding: 14px 22px;
      border-radius: 60px;
      border: 0;
      width: 320px;
      max-width: 100%;
      margin-right: 8px;
      font-size: 1rem;
    }
    .newsletter .btn-primary {
      background: #171725;
      color: #fff;
      box-shadow: none;
    }
    .newsletter .btn-primary:hover { background: #2d2d44; }

    /* ===== FOOTER ===== */
    footer {
      margin-top: 24px;
      padding: 40px 0 24px;
      border-top: 2px solid rgba(124, 109, 240, 0.06);
      color: #5a5a72;
    }

    /* ===== TOAST / CART DRAWER ===== */
    .toast {
      position: fixed; right: 20px; bottom: 20px; z-index: 100;
      background: #171725; color: #fff; padding: 13px 18px;
      border-radius: 16px; box-shadow: 0 12px 30px rgba(0,0,0,.15);
      opacity: 0; transform: translateY(12px); pointer-events: none;
      transition: .25s ease; font-weight: 600;
    }
    .toast.show { opacity: 1; transform: translateY(0); }

    .cart-drawer {
      position: fixed; inset: 0; z-index: 90; pointer-events: none;
    }
    .cart-drawer.open { pointer-events: auto; }
    .cart-overlay {
      position: absolute; inset: 0; background: rgba(20, 20, 35, .38);
      opacity: 0; transition: .25s;
    }
    .cart-drawer.open .cart-overlay { opacity: 1; }
    .cart-panel {
      position: absolute; top: 0; right: 0; width: min(410px, 100%);
      height: 100%; background: #fff; padding: 22px;
      transform: translateX(100%); transition: .28s ease;
      box-shadow: -16px 0 40px rgba(0,0,0,.1); display: flex; flex-direction: column;
    }
    .cart-drawer.open .cart-panel { transform: translateX(0); }
    .cart-header { display: flex; justify-content: space-between; align-items: center; padding-bottom: 16px; border-bottom: 1px solid #eeedf5; }
    .cart-items { flex: 1; overflow: auto; padding: 16px 0; }
    .cart-empty { text-align: center; color: #77778d; padding: 40px 10px; }
    .cart-item { display: flex; gap: 12px; align-items: center; padding: 12px 0; border-bottom: 1px solid #f0f0f5; }
    .cart-item img { width: 62px; height: 62px; object-fit: cover; border-radius: 14px; background: #f4f4f7; }
    .cart-item-info { flex: 1; }
    .cart-item-info strong { display: block; font-size: .9rem; }
    .cart-item-info span { color: #7c6df0; font-weight: 700; font-size: .9rem; }
    .cart-remove { border: 0; background: #f5f5f8; width: 34px; height: 34px; border-radius: 50%; cursor: pointer; }
    .cart-total { border-top: 1px solid #eeedf5; padding-top: 16px; }
    .cart-total-row { display: flex; justify-content: space-between; font-size: 1.05rem; font-weight: 700; margin-bottom: 14px; }
    .checkout-btn { width: 100%; justify-content: center; }

    /* ===== RESPONSIVE ===== */
    @media (max-width: 1024px) {
      .categories { grid-template-columns: repeat(3, 1fr); }
      .products { grid-template-columns: repeat(3, 1fr); }
      .search { min-width: 200px; }
    }
    @media (max-width: 820px) {
      .search { order: 3; width: 100%; min-width: 0; }
      .header-inner { flex-wrap: wrap; }
      .hero { margin-left: 12px; margin-right: 12px; }
      .products { grid-template-columns: repeat(2, 1fr); }
      .categories { grid-template-columns: repeat(3, 1fr); }
      nav.main-nav { display: none; }
      .mobile-toggle { display: inline-block; }
      .deal img { width: 40%; height: 200px; }
    }
    @media (max-width: 600px) {
      .utility-bar { font-size: .75rem; }
      .hero { padding: 44px 16px; border-radius: 22px; }
      .hero h1 { font-size: 2rem; }
      .products { grid-template-columns: 1fr; }
      .categories { grid-template-columns: repeat(2, 1fr); }
      .deal { flex-direction: column; }
      .deal img { width: 100%; height: 200px; }
      .section { padding-top: 36px; }
      .toast { left: 16px; right: 16px; text-align: center; }
      .search { min-width: 0; }
    }

    .sr-only { position: absolute; width: 1px; height: 1px; padding: 0; margin: -1px; overflow: hidden; clip: rect(0,0,0,0); white-space: nowrap; border: 0; }
    html { scroll-behavior: smooth; }
    :focus-visible {
      outline: 3px solid rgba(124,109,240,.45);
      outline-offset: 3px;
      border-radius: 8px;
    }
  </style>
</head>
<body>

  <div class="utility-bar"><i class="fas fa-truck"></i> Free shipping on orders over <strong>$50</strong> · 30-day easy returns</div>

  <header>
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:12px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="menu"><i class="fas fa-bars"></i></button>
        <a class="brand" href="#"><i class="fas fa-store-alt"></i>Vivid<span style="background:linear-gradient(145deg,#7c6df0,#f97373);-webkit-background-clip:text;-webkit-text-fill-color:transparent;">Market</span></a>
      </div>

      <nav class="main-nav" id="mainNav">
        <ul>
          <li><a href="#" aria-current="page"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#"><i class="fas fa-th-large"></i> Categories</a></li>
          <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        </ul>
      </nav>

      <div style="display:flex;align-items:center;gap:12px;flex-wrap:wrap;">
        <div class="search">
          <input type="search" id="searchInput" placeholder="Search for products, brands..." aria-label="Search">
          <button id="searchBtn"><i class="fas fa-search"></i></button>
        </div>
        <div class="header-actions">
          <a class="icon-btn" href="#" title="Account" aria-label="Account"><i class="far fa-user"></i></a>
          <a class="icon-btn" href="#" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></a>
          <a class="cart" href="#" id="cartBtn">
            <i class="fas fa-shopping-bag" style="font-size:1.4rem;"></i>
            <span class="cart-count" id="cartCount">0</span>
          </a>
        </div>
      </div>
    </div>

    <!-- mobile menu -->
    <div id="mobileMenu" style="display:none; background: #fff; border-top:2px solid #f0e8f0; padding: 12px 0;">
      <div class="container">
        <nav>
          <ul style="list-style:none;display:flex;flex-direction:column;gap:10px;padding:0;">
            <li><a href="#" style="font-weight:600;"><i class="fas fa-home"></i> Home</a></li>
            <li><a href="#" style="font-weight:600;"><i class="fas fa-th-large"></i> Categories</a></li>
            <li><a href="#" style="font-weight:600;"><i class="fas fa-fire"></i> Trending</a></li>
            <li><a href="#deals" style="font-weight:600;"><i class="fas fa-tag"></i> Deals</a></li>
          </ul>
        </nav>
      </div>
    </div>
  </header>

  <main>
    <!-- HERO -->
    <section class="hero">
      <div class="container">
        <h1>Discover vibrant finds ✨</h1>
        <p>From tech to fashion — curated picks, exclusive deals, and free delivery. Your next favorite thing is here.</p>
        <div class="btn-group">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Start shopping</button>
          <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-gift"></i> Explore deals</button>
        </div>
      </div>
    </section>

    <!-- CATEGORIES -->
    <section class="section container" aria-labelledby="cat-title">
      <div class="title" id="cat-title">
        <h2 class="section-title">📂 Shop by category</h2>
        <p>Pick a category and start browsing</p>
      </div>
      <div class="category-toolbar">
        <span class="filter-hint" id="filterHint">All categories</span>
        <button class="clear-filter" id="clearFilter" type="button"><i class="fas fa-rotate-left"></i> Show all</button>
      </div>
      <div class="categories" id="categoriesGrid"></div>
    </section>

    <!-- PRODUCTS -->
    <section class="section container" aria-labelledby="prod-title">
      <div class="title" id="prod-title">
        <h2 class="section-title">🔥 Trending now</h2>
        <p>Most loved by our community</p>
      </div>
      <div class="product-toolbar">
        <span class="result-count" id="resultCount">8 products</span>
        <label>
          <span class="sr-only">Sort products</span>
          <select class="sort-select" id="sortSelect" aria-label="Sort products">
            <option value="featured">Sort: Featured</option>
            <option value="price-low">Price: Low → High</option>
            <option value="price-high">Price: High → Low</option>
            <option value="rating">Top rated</option>
          </select>
        </label>
      </div>
      <div class="products" id="productsGrid"></div>
    </section>

    <!-- DEAL -->
    <section id="deals" class="section container">
      <div class="title">
        <h2 class="section-title">⚡ Flash sale</h2>
        <p>Grab it before it's gone</p>
      </div>
      <div class="deal">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2">
        <div class="content">
          <h3>MacBook Air M2</h3>
          <p class="muted" style="color:#5a5a72;">Lightweight, powerful, and available in stunning colors.</p>
          <div class="timer">
            <div class="time-box"><span id="dealDays">0</span><br><small>Days</small></div>
            <div class="time-box"><span id="dealHours">00</span><br><small>Hours</small></div>
            <div class="time-box"><span id="dealMinutes">00</span><br><small>Min</small></div>
            <div class="time-box"><span id="dealSeconds">00</span><br><small>Sec</small></div>
          </div>
          <div style="display:flex;align-items:center;gap:16px;flex-wrap:wrap;">
            <div class="price">$999 <span class="old-price">$1,199</span></div>
            <span class="deal-discount">-17%</span>
          </div>
          <p style="margin:10px 0 4px;">Only <strong>12</strong> left at this price</p>
          <button class="btn btn-primary" id="buyDeal" style="margin-top:10px;"><i class="fas fa-bolt"></i> Grab deal</button>
        </div>
      </div>
    </section>

    <!-- TESTIMONIALS -->
    <section class="section container">
      <div class="title">
        <h2 class="section-title">💬 What our customers say</h2>
        <p>Real feedback from real shoppers</p>
      </div>
      <div class="testimonials" id="testimonials">
        <div class="testimonial">
          <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
          <p style="margin:8px 0;">"Absolutely love the variety! The colors are vibrant and shipping was super fast."</p>
          <div style="display:flex;align-items:center;gap:12px;margin-top:6px;">
            <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="avatar" style="width:44px;height:44px;border-radius:60px;object-fit:cover;">
            <div><strong>Ava Martin</strong><div style="font-size:0.8rem;color:#8888a0;">Verified buyer</div></div>
          </div>
        </div>
        <div class="testimonial">
          <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
          <p style="margin:8px 0;">"Great quality and the checkout was seamless. Will definitely order again."</p>
          <div style="display:flex;align-items:center;gap:12px;margin-top:6px;">
            <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="avatar" style="width:44px;height:44px;border-radius:60px;object-fit:cover;">
            <div><strong>Michael Lee</strong><div style="font-size:0.8rem;color:#8888a0;">Frequent shopper</div></div>
          </div>
        </div>
      </div>
    </section>

    <!-- NEWSLETTER -->
    <section class="section container">
      <div class="newsletter">
        <h3><i class="fas fa-envelope-open-text"></i> Stay in the loop</h3>
        <p style="opacity:0.85;margin-bottom:16px;">Get exclusive offers, early access &amp; style inspiration</p>
        <form id="newsletterForm" style="display:flex;justify-content:center;gap:10px;flex-wrap:wrap;">
          <input type="email" id="newsletterEmail" placeholder="Your email address" required>
          <button class="btn btn-primary" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
        </form>
        <div id="newsletterMsg" style="margin-top:12px;font-size:0.95rem;display:none;"></div>
      </div>
    </section>
  </main>

  <footer>
    <div class="container" style="display:flex;flex-wrap:wrap;gap:32px;justify-content:space-between;align-items:flex-start;">
      <div style="max-width:300px;">
        <div style="font-weight:800;font-size:1.6rem;background:linear-gradient(145deg,#f97373,#7c6df0);-webkit-background-clip:text;-webkit-text-fill-color:transparent;">VividMarket</div>
        <p style="margin-top:6px;color:#5a5a72;">Colorful e‑commerce demo with a modern touch.</p>
        <div style="display:flex;gap:14px;margin-top:12px;">
          <a href="#" class="icon-btn" style="background:#f0ebe8;"><i class="fab fa-facebook-f"></i></a>
          <a href="#" class="icon-btn" style="background:#f0ebe8;"><i class="fab fa-twitter"></i></a>
          <a href="#" class="icon-btn" style="background:#f0ebe8;"><i class="fab fa-instagram"></i></a>
        </div>
      </div>
      <div style="display:flex;gap:48px;flex-wrap:wrap;">
        <div><strong>Company</strong><div style="color:#5a5a72;line-height:2;">About<br>Careers<br>Press</div></div>
        <div><strong>Support</strong><div style="color:#5a5a72;line-height:2;">Help Center<br>Shipping<br>Contact</div></div>
      </div>
    </div>
    <div style="text-align:center;margin-top:28px;color:#9a9ab0;font-size:0.85rem;">© <span id="year"></span> VividMarket · all rights reserved</div>
  </footer>

  <div class="toast" id="toast" role="status" aria-live="polite"></div>

  <div class="cart-drawer" id="cartDrawer" aria-hidden="true">
    <div class="cart-overlay" id="cartOverlay"></div>
    <aside class="cart-panel" aria-label="Shopping cart">
      <div class="cart-header">
        <h2>Your cart</h2>
        <button class="icon-btn" id="closeCart" aria-label="Close cart"><i class="fas fa-times"></i></button>
      </div>
      <div class="cart-items" id="cartItems"></div>
      <div class="cart-total">
        <div class="cart-total-row"><span>Total</span><span id="cartTotal">$0</span></div>
        <button class="btn btn-primary checkout-btn" id="checkoutBtn"><i class="fas fa-lock"></i> Checkout</button>
      </div>
    </aside>
  </div>

  <script>
    // ----- data -----
    const CATEGORIES = [
      { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
    ];

    const PRODUCTS = [
      { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New',
        img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
        category: 'phones' },
      { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
        category: 'laptops' },
      { id: 3, title: 'Apple Watch S8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: '-25%',
        img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
        category: 'accessories' },
      { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
        category: 'footwear' },
      { id: 5, title: 'Sony A7 IV', price: 2499, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
        category: 'gadgets' },
      { id: 6, title: 'Chanel No.5', price: 120, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
        category: 'accessories' },
      { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67,
        img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
        category: 'accessories' },
      { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156,
        img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
        category: 'gadgets' }
    ];

    PRODUCTS.push({
      id: 99, title: 'MacBook Air M2 (Flash Deal)', price: 999, oldPrice: 1199,
      rating: 5, reviews: 312,
      img: 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80',
      category: 'laptops', badge: '⚡ Flash'
    });

    let cart = [];
    const cartCountEl = document.getElementById('cartCount');
    const resultCountEl = document.getElementById('resultCount');
    const filterHintEl = document.getElementById('filterHint');
    const sortSelect = document.getElementById('sortSelect');
    const cartDrawer = document.getElementById('cartDrawer');
    const cartItemsEl = document.getElementById('cartItems');
    const cartTotalEl = document.getElementById('cartTotal');
    const toastEl = document.getElementById('toast');
    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');
    const searchInput = document.getElementById('searchInput');

    function renderCategories(active = '') {
      categoriesGrid.innerHTML = '';
      CATEGORIES.forEach(cat => {
        const div = document.createElement('button');
        div.type = 'button';
        div.className = 'cat-card' + (active === cat.name.toLowerCase() ? ' active' : '');
        div.innerHTML = `
          <div class="icon"><i class="fas ${cat.icon}"></i></div>
          <h4>${cat.name}</h4>
          <div class="muted">Explore</div>
        `;
        div.addEventListener('click', () => {
          searchInput.value = cat.name;
          filterProducts(cat.name);
          document.getElementById('prod-title').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        categoriesGrid.appendChild(div);
      });
    }

    function renderProducts(list) {
      productsGrid.innerHTML = '';
      resultCountEl.textContent = `${list.length} product${list.length === 1 ? '' : 's'}`;

      if (!list.length) {
        productsGrid.innerHTML = `
          <div class="empty-state">
            <i class="fas fa-box-open"></i>
            <h3>No products found</h3>
            <p>Try another search or browse all products.</p>
            <button class="btn btn-ghost" id="emptyReset" type="button" style="margin-top:14px;">Show all products</button>
          </div>`;
        document.getElementById('emptyReset')?.addEventListener('click', clearFilters);
        return;
      }

      list.forEach(p => {
        const el = document.createElement('article');
        el.className = 'product';
        let badgeHtml = p.badge ? `<span class="badge">${p.badge}</span>` : '';
        const wished = localStorage.getItem(`wish-${p.id}`) === '1';
        el.innerHTML = `
          ${badgeHtml}
          <img src="${p.img}" alt="${p.title}" loading="lazy">
          <div class="product-body">
            <h5>${p.title}</h5>
            <div class="category-tag">${p.category}</div>
            <div class="price-row">
              <div><span class="price">$${p.price.toLocaleString()}</span> ${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}</div>
              <div class="rating" aria-label="${p.rating} out of 5 stars">${'★'.repeat(Math.round(p.rating))} <span style="color:#9a9ab0;font-size:0.7rem;">(${p.reviews})</span></div>
            </div>
          </div>
          <div class="product-footer">
            <button class="add-btn" data-id="${p.id}" type="button"><i class="fas fa-cart-plus"></i> Add to cart</button>
            <button class="wish-btn ${wished ? 'active' : ''}" data-wish="${p.id}" aria-label="${wished ? 'Remove from wishlist' : 'Add to wishlist'}" type="button">
              <i class="${wished ? 'fas' : 'far'} fa-heart"></i>
            </button>
          </div>
        `;
        productsGrid.appendChild(el);
      });

      document.querySelectorAll('.add-btn').forEach(btn => {
        btn.addEventListener('click', () => addToCart(Number(btn.dataset.id)));
      });
      document.querySelectorAll('.wish-btn').forEach(btn => {
        btn.addEventListener('click', () => toggleWishlist(Number(btn.dataset.wish), btn));
      });
    }

    function addToCart(id) {
      const p = PRODUCTS.find(x => x.id === id);
      if (!p) return;
      cart.push(p);
      updateCart();
      showToast(`${p.title} added to cart`);
      const btn = document.querySelector(`.add-btn[data-id="${id}"]`);
      if (btn) {
        const orig = btn.innerHTML;
        btn.innerHTML = '<i class="fas fa-check"></i> Added';
        btn.disabled = true;
        setTimeout(() => { btn.innerHTML = orig; btn.disabled = false; }, 900);
      }
    }

    function removeFromCart(index) {
      cart.splice(index, 1);
      updateCart();
    }

    function updateCart() {
      cartCountEl.textContent = cart.length;
      cartItemsEl.innerHTML = '';
      if (!cart.length) {
        cartItemsEl.innerHTML = '<div class="cart-empty"><i class="fas fa-shopping-bag" style="font-size:2rem;margin-bottom:10px;"></i><p>Your cart is empty.</p><p style="font-size:.85rem;margin-top:5px;">Add something you love!</p></div>';
      } else {
        cart.forEach((p, index) => {
          const item = document.createElement('div');
          item.className = 'cart-item';
          item.innerHTML = `
            <img src="${p.img}" alt="${p.title}">
            <div class="cart-item-info"><strong>${p.title}</strong><span>$${p.price.toLocaleString()}</span></div>
            <button class="cart-remove" aria-label="Remove ${p.title}" type="button"><i class="fas fa-trash"></i></button>
          `;
          item.querySelector('.cart-remove').addEventListener('click', () => removeFromCart(index));
          cartItemsEl.appendChild(item);
        });
      }
      const total = cart.reduce((sum, p) => sum + p.price, 0);
      cartTotalEl.textContent = `$${total.toLocaleString()}`;
    }

    function openCart() {
      cartDrawer.classList.add('open');
      cartDrawer.setAttribute('aria-hidden', 'false');
      document.body.style.overflow = 'hidden';
    }

    function closeCart() {
      cartDrawer.classList.remove('open');
      cartDrawer.setAttribute('aria-hidden', 'true');
      document.body.style.overflow = '';
    }

    function showToast(message) {
      toastEl.textContent = message;
      toastEl.classList.add('show');
      clearTimeout(showToast.timer);
      showToast.timer = setTimeout(() => toastEl.classList.remove('show'), 2200);
    }

    function toggleWishlist(id, btn) {
      const active = btn.classList.toggle('active');
      localStorage.setItem(`wish-${id}`, active ? '1' : '0');
      btn.setAttribute('aria-label', active ? 'Remove from wishlist' : 'Add to wishlist');
      btn.innerHTML = `<i class="${active ? 'fas' : 'far'} fa-heart"></i>`;
      showToast(active ? 'Added to wishlist' : 'Removed from wishlist');
    }

    let currentList = PRODUCTS.slice();

    function filterProducts(q) {
      const query = String(q || '').trim().toLowerCase();
      const filtered = !query ? PRODUCTS.slice() : PRODUCTS.filter(p =>
        p.title.toLowerCase().includes(query) ||
        p.category.toLowerCase().includes(query) ||
        (CATEGORIES.find(c => c.id === p.category)?.name || '').toLowerCase().includes(query)
      );
      currentList = filtered;
      filterHintEl.textContent = query ? `Showing results for “${q.trim()}”` : 'All categories';
      renderProducts(applySort(filtered));
      renderCategories(query);
    }

    function applySort(list) {
      const copy = list.slice();
      if (sortSelect.value === 'price-low') copy.sort((a,b) => a.price - b.price);
      if (sortSelect.value === 'price-high') copy.sort((a,b) => b.price - a.price);
      if (sortSelect.value === 'rating') copy.sort((a,b) => b.rating - a.rating || b.reviews - a.reviews);
      return copy;
    }

    function clearFilters() {
      searchInput.value = '';
      sortSelect.value = 'featured';
      currentList = PRODUCTS.slice();
      filterHintEl.textContent = 'All categories';
      renderCategories();
      renderProducts(PRODUCTS.filter(p => p.id !== 99));
    }

    document.getElementById('searchBtn').addEventListener('click', () => filterProducts(searchInput.value));
    searchInput.addEventListener('input', () => filterProducts(searchInput.value));
    searchInput.addEventListener('keydown', (e) => { if (e.key === 'Escape') { searchInput.value=''; clearFilters(); } });
    document.getElementById('clearFilter').addEventListener('click', clearFilters);
    sortSelect.addEventListener('change', () => renderProducts(applySort(currentList)));

    // Mobile toggle
    const mobileToggle = document.getElementById('mobileToggle');
    const mobileMenu = document.getElementById('mobileMenu');
    mobileToggle.addEventListener('click', () => {
      mobileMenu.style.display = mobileMenu.style.display === 'none' || !mobileMenu.style.display ? 'block' : 'none';
    });

    // Newsletter
    document.getElementById('newsletterForm').addEventListener('submit', (e) => {
      e.preventDefault();
      const email = document.getElementById('newsletterEmail').value.trim();
      const msg = document.getElementById('newsletterMsg');
      if (!email || !email.includes('@')) {
        msg.style.display = 'block';
        msg.textContent = 'Please enter a valid email.';
        msg.style.color = '#ffd9d0';
        return;
      }
      msg.style.display = 'block';
      msg.textContent = '🎉 Thanks! You’re subscribed.';
      msg.style.color = '#d5f0e6';
      document.getElementById('newsletterEmail').value = '';
      setTimeout(() => msg.style.display = 'none', 3000);
    });

    // Deal timer (1d 2h from now)
    (function dealTimer() {
      const target = new Date(Date.now() + (26 * 3600 + 20 * 60) * 1000);
      const interval = setInterval(() => {
        const diff = target - Date.now();
        if (diff <= 0) { clearInterval(interval); return; }
        document.getElementById('dealDays').textContent = Math.floor(diff / (24 * 3600 * 1000));
        document.getElementById('dealHours').textContent = String(Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000))).padStart(2,'0');
        document.getElementById('dealMinutes').textContent = String(Math.floor((diff % (3600 * 1000)) / (60 * 1000))).padStart(2,'0');
        document.getElementById('dealSeconds').textContent = String(Math.floor((diff % (60 * 1000)) / 1000)).padStart(2,'0');
      }, 1000);
    })();

    // Buttons
    document.getElementById('shopNow').addEventListener('click', () => {
      document.getElementById('prod-title').scrollIntoView({ behavior: 'smooth' });
    });
    document.getElementById('exploreDeals').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('cartBtn').addEventListener('click', (e) => { e.preventDefault(); openCart(); });
    document.getElementById('closeCart').addEventListener('click', closeCart);
    document.getElementById('cartOverlay').addEventListener('click', closeCart);
    document.addEventListener('keydown', (e) => { if (e.key === 'Escape') closeCart(); });
    document.getElementById('checkoutBtn').addEventListener('click', () => {
      if (!cart.length) { showToast('Your cart is empty'); return; }
      showToast('Checkout is ready for integration');
    });
    document.getElementById('buyDeal').addEventListener('click', () => {
      addToCart(99);
    });

    // Init
    renderCategories();
    renderProducts(PRODUCTS.filter(p => p.id !== 99));
    updateCart();
    document.getElementById('year').textContent = new Date().getFullYear();
  </script>
</body>
</html>
