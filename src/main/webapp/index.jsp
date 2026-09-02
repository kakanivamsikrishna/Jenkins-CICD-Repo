<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop · vibrant</title>

  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous" referrerpolicy="no-referrer" />

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    body {
      font-family: 'Inter', system-ui, sans-serif;
      background: #f9f3f0;
      /* warm pastel base */
      color: #1e1e2a;
      line-height: 1.5;
    }
    :root {
      --primary: #1e1e2a;
      --accent: #ff7b9c;
      --accent2: #6c5ce7;
      --accent3: #00c9a7;
      --yellow: #fdcb6e;
      --orange: #f39c12;
      --bg-card: #ffffff;
      --bg-soft: #fff5f2;
      --shadow: 0 12px 28px rgba(0, 0, 0, 0.04), 0 6px 16px rgba(0, 0, 0, 0.02);
      --radius: 20px;
      --radius-sm: 14px;
      --container: 1200px;
    }

    a {
      color: inherit;
      text-decoration: none;
    }
    .container {
      max-width: var(--container);
      margin: 0 auto;
      padding: 0 20px;
    }

    /* ===== HEADER ===== */
    header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(255, 248, 245, 0.88);
      backdrop-filter: blur(8px);
      border-bottom: 2px solid rgba(255, 123, 156, 0.15);
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 12px;
      padding: 12px 0;
      flex-wrap: wrap;
    }
    .brand {
      font-family: 'Poppins', sans-serif;
      font-weight: 700;
      font-size: 1.6rem;
      background: linear-gradient(135deg, #ff7b9c, #6c5ce7);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
      letter-spacing: -0.5px;
    }
    .brand i {
      -webkit-text-fill-color: initial;
      color: #ff7b9c;
      margin-right: 4px;
    }

    nav.main-nav ul {
      display: flex;
      gap: 6px;
      list-style: none;
      align-items: center;
    }
    nav.main-nav li a {
      padding: 8px 16px;
      border-radius: 40px;
      font-weight: 600;
      font-size: 0.95rem;
      display: flex;
      align-items: center;
      gap: 8px;
      color: #1e1e2a;
      transition: all 0.2s;
    }
    nav.main-nav li a:hover {
      background: var(--accent);
      color: #fff;
      box-shadow: 0 4px 12px rgba(255, 123, 156, 0.25);
    }
    nav.main-nav li a i {
      font-size: 1rem;
    }

    .search {
      display: flex;
      align-items: center;
      background: #fff;
      padding: 6px 6px 6px 18px;
      border-radius: 60px;
      box-shadow: 0 2px 12px rgba(0, 0, 0, 0.02);
      border: 1px solid rgba(255, 123, 156, 0.15);
      min-width: 200px;
    }
    .search input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
      font-size: 0.9rem;
      padding: 6px 0;
    }
    .search button {
      background: var(--accent);
      border: 0;
      color: #fff;
      width: 38px;
      height: 38px;
      border-radius: 60px;
      cursor: pointer;
      transition: 0.2s;
    }
    .search button:hover {
      background: #e86384;
      transform: scale(0.95);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 14px;
    }
    .icon-btn {
      background: transparent;
      border: 0;
      font-size: 1.3rem;
      color: #1e1e2a;
      transition: 0.2s;
      cursor: pointer;
      width: 42px;
      height: 42px;
      border-radius: 60px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
    }
    .icon-btn:hover {
      background: rgba(255, 123, 156, 0.12);
      color: var(--accent);
    }
    .cart {
      position: relative;
      display: inline-flex;
      align-items: center;
    }
    .cart-count {
      position: absolute;
      top: -6px;
      right: -6px;
      background: var(--accent2);
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
    .mobile-toggle {
      display: none;
      background: transparent;
      border: 0;
      font-size: 1.6rem;
      cursor: pointer;
    }

    /* ===== HERO ===== */
    .hero {
      background: linear-gradient(145deg, #ffd9d0 0%, #ffe6d5 100%);
      border-radius: 0 0 40px 40px;
      padding: 64px 20px 56px;
      text-align: center;
      position: relative;
      overflow: hidden;
    }
    .hero::after {
      content: "✨";
      font-size: 10rem;
      position: absolute;
      right: -20px;
      bottom: -30px;
      opacity: 0.15;
      transform: rotate(10deg);
    }
    .hero h1 {
      font-family: 'Poppins', sans-serif;
      font-size: 2.8rem;
      font-weight: 700;
      background: linear-gradient(135deg, #1e1e2a 20%, #6c5ce7 80%);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
      margin-bottom: 12px;
      letter-spacing: -0.02em;
    }
    .hero p {
      max-width: 640px;
      margin: 0 auto 28px;
      font-size: 1.1rem;
      color: #2d2d3f;
      opacity: 0.8;
    }
    .btn-group {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 14px;
    }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 14px 32px;
      border-radius: 60px;
      font-weight: 700;
      border: 0;
      cursor: pointer;
      transition: all 0.2s;
      font-size: 1rem;
    }
    .btn-primary {
      background: linear-gradient(135deg, var(--accent2), #a29bfe);
      color: #fff;
      box-shadow: 0 8px 20px rgba(108, 92, 231, 0.25);
    }
    .btn-primary:hover {
      transform: translateY(-3px);
      box-shadow: 0 14px 28px rgba(108, 92, 231, 0.35);
    }
    .btn-ghost {
      background: rgba(255, 255, 255, 0.7);
      backdrop-filter: blur(4px);
      color: #1e1e2a;
      border: 2px solid rgba(255, 123, 156, 0.2);
    }
    .btn-ghost:hover {
      background: #fff;
      border-color: var(--accent);
    }

    /* ===== SECTIONS ===== */
    .section {
      padding: 48px 0 32px;
    }
    .section-title {
      font-family: 'Poppins', sans-serif;
      font-size: 2rem;
      font-weight: 700;
    }
    .section .title {
      text-align: center;
      margin-bottom: 28px;
    }
    .title p {
      color: #5a5a72;
      margin-top: 4px;
    }

    /* ===== CATEGORIES ===== */
    .categories {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 16px;
    }
    .cat-card {
      background: #fff;
      border-radius: var(--radius);
      padding: 20px 12px;
      text-align: center;
      box-shadow: var(--shadow);
      transition: all 0.2s;
      cursor: pointer;
      border: 2px solid transparent;
    }
    .cat-card:hover {
      transform: translateY(-6px);
      border-color: var(--accent);
      box-shadow: 0 18px 36px rgba(255, 123, 156, 0.08);
    }
    .cat-card .icon {
      font-size: 2.2rem;
      background: linear-gradient(135deg, #ff7b9c, #fdcb6e);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
      margin-bottom: 6px;
    }
    .cat-card h4 {
      font-weight: 700;
      font-size: 0.95rem;
      margin-top: 4px;
    }
    .cat-card .muted {
      color: #8888a0;
      font-size: 0.75rem;
      margin-top: 2px;
    }

    /* ===== PRODUCTS ===== */
    .products {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 24px;
    }
    .product {
      background: #fff;
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: all 0.2s;
      display: flex;
      flex-direction: column;
      border: 2px solid transparent;
      position: relative;
    }
    .product:hover {
      transform: translateY(-6px);
      border-color: #ffe0d9;
      box-shadow: 0 24px 48px rgba(0, 0, 0, 0.04);
    }
    .product img {
      width: 100%;
      height: 200px;
      object-fit: cover;
      background: #f1ece9;
    }
    .product-body {
      padding: 16px 16px 6px;
      flex: 1;
    }
    .product-body h5 {
      font-weight: 700;
      font-size: 1rem;
      margin-bottom: 2px;
    }
    .product-body .category-tag {
      font-size: 0.7rem;
      color: var(--accent);
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
    .price {
      font-weight: 700;
      font-size: 1.2rem;
      color: #1e1e2a;
    }
    .old-price {
      color: #9a9ab0;
      text-decoration: line-through;
      font-size: 0.9rem;
      margin-left: 6px;
    }
    .rating {
      color: #f1c40f;
      font-size: 0.9rem;
    }
    .product-footer {
      padding: 12px 16px 16px;
      display: flex;
      gap: 10px;
    }
    .add-btn {
      flex: 1;
      background: linear-gradient(135deg, var(--accent2), #a29bfe);
      color: #fff;
      border: 0;
      padding: 12px 0;
      border-radius: 60px;
      font-weight: 700;
      cursor: pointer;
      transition: 0.2s;
    }
    .add-btn:hover {
      transform: scale(0.96);
      box-shadow: 0 8px 16px rgba(108, 92, 231, 0.2);
    }
    .wish-btn {
      background: #f5f0ee;
      border: 0;
      width: 44px;
      border-radius: 60px;
      cursor: pointer;
      transition: 0.2s;
      color: #1e1e2a;
    }
    .wish-btn:hover {
      background: var(--accent);
      color: #fff;
    }
    .badge {
      position: absolute;
      top: 12px;
      left: 12px;
      background: var(--yellow);
      padding: 4px 14px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 0.7rem;
      color: #1e1e2a;
      box-shadow: 0 4px 12px rgba(253, 203, 110, 0.3);
    }

    /* ===== DEAL ===== */
    .deal {
      display: flex;
      gap: 20px;
      background: linear-gradient(145deg, #fff2ed, #ffe8e0);
      border-radius: var(--radius);
      overflow: hidden;
      align-items: stretch;
    }
    .deal img {
      width: 50%;
      height: 300px;
      object-fit: cover;
    }
    .deal .content {
      padding: 32px 28px;
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal .content h3 {
      font-family: 'Poppins', sans-serif;
      font-size: 1.8rem;
    }
    .timer {
      display: flex;
      gap: 12px;
      margin: 18px 0;
    }
    .time-box {
      background: #1e1e2a;
      color: #fff;
      padding: 10px 14px;
      border-radius: var(--radius-sm);
      min-width: 70px;
      text-align: center;
    }
    .time-box span {
      font-size: 1.6rem;
      font-weight: 700;
    }
    .deal .price {
      font-size: 2rem;
      font-weight: 700;
    }
    .deal-discount {
      background: #ff4757;
      color: #fff;
      padding: 6px 14px;
      border-radius: 40px;
      font-weight: 700;
    }

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
      padding: 20px;
      border-radius: var(--radius);
      box-shadow: var(--shadow);
      border-left: 6px solid var(--accent);
    }
    .testimonial .rating {
      color: #f1c40f;
      font-size: 1rem;
    }

    /* ===== NEWSLETTER ===== */
    .newsletter {
      background: linear-gradient(135deg, #6c5ce7, #a29bfe);
      color: #fff;
      border-radius: var(--radius);
      padding: 44px 32px;
      text-align: center;
    }
    .newsletter h3 {
      font-size: 2rem;
      font-family: 'Poppins', sans-serif;
    }
    .newsletter input {
      padding: 14px 20px;
      border-radius: 60px;
      border: 0;
      width: 320px;
      max-width: 100%;
      margin-right: 8px;
      font-size: 1rem;
    }
    .newsletter .btn-primary {
      background: #1e1e2a;
      color: #fff;
      box-shadow: none;
    }
    .newsletter .btn-primary:hover {
      background: #2d2d44;
    }

    /* ===== FOOTER ===== */
    footer {
      margin-top: 24px;
      padding: 40px 0 24px;
      border-top: 2px solid rgba(255, 123, 156, 0.08);
      color: #5a5a72;
    }

    /* ===== RESPONSIVE ===== */
    @media (max-width: 1024px) {
      .categories {
        grid-template-columns: repeat(3, 1fr);
      }
      .products {
        grid-template-columns: repeat(3, 1fr);
      }
    }
    @media (max-width: 820px) {
      nav.main-nav {
        display: none;
      }
      .mobile-toggle {
        display: inline-block;
      }
      .products {
        grid-template-columns: repeat(2, 1fr);
      }
      .categories {
        grid-template-columns: repeat(2, 1fr);
      }
      .deal img {
        width: 40%;
        height: 200px;
      }
      .hero h1 {
        font-size: 2rem;
      }
    }
    @media (max-width: 600px) {
      .products {
        grid-template-columns: 1fr;
      }
      .categories {
        grid-template-columns: 1fr 1fr;
      }
      .deal {
        flex-direction: column;
      }
      .deal img {
        width: 100%;
        height: 180px;
      }
      .hero h1 {
        font-size: 1.8rem;
      }
      .search {
        min-width: 140px;
      }
      .header-inner {
        gap: 8px;
      }
    }
  </style>
</head>

<body>

  <header>
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:12px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="menu"><i class="fas fa-bars"></i></button>
        <a class="brand" href="#"><i class="fas fa-store-alt"></i>Nexus<span style="background:linear-gradient(135deg,#6c5ce7,#ff7b9c);-webkit-background-clip:text;-webkit-text-fill-color:transparent;">Shop</span></a>
      </div>

      <nav class="main-nav" id="mainNav">
        <ul>
          <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#"><i class="fas fa-th-large"></i> Categories</a></li>
          <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        </ul>
      </nav>

      <div style="display:flex;align-items:center;gap:12px;flex-wrap:wrap;">
        <div class="search">
          <input type="search" id="searchInput" placeholder="Search ..." aria-label="Search">
          <button id="searchBtn"><i class="fas fa-search"></i></button>
        </div>
        <div class="header-actions">
          <a class="icon-btn" href="#" title="Account"><i class="far fa-user"></i></a>
          <a class="icon-btn" href="#" title="Wishlist"><i class="far fa-heart"></i></a>
          <a class="cart" href="#" id="cartBtn">
            <i class="fas fa-shopping-cart" style="font-size:1.4rem;"></i>
            <span class="cart-count" id="cartCount">0</span>
          </a>
        </div>
      </div>
    </div>

    <!-- mobile menu -->
    <div id="mobileMenu" style="display:none; background: #fff; border-top:2px solid #ffe0d9; padding: 12px 0;">
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
        <h1>Fresh finds, vibrant vibes ✨</h1>
        <p>Discover the season’s most colorful picks — from tech to fashion. Limited deals, free shipping &amp; happy shopping.</p>
        <div class="btn-group">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
          <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-gift"></i> Explore deals</button>
        </div>
      </div>
    </section>

    <!-- CATEGORIES -->
    <section class="section container" aria-labelledby="cat-title">
      <div class="title" id="cat-title">
        <h2 class="section-title">🌈 Shop by category</h2>
        <p>Tap a tile to discover your favorite products</p>
      </div>
      <div class="categories" id="categoriesGrid"></div>
    </section>

    <!-- PRODUCTS -->
    <section class="section container" aria-labelledby="prod-title">
      <div class="title" id="prod-title">
        <h2 class="section-title">⭐ Trending now</h2>
        <p>What people are loving this week</p>
      </div>
      <div class="products" id="productsGrid"></div>
    </section>

    <!-- DEAL -->
    <section id="deals" class="section container">
      <div class="title">
        <h2 class="section-title">🔥 Flash sale</h2>
        <p>Hurry, prices go back up soon</p>
      </div>
      <div class="deal">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2">
        <div class="content">
          <h3>MacBook Air M2</h3>
          <p class="muted" style="color:#5a5a72;">Ultraportable, powerful, and now in stunning colors.</p>
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
        <h2 class="section-title">💬 Happy customers</h2>
        <p>Real reviews from real shoppers</p>
      </div>
      <div class="testimonials" id="testimonials">
        <div class="testimonial">
          <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
          <p style="margin:8px 0;">"Absolutely love the variety and the colors! Shipping was super fast."</p>
          <div style="display:flex;align-items:center;gap:12px;margin-top:6px;">
            <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="avatar" style="width:44px;height:44px;border-radius:60px;object-fit:cover;">
            <div><strong>Ava Martin</strong><div style="font-size:0.8rem;color:#8888a0;">Verified buyer</div></div>
          </div>
        </div>
        <div class="testimonial">
          <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
          <p style="margin:8px 0;">"Great quality and the checkout was a breeze. Will definitely order again."</p>
          <div style="display:flex;align-items:center;gap:12px;margin-top:6px;">
            <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="avatar" style="width:44px;height:44px;border-radius:60px;object-fit:cover;">
            <div><strong>Michael Lee</strong><div style="font-size:0.8rem;color:#8888a0;">Frequent buyer</div></div>
          </div>
        </div>
      </div>
    </section>

    <!-- NEWSLETTER -->
    <section class="section container">
      <div class="newsletter">
        <h3><i class="fas fa-envelope-open-text"></i> Stay in the loop</h3>
        <p style="opacity:0.85;margin-bottom:16px;">Get exclusive offers &amp; early access</p>
        <form id="newsletterForm" style="display:flex;justify-content:center;gap:10px;flex-wrap:wrap;">
          <input type="email" id="newsletterEmail" placeholder="Your email" required>
          <button class="btn btn-primary" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
        </form>
        <div id="newsletterMsg" style="margin-top:12px;font-size:0.95rem;display:none;"></div>
      </div>
    </section>
  </main>

  <footer>
    <div class="container" style="display:flex;flex-wrap:wrap;gap:32px;justify-content:space-between;align-items:flex-start;">
      <div style="max-width:300px;">
        <div style="font-weight:700;font-size:1.5rem;background:linear-gradient(135deg,#ff7b9c,#6c5ce7);-webkit-background-clip:text;-webkit-text-fill-color:transparent;">NexusShop</div>
        <p style="margin-top:6px;color:#5a5a72;">Colorful e‑commerce demo with love.</p>
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
    <div style="text-align:center;margin-top:28px;color:#9a9ab0;font-size:0.85rem;">© <span id="year"></span> NexusShop · all rights reserved</div>
  </footer>

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

    let cartCount = 0;
    const cartCountEl = document.getElementById('cartCount');
    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');
    const searchInput = document.getElementById('searchInput');

    function renderCategories() {
      categoriesGrid.innerHTML = '';
      CATEGORIES.forEach(cat => {
        const div = document.createElement('div');
        div.className = 'cat-card';
        div.innerHTML = `
          <div class="icon"><i class="fas ${cat.icon}"></i></div>
          <h4>${cat.name}</h4>
          <div class="muted">explore</div>
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
      list.forEach(p => {
        const el = document.createElement('div');
        el.className = 'product';
        let badgeHtml = '';
        if (p.badge) {
          const bg = p.badge.startsWith('-') ? '#ff7b9c' : '#fdcb6e';
          badgeHtml = `<span class="badge" style="background:${bg};">${p.badge}</span>`;
        }
        el.innerHTML = `
          ${badgeHtml}
          <img src="${p.img}" alt="${p.title}" loading="lazy">
          <div class="product-body">
            <h5>${p.title}</h5>
            <div class="category-tag">${p.category}</div>
            <div class="price-row">
              <div><span class="price">$${p.price.toLocaleString()}</span> ${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}</div>
              <div class="rating">${'★'.repeat(Math.round(p.rating))} <span style="color:#9a9ab0;font-size:0.7rem;">(${p.reviews})</span></div>
            </div>
          </div>
          <div class="product-footer">
            <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
            <button class="wish-btn" aria-label="wishlist"><i class="far fa-heart"></i></button>
          </div>
        `;
        productsGrid.appendChild(el);
      });

      document.querySelectorAll('.add-btn').forEach(btn => {
        btn.addEventListener('click', (e) => {
          const id = Number(btn.dataset.id);
          addToCart(id);
        });
      });
    }

    function addToCart(id) {
      const p = PRODUCTS.find(x => x.id === id);
      if (!p) return;
      cartCount++;
      cartCountEl.textContent = cartCount;
      const btn = document.querySelector(`.add-btn[data-id="${id}"]`);
      if (btn) {
        const orig = btn.innerHTML;
        btn.innerHTML = '✓ Added';
        btn.disabled = true;
        setTimeout(() => { btn.innerHTML = orig;
          btn.disabled = false; }, 1000);
      }
    }

    function filterProducts(q) {
      const query = String(q || '').trim().toLowerCase();
      if (!query) { renderProducts(PRODUCTS); return; }
      const filtered = PRODUCTS.filter(p =>
        p.title.toLowerCase().includes(query) ||
        p.category.toLowerCase().includes(query)
      );
      renderProducts(filtered);
    }

    document.getElementById('searchBtn').addEventListener('click', () => filterProducts(searchInput.value));
    searchInput.addEventListener('keydown', (e) => { if (e.key === 'Enter') filterProducts(e.target.value); });

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
    document.getElementById('shopNow').addEventListener('click', () => document.getElementById('prod-title').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('exploreDeals').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('buyDeal').addEventListener('click', () => { cartCount++; cartCountEl.textContent = cartCount; alert('🔥 Deal added to cart (demo)'); });

    // Init
    renderCategories();
    renderProducts(PRODUCTS);
    document.getElementById('year').textContent = new Date().getFullYear();
  </script>
</body>
</html>
