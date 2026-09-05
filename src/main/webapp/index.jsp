<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, user-scalable=yes">
  <title>HungryGo · food delivery</title>
  <!-- Font Awesome for icons (free) -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    /* Your existing CSS styles here (same as before) */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Segoe UI', Roboto, system-ui, -apple-system, Helvetica, sans-serif;
    }

    body {
      background: #faf8f7;
      color: #1e1e1e;
      display: flex;
      flex-direction: column;
      min-height: 100vh;
    }

    .app {
      max-width: 480px;
      width: 100%;
      margin: 0 auto;
      background: #ffffff;
      box-shadow: 0 0 20px rgba(0,0,0,0.03);
      padding: 16px 20px 30px;
      flex: 1;
      transition: all 0.2s;
    }

    .header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 8px 0 16px;
      border-bottom: 1px solid #f0eeed;
      flex-wrap: wrap;
      gap: 8px;
    }

    .logo-area {
      display: flex;
      align-items: center;
      gap: 6px;
    }

    .logo-icon {
      background: #fc8019;
      color: white;
      width: 38px;
      height: 38px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 22px;
    }

    .brand {
      font-weight: 700;
      font-size: 1.5rem;
      letter-spacing: -0.5px;
      color: #1e1e1e;
    }
    .brand span {
      color: #fc8019;
    }

    .header-actions {
      display: flex;
      gap: 14px;
      color: #4a4a4a;
      font-size: 1.2rem;
    }
    .header-actions i {
      cursor: default;
      transition: 0.1s;
    }
    .header-actions i:hover { color: #fc8019; }

    .location-bar {
      display: flex;
      align-items: center;
      gap: 8px;
      background: #f2f0ef;
      padding: 10px 14px;
      border-radius: 40px;
      margin: 16px 0 18px;
      flex-wrap: wrap;
    }
    .location-bar i {
      color: #fc8019;
      font-size: 1rem;
    }
    .location-bar .loc-text {
      flex: 1;
      font-weight: 500;
      font-size: 0.95rem;
      color: #2d2d2d;
    }
    .location-bar .loc-text small {
      font-weight: 400;
      color: #777;
      margin-left: 6px;
    }
    .location-bar .change {
      color: #fc8019;
      font-weight: 600;
      font-size: 0.8rem;
      background: white;
      padding: 4px 12px;
      border-radius: 40px;
      cursor: default;
    }

    .search-box {
      background: #f2f0ef;
      border-radius: 40px;
      padding: 6px 16px 6px 20px;
      display: flex;
      align-items: center;
      margin-bottom: 22px;
      transition: 0.2s;
      border: 1px solid transparent;
    }
    .search-box:focus-within {
      border-color: #fc8019;
      background: white;
      box-shadow: 0 2px 8px rgba(252, 128, 25, 0.08);
    }
    .search-box i {
      color: #888;
      font-size: 1rem;
    }
    .search-box input {
      border: none;
      background: transparent;
      padding: 12px 12px 12px 8px;
      flex: 1;
      font-size: 0.95rem;
      outline: none;
    }
    .search-box input::placeholder {
      color: #9a9a9a;
      font-weight: 400;
    }

    .category-scroll {
      display: flex;
      gap: 12px;
      overflow-x: auto;
      padding: 6px 0 20px;
      scrollbar-width: thin;
      white-space: nowrap;
      -webkit-overflow-scrolling: touch;
    }
    .category-scroll::-webkit-scrollbar {
      height: 4px;
    }
    .category-scroll::-webkit-scrollbar-thumb {
      background: #ddd;
      border-radius: 20px;
    }
    .chip {
      background: #f2f0ef;
      padding: 8px 18px;
      border-radius: 40px;
      font-size: 0.85rem;
      font-weight: 500;
      color: #333;
      display: inline-flex;
      align-items: center;
      gap: 6px;
      cursor: default;
      transition: 0.1s;
      border: 1px solid transparent;
    }
    .chip i {
      font-size: 0.8rem;
    }
    .chip.active {
      background: #fc8019;
      color: white;
      border-color: #fc8019;
    }
    .chip:hover {
      background: #e7e3e1;
    }
    .chip.active:hover {
      background: #e06f12;
    }

    .category-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 12px;
      margin: 8px 0 22px;
    }
    .category-item {
      background: #f8f6f5;
      border-radius: 16px;
      padding: 14px 6px;
      text-align: center;
      transition: 0.15s;
      border: 1px solid transparent;
      cursor: default;
    }
    .category-item:hover {
      border-color: #fc8019;
      background: #fff6ee;
    }
    .category-item i {
      font-size: 1.6rem;
      color: #fc8019;
      display: block;
      margin-bottom: 6px;
    }
    .category-item span {
      font-size: 0.7rem;
      font-weight: 500;
      color: #333;
    }

    .promo-banner {
      background: linear-gradient(145deg, #fcf3ec, #f8e8dd);
      border-radius: 24px;
      padding: 18px 20px;
      margin: 6px 0 22px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      border: 1px solid #f5ded0;
    }
    .promo-text {
      display: flex;
      flex-direction: column;
    }
    .promo-text strong {
      font-size: 1.1rem;
      font-weight: 700;
    }
    .promo-text span {
      font-size: 0.85rem;
      color: #5f4b3b;
      margin-top: 4px;
    }
    .promo-tag {
      background: #fc8019;
      color: white;
      padding: 6px 16px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 0.75rem;
      letter-spacing: 0.3px;
      cursor: default;
    }

    .section-title {
      display: flex;
      justify-content: space-between;
      align-items: baseline;
      margin: 8px 0 14px;
    }
    .section-title h3 {
      font-weight: 700;
      font-size: 1.2rem;
    }
    .section-title a {
      color: #fc8019;
      font-weight: 600;
      font-size: 0.8rem;
      text-decoration: none;
      cursor: default;
    }

    .restaurant-grid {
      display: flex;
      flex-direction: column;
      gap: 16px;
      margin-bottom: 18px;
    }

    .restaurant-card {
      background: white;
      border-radius: 20px;
      padding: 14px 16px;
      display: flex;
      align-items: center;
      gap: 14px;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.02);
      border: 1px solid #f0eeed;
      transition: 0.15s;
      cursor: default;
    }
    .restaurant-card:hover {
      border-color: #fc8019;
      box-shadow: 0 4px 14px rgba(252, 128, 25, 0.06);
    }

    .restaurant-img {
      width: 60px;
      height: 60px;
      background: #eae3dd;
      border-radius: 16px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 2rem;
      color: #4d3d33;
      flex-shrink: 0;
    }

    .restaurant-info {
      flex: 1;
    }
    .restaurant-info h4 {
      font-weight: 700;
      font-size: 1rem;
    }
    .restaurant-info .meta {
      display: flex;
      flex-wrap: wrap;
      gap: 8px 12px;
      font-size: 0.75rem;
      color: #6b6b6b;
      margin-top: 4px;
    }
    .restaurant-info .meta i {
      color: #fc8019;
      width: 14px;
    }
    .restaurant-info .meta span {
      display: inline-flex;
      align-items: center;
      gap: 4px;
    }

    .restaurant-action {
      background: #f2f0ef;
      border-radius: 40px;
      padding: 6px 14px;
      font-weight: 600;
      font-size: 0.7rem;
      color: #1e1e1e;
      letter-spacing: 0.3px;
      transition: 0.1s;
      cursor: default;
      white-space: nowrap;
    }
    .restaurant-action i {
      margin-right: 4px;
      color: #fc8019;
    }
    .restaurant-action:hover {
      background: #fc8019;
      color: white;
    }
    .restaurant-action:hover i {
      color: white;
    }

    .bottom-nav {
      display: flex;
      justify-content: space-around;
      align-items: center;
      background: white;
      border-top: 1px solid #eeeceb;
      padding: 12px 0 8px;
      margin: 18px -20px 0;
      border-radius: 30px 30px 0 0;
      box-shadow: 0 -4px 12px rgba(0,0,0,0.02);
    }
    .nav-item {
      display: flex;
      flex-direction: column;
      align-items: center;
      font-size: 0.65rem;
      color: #7a7a7a;
      gap: 3px;
      cursor: default;
      transition: 0.1s;
    }
    .nav-item i {
      font-size: 1.3rem;
    }
    .nav-item.active {
      color: #fc8019;
      font-weight: 600;
    }
    .nav-item.active i {
      color: #fc8019;
    }
    .nav-item:hover { color: #fc8019; }

    .spacer { height: 4px; }

    @media (max-width: 400px) {
      .app { padding: 12px 14px 20px; }
      .brand { font-size: 1.2rem; }
      .promo-text strong { font-size: 1rem; }
      .category-grid { grid-template-columns: repeat(3, 1fr); }
    }
  </style>
</head>
<body>
  <div class="app">
    <!-- Project Info Display -->
    <div style="background: #f0f7ff; border-radius: 12px; padding: 8px 14px; margin-bottom: 12px; border-left: 4px solid #fc8019; font-size: 0.7rem; color: #555;">
      <i class="fas fa-code"></i> 
      <strong>in.javahome</strong> · 
      <strong>myweb</strong> · 
      <strong>v8.8.3</strong> 
      <span style="margin-left: 10px; background: #fc8019; color: white; padding: 2px 10px; border-radius: 20px; font-size: 0.6rem;">Nexus ready</span>
    </div>

    <!-- header -->
    <div class="header">
      <div class="logo-area">
        <div class="logo-icon"><i class="fas fa-utensils"></i></div>
        <div class="brand">Hungry<span>Go</span></div>
      </div>
      <div class="header-actions">
        <i class="fas fa-heart" title="Favorites"></i>
        <i class="fas fa-shopping-bag" title="Cart"></i>
        <i class="fas fa-user-circle" title="Profile"></i>
      </div>
    </div>

    <!-- location -->
    <div class="location-bar">
      <i class="fas fa-location-dot"></i>
      <span class="loc-text">Delivery to <strong>New York</strong> <small>• 10 min</small></span>
      <span class="change">Change</span>
    </div>

    <!-- search -->
    <div class="search-box">
      <i class="fas fa-search"></i>
      <input type="text" placeholder="Search for dishes, restaurants..." aria-label="Search">
    </div>

    <!-- CATEGORIES -->
    <div class="category-scroll">
      <span class="chip active"><i class="fas fa-fire"></i> Top picks</span>
      <span class="chip"><i class="fas fa-pizza-slice"></i> Pizza</span>
      <span class="chip"><i class="fas fa-bowl-food"></i> Burgers</span>
      <span class="chip"><i class="fas fa-mug-saucer"></i> Breakfast</span>
      <span class="chip"><i class="fas fa-fish"></i> Sushi</span>
      <span class="chip"><i class="fas fa-cake"></i> Dessert</span>
      <span class="chip"><i class="fas fa-martini-glass"></i> Drinks</span>
      <span class="chip"><i class="fas fa-leaf"></i> Vegan</span>
      <span class="chip"><i class="fas fa-chicken"></i> Chicken</span>
      <span class="chip"><i class="fas fa-bread-slice"></i> Bakery</span>
    </div>

    <!-- CATEGORY GRID -->
    <div class="category-grid">
      <div class="category-item">
        <i class="fas fa-pizza-slice"></i>
        <span>Pizza</span>
      </div>
      <div class="category-item">
        <i class="fas fa-burger"></i>
        <span>Burgers</span>
      </div>
      <div class="category-item">
        <i class="fas fa-bowl-food"></i>
        <span>Noodles</span>
      </div>
      <div class="category-item">
        <i class="fas fa-mug-saucer"></i>
        <span>Beverages</span>
      </div>
      <div class="category-item">
        <i class="fas fa-fish"></i>
        <span>Seafood</span>
      </div>
      <div class="category-item">
        <i class="fas fa-cake"></i>
        <span>Dessert</span>
      </div>
      <div class="category-item">
        <i class="fas fa-leaf"></i>
        <span>Vegan</span>
      </div>
      <div class="category-item">
        <i class="fas fa-chicken"></i>
        <span>Grill</span>
      </div>
    </div>

    <!-- promo banner -->
    <div class="promo-banner">
      <div class="promo-text">
        <strong>🔥 Flat 40% off</strong>
        <span>on your first order · use code <strong>HUNGRY40</strong></span>
      </div>
      <span class="promo-tag">Order now</span>
    </div>

    <!-- restaurant section -->
    <div class="section-title">
      <h3>Popular restaurants</h3>
      <a>View all <i class="fas fa-chevron-right" style="font-size: 0.6rem;"></i></a>
    </div>

    <div class="restaurant-grid">
      <!-- card 1 -->
      <div class="restaurant-card">
        <div class="restaurant-img"><i class="fas fa-burger"></i></div>
        <div class="restaurant-info">
          <h4>Burger House</h4>
          <div class="meta">
            <span><i class="fas fa-star"></i> 4.7 • 25 min</span>
            <span><i class="fas fa-tag"></i> $6.99</span>
          </div>
        </div>
        <div class="restaurant-action"><i class="fas fa-plus-circle"></i> Add</div>
      </div>

      <!-- card 2 -->
      <div class="restaurant-card">
        <div class="restaurant-img"><i class="fas fa-pizza-slice"></i></div>
        <div class="restaurant-info">
          <h4>Pizza Palace</h4>
          <div class="meta">
            <span><i class="fas fa-star"></i> 4.9 • 30 min</span>
            <span><i class="fas fa-tag"></i> $8.50</span>
          </div>
        </div>
        <div class="restaurant-action"><i class="fas fa-plus-circle"></i> Add</div>
      </div>

      <!-- card 3 -->
      <div class="restaurant-card">
        <div class="restaurant-img"><i class="fas fa-bowl-food"></i></div>
        <div class="restaurant-info">
          <h4>Noodle Zen</h4>
          <div class="meta">
            <span><i class="fas fa-star"></i> 4.5 • 20 min</span>
            <span><i class="fas fa-tag"></i> $5.25</span>
          </div>
        </div>
        <div class="restaurant-action"><i class="fas fa-plus-circle"></i> Add</div>
      </div>

      <!-- card 4 -->
      <div class="restaurant-card">
        <div class="restaurant-img"><i class="fas fa-mug-saucer"></i></div>
        <div class="restaurant-info">
          <h4>Brew & Bean</h4>
          <div class="meta">
            <span><i class="fas fa-star"></i> 4.3 • 12 min</span>
            <span><i class="fas fa-tag"></i> $4.00</span>
          </div>
        </div>
        <div class="restaurant-action"><i class="fas fa-plus-circle"></i> Add</div>
      </div>
    </div>

    <!-- extra: quick reorder suggestion -->
    <div style="background: #fcf8f5; border-radius: 20px; padding: 12px 16px; margin: 6px 0 12px; border: 1px solid #f0e8e2;">
      <div style="display: flex; align-items: center; gap: 10px;">
        <i class="fas fa-clock-rotate-left" style="color: #fc8019; font-size: 1.2rem;"></i>
        <span style="font-weight: 500;">Your last order · <span style="color: #fc8019;">Burger House</span></span>
        <span style="margin-left: auto; background: white; padding: 3px 14px; border-radius: 40px; font-size: 0.7rem; font-weight: 600;">Reorder</span>
      </div>
    </div>

    <!-- bottom navigation -->
    <div class="bottom-nav">
      <span class="nav-item active"><i class="fas fa-home"></i> Home</span>
      <span class="nav-item"><i class="fas fa-search"></i> Explore</span>
      <span class="nav-item"><i class="fas fa-shopping-bag"></i> Cart</span>
      <span class="nav-item"><i class="fas fa-user"></i> Account</span>
    </div>

    <!-- tiny footer note -->
    <div style="text-align: center; font-size: 0.6rem; color: #aaa; padding-top: 18px; letter-spacing: 0.2px; border-top: 1px solid #f3f0ee; margin-top: 12px;">
      <i class="fas fa-shield-alt" style="margin-right: 4px;"></i> 100% safe &nbsp;|&nbsp; © HungryGo · food delivery
    </div>
  </div>
</body>
</html>
