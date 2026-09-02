<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Shoply · friendly store</title>
  <!-- Font Awesome 6 (free) -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    /* ---------- reset & base ---------- */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Segoe UI', Roboto, system-ui, -apple-system, sans-serif;
      background: #f6f4f2;
      color: #1e1e2a;
      line-height: 1.5;
    }

    .container {
      max-width: 1200px;
      margin: 0 auto;
      padding: 0 20px;
    }

    a {
      text-decoration: none;
      color: inherit;
    }

    /* ---------- buttons ---------- */
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 0.95rem;
      border: none;
      cursor: pointer;
      transition: 0.2s;
      background: #2b2b3a;
      color: #fff;
    }
    .btn:hover {
      transform: translateY(-2px);
      box-shadow: 0 12px 24px rgba(0, 0, 0, 0.06);
    }
    .btn-primary {
      background: #4a6cf7;
      color: #fff;
    }
    .btn-primary:hover {
      background: #3a5cd9;
    }
    .btn-outline {
      background: transparent;
      color: #1e1e2a;
      border: 2px solid #d6d2ce;
    }
    .btn-outline:hover {
      border-color: #4a6cf7;
      background: rgba(74, 108, 247, 0.04);
    }
    .btn-success {
      background: #2ecc71;
      color: #fff;
    }
    .btn-success:hover {
      background: #27ae60;
    }

    /* ---------- header ---------- */
    header {
      background: #ffffff;
      padding: 12px 0;
      border-bottom: 1px solid #ece8e4;
      position: sticky;
      top: 0;
      z-index: 40;
      backdrop-filter: blur(6px);
      background: rgba(255, 255, 255, 0.92);
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 12px;
    }
    .brand {
      font-size: 1.7rem;
      font-weight: 700;
      letter-spacing: -0.5px;
      color: #1e1e2a;
    }
    .brand span {
      color: #4a6cf7;
    }
    .brand i {
      color: #4a6cf7;
      margin-right: 6px;
    }

    nav ul {
      display: flex;
      gap: 4px;
      list-style: none;
    }
    nav ul li a {
      padding: 8px 16px;
      border-radius: 40px;
      font-weight: 500;
      color: #2d2d3f;
      transition: 0.15s;
    }
    nav ul li a:hover {
      background: #f0eeeb;
      color: #4a6cf7;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .icon-btn {
      background: transparent;
      border: 0;
      font-size: 1.2rem;
      width: 42px;
      height: 42px;
      border-radius: 60px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      color: #1e1e2a;
      transition: 0.15s;
      cursor: pointer;
    }
    .icon-btn:hover {
      background: #f0eeeb;
    }
    .cart-icon {
      position: relative;
    }
    .cart-badge {
      position: absolute;
      top: -4px;
      right: -4px;
      background: #4a6cf7;
      color: #fff;
      font-size: 0.65rem;
      font-weight: 700;
      width: 20px;
      height: 20px;
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

    /* ---------- hero ---------- */
    .hero {
      background: linear-gradient(135deg, #f0f4ff, #e8edf9);
      border-radius: 0 0 40px 40px;
      padding: 56px 0 48px;
    }
    .hero-grid {
      display: flex;
      align-items: center;
      gap: 40px;
      flex-wrap: wrap;
    }
    .hero-text {
      flex: 1 1 380px;
    }
    .hero-text h1 {
      font-size: 2.6rem;
      font-weight: 700;
      line-height: 1.2;
      color: #1a1a2c;
    }
    .hero-text h1 span {
      color: #4a6cf7;
    }
    .hero-text p {
      font-size: 1.1rem;
      color: #4a4a60;
      margin: 12px 0 24px;
      max-width: 480px;
    }
    .hero-image {
      flex: 1 1 240px;
      text-align: center;
    }
    .hero-image img {
      width: 100%;
      max-width: 360px;
      border-radius: 30px;
      box-shadow: 0 30px 60px rgba(0, 0, 0, 0.04);
    }
    .hero-badge {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      background: rgba(255, 255, 255, 0.6);
      padding: 6px 16px 6px 12px;
      border-radius: 60px;
      font-size: 0.8rem;
      font-weight: 600;
      margin-bottom: 14px;
      border: 1px solid rgba(74, 108, 247, 0.08);
    }
    .hero-badge i {
      color: #f1c40f;
    }

    /* ---------- categories (pill style) ---------- */
    .section {
      padding: 48px 0 24px;
    }
    .section-title {
      font-size: 1.8rem;
      font-weight: 700;
      margin-bottom: 4px;
    }
    .section-sub {
      color: #6a6a82;
      margin-bottom: 24px;
    }

    .category-pills {
      display: flex;
      flex-wrap: wrap;
      gap: 12px;
      justify-content: center;
    }
    .pill {
      background: #fff;
      padding: 10px 24px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 0.9rem;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.02);
      border: 2px solid transparent;
      transition: 0.15s;
      cursor: pointer;
      display: inline-flex;
      align-items: center;
      gap: 8px;
    }
    .pill:hover {
      border-color: #4a6cf7;
      transform: translateY(-2px);
      background: #f8faff;
    }
    .pill i {
      color: #4a6cf7;
    }

    /* ---------- product grid ---------- */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
      gap: 24px;
    }
    .product-card {
      background: #fff;
      border-radius: 20px;
      overflow: hidden;
      box-shadow: 0 4px 16px rgba(0, 0, 0, 0.02);
      transition: 0.2s;
      border: 1px solid #f0edeb;
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 20px 40px rgba(0, 0, 0, 0.04);
    }
    .product-card img {
      width: 100%;
      height: 180px;
      object-fit: cover;
      background: #f3f0ed;
    }
    .product-body {
      padding: 16px 16px 8px;
    }
    .product-body h4 {
      font-size: 1rem;
      font-weight: 600;
      margin-bottom: 2px;
    }
    .product-body .cat-label {
      font-size: 0.7rem;
      color: #4a6cf7;
      font-weight: 600;
      text-transform: uppercase;
    }
    .product-body .price {
      font-weight: 700;
      font-size: 1.2rem;
      margin-top: 4px;
    }
    .product-body .old-price {
      color: #9a9ab0;
      text-decoration: line-through;
      font-size: 0.9rem;
      margin-left: 6px;
      font-weight: 400;
    }
    .product-actions {
      padding: 8px 16px 16px;
      display: flex;
      gap: 8px;
    }
    .product-actions .btn {
      flex: 1;
      justify-content: center;
      padding: 10px;
      font-size: 0.85rem;
    }
    .wish-btn-sm {
      background: #f5f2ef;
      border: 0;
      width: 44px;
      border-radius: 60px;
      cursor: pointer;
      transition: 0.15s;
      font-size: 1rem;
    }
    .wish-btn-sm:hover {
      background: #4a6cf7;
      color: #fff;
    }
    .badge {
      position: absolute;
      top: 12px;
      left: 12px;
      background: #f1c40f;
      padding: 4px 14px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 0.7rem;
      color: #1e1e2a;
    }
    .product-card {
      position: relative;
    }

    /* ---------- deal banner ---------- */
    .deal-banner {
      background: linear-gradient(135deg, #1e1e2a, #2d2d44);
      color: #fff;
      border-radius: 24px;
      padding: 32px 28px;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      gap: 24px;
      justify-content: space-between;
    }
    .deal-banner .deal-text h3 {
      font-size: 1.8rem;
      font-weight: 700;
    }
    .deal-banner .deal-text p {
      opacity: 0.7;
      margin-top: 4px;
    }
    .deal-timer {
      display: flex;
      gap: 12px;
    }
    .deal-timer .time-block {
      background: rgba(255, 255, 255, 0.06);
      padding: 8px 14px;
      border-radius: 12px;
      text-align: center;
      min-width: 58px;
    }
    .deal-timer .time-block span {
      font-size: 1.4rem;
      font-weight: 700;
      display: block;
    }
    .deal-timer .time-block small {
      font-size: 0.6rem;
      opacity: 0.6;
      text-transform: uppercase;
    }

    /* ---------- testimonial ---------- */
    .testimonial-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 16px;
    }
    .testimonial-card {
      min-width: 260px;
      background: #fff;
      padding: 20px;
      border-radius: 20px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.02);
      border-left: 6px solid #4a6cf7;
    }
    .stars {
      color: #f1c40f;
      letter-spacing: 2px;
      font-size: 0.9rem;
    }
    .testimonial-card p {
      margin: 8px 0 12px;
      font-size: 0.95rem;
    }
    .testimonial-card .avatar {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .testimonial-card .avatar img {
      width: 40px;
      height: 40px;
      border-radius: 60px;
      object-fit: cover;
    }
    .testimonial-card .avatar strong {
      font-size: 0.9rem;
    }

    /* ---------- newsletter ---------- */
    .newsletter-box {
      background: #f0f4ff;
      border-radius: 24px;
      padding: 40px 28px;
      text-align: center;
    }
    .newsletter-box h3 {
      font-size: 1.8rem;
      font-weight: 700;
    }
    .newsletter-box p {
      color: #4a4a60;
      margin-bottom: 16px;
    }
    .newsletter-box form {
      display: flex;
      justify-content: center;
      gap: 10px;
      flex-wrap: wrap;
    }
    .newsletter-box input {
      padding: 12px 20px;
      border-radius: 60px;
      border: 2px solid #d6d2ce;
      font-size: 1rem;
      min-width: 240px;
      background: #fff;
    }
    .newsletter-box input:focus {
      outline: none;
      border-color: #4a6cf7;
    }

    /* ---------- footer ---------- */
    footer {
      background: #1e1e2a;
      color: #c0c0d0;
      padding: 40px 0 20px;
      margin-top: 40px;
    }
    .footer-grid {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 32px;
    }
    .footer-grid .brand {
      color: #fff;
      font-size: 1.4rem;
    }
    .footer-grid .brand span {
      color: #4a6cf7;
    }
    .footer-links {
      display: flex;
      gap: 40px;
      flex-wrap: wrap;
    }
    .footer-links div {
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    .footer-links strong {
      color: #fff;
      font-weight: 600;
    }
    .footer-links a {
      color: #a0a0b8;
      transition: 0.15s;
    }
    .footer-links a:hover {
      color: #4a6cf7;
    }
    .footer-bottom {
      text-align: center;
      border-top: 1px solid rgba(255, 255, 255, 0.04);
      padding-top: 20px;
      margin-top: 28px;
      font-size: 0.85rem;
      color: #7a7a94;
    }

    /* ---------- responsive ---------- */
    @media (max-width: 820px) {
      nav {
        display: none;
      }
      .mobile-toggle {
        display: inline-block;
      }
      .hero-text h1 {
        font-size: 2rem;
      }
      .product-grid {
        grid-template-columns: repeat(2, 1fr);
      }
      .deal-banner {
        flex-direction: column;
        text-align: center;
      }
    }
    @media (max-width: 500px) {
      .product-grid {
        grid-template-columns: 1fr;
      }
      .hero-text h1 {
        font-size: 1.7rem;
      }
      .category-pills .pill {
        padding: 6px 16px;
        font-size: 0.8rem;
      }
      .newsletter-box input {
        min-width: 100%;
      }
    }
  </style>
</head>

<body>

  <!-- ===== HEADER ===== -->
  <header>
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:12px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="menu"><i class="fas fa-bars"></i></button>
        <a href="#" class="brand"><i class="fas fa-store"></i>Shop<span>ly</span></a>
      </div>

      <nav id="mainNav">
        <ul>
          <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-tag"></i> Categories</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deal"><i class="fas fa-clock"></i> Deal</a></li>
        </ul>
      </nav>

      <div class="header-actions">
        <button class="icon-btn" title="Search"><i class="fas fa-search"></i></button>
        <button class="icon-btn" title="Account"><i class="far fa-user"></i></button>
        <a href="#" class="icon-btn cart-icon" title="Cart">
          <i class="fas fa-shopping-bag"></i>
          <span class="cart-badge" id="cartCount">0</span>
        </a>
      </div>
    </div>

    <!-- mobile menu -->
    <div id="mobileMenu" style="display:none; background:#fff; border-top:2px solid #ece8e4; padding:16px 0;">
      <div class="container" style="display:flex;flex-direction:column;gap:10px;">
        <a href="#" style="font-weight:600;"><i class="fas fa-home"></i> Home</a>
        <a href="#categories" style="font-weight:600;"><i class="fas fa-tag"></i> Categories</a>
        <a href="#products" style="font-weight:600;"><i class="fas fa-fire"></i> Trending</a>
        <a href="#deal" style="font-weight:600;"><i class="fas fa-clock"></i> Deal</a>
      </div>
    </div>
  </header>

  <main>

    <!-- ===== HERO ===== -->
    <section class="hero">
      <div class="container hero-grid">
        <div class="hero-text">
          <div class="hero-badge"><i class="fas fa-star"></i> trusted by 12k+ shoppers</div>
          <h1>Discover quality <br><span>made simple</span></h1>
          <p>Curated products with friendly prices, fast delivery, and a smile. Start exploring now.</p>
          <div style="display:flex;flex-wrap:wrap;gap:12px;">
            <a href="#products" class="btn btn-primary"><i class="fas fa-arrow-right"></i> Start shopping</a>
            <a href="#deal" class="btn btn-outline"><i class="fas fa-gift"></i> Today's deal</a>
          </div>
        </div>
        <div class="hero-image">
          <img src="https://images.unsplash.com/photo-1522335789203-aabd1fc54bc9?auto=format&fit=crop&w=600&q=80" alt="happy shopping" loading="lazy">
        </div>
      </div>
    </section>

    <!-- ===== CATEGORIES (pills) ===== -->
    <section class="section container" id="categories">
      <h2 class="section-title">📂 Browse categories</h2>
      <p class="section-sub">Pick a category to find what you love</p>
      <div class="category-pills" id="categoryPills">
        <!-- JS will inject -->
      </div>
    </section>

    <!-- ===== PRODUCTS ===== -->
    <section class="section container" id="products">
      <h2 class="section-title">🔥 Trending products</h2>
      <p class="section-sub">What everyone's adding to cart</p>
      <div class="product-grid" id="productGrid">
        <!-- JS will inject -->
      </div>
    </section>

    <!-- ===== DEAL ===== -->
    <section class="section container" id="deal">
      <div class="deal-banner">
        <div class="deal-text">
          <h3>⏰ Flash deal</h3>
          <p>MacBook Air M2 · save up to 17%</p>
          <div style="display:flex;align-items:center;gap:14px;margin-top:6px;">
            <span style="font-size:1.8rem;font-weight:700;">$999</span>
            <span style="text-decoration:line-through;opacity:0.5;">$1,199</span>
            <span style="background:#ff6b6b;padding:4px 14px;border-radius:40px;font-weight:700;font-size:0.8rem;">-17%</span>
          </div>
        </div>
        <div class="deal-timer" id="dealTimer">
          <div class="time-block"><span id="dDays">0</span><small>days</small></div>
          <div class="time-block"><span id="dHours">00</span><small>hrs</small></div>
          <div class="time-block"><span id="dMinutes">00</span><small>min</small></div>
          <div class="time-block"><span id="dSeconds">00</span><small>sec</small></div>
        </div>
        <button class="btn btn-success" id="dealAddBtn"><i class="fas fa-bolt"></i> Add to cart</button>
      </div>
    </section>

    <!-- ===== TESTIMONIALS ===== -->
    <section class="section container">
      <h2 class="section-title">💬 Real reviews</h2>
      <p class="section-sub">From people who love shopping here</p>
      <div class="testimonial-scroll">
        <div class="testimonial-card">
          <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
          <p>"Super fast delivery and the quality is amazing. Will buy again!"</p>
          <div class="avatar">
            <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="avatar">
            <div><strong>Emma R.</strong><div style="font-size:0.75rem;color:#8888a0;">verified</div></div>
          </div>
        </div>
        <div class="testimonial-card">
          <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
          <p>"Love the variety and the prices. The checkout was super smooth."</p>
          <div class="avatar">
            <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="avatar">
            <div><strong>James K.</strong><div style="font-size:0.75rem;color:#8888a0;">frequent buyer</div></div>
          </div>
        </div>
        <div class="testimonial-card">
          <div class="stars"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
          <p>"Finally a store that feels personal. Great customer support!"</p>
          <div class="avatar">
            <img src="https://images.unsplash.com/photo-1438761681033-6461ffad8d80?auto=format&fit=crop&w=80&q=80" alt="avatar">
            <div><strong>Sophia M.</strong><div style="font-size:0.75rem;color:#8888a0;">happy customer</div></div>
          </div>
        </div>
      </div>
    </section>

    <!-- ===== NEWSLETTER ===== -->
    <section class="section container">
      <div class="newsletter-box">
        <h3>📬 Get the good stuff</h3>
        <p>Subscribe and get 10% off your first order + early access to deals</p>
        <form id="newsletterForm">
          <input type="email" id="newsletterEmail" placeholder="Enter your email" required>
          <button type="submit" class="btn btn-primary"><i class="fas fa-paper-plane"></i> Subscribe</button>
        </form>
        <div id="newsletterMsg" style="margin-top:10px;font-weight:500;display:none;"></div>
      </div>
    </section>

  </main>

  <!-- ===== FOOTER ===== -->
  <footer>
    <div class="container footer-grid">
      <div>
        <div class="brand"><i class="fas fa-store"></i>Shop<span>ly</span></div>
        <p style="color:#8a8aa0;margin-top:6px;">Friendly shopping for everyone.</p>
      </div>
      <div class="footer-links">
        <div>
          <strong>Company</strong>
          <a href="#">About</a>
          <a href="#">Blog</a>
          <a href="#">Careers</a>
        </div>
        <div>
          <strong>Support</strong>
          <a href="#">Help</a>
          <a href="#">Returns</a>
          <a href="#">Contact</a>
        </div>
        <div>
          <strong>Legal</strong>
          <a href="#">Privacy</a>
          <a href="#">Terms</a>
        </div>
      </div>
    </div>
    <div class="container footer-bottom">
      &copy; <span id="year"></span> Shoply · all rights reserved
    </div>
  </footer>

  <script>
    // ---------- data ----------
    const categories = [
      { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
    ];

    const products = [
      { id: 1, title: 'iPhone 14 Pro', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New',
        img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
        category: 'phones' },
      { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86,
        img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
        category: 'laptops' },
      { id: 3, title: 'Apple Watch S8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: '−25%',
        img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
        category: 'accessories' },
      { id: 4, title: 'Nike Air Max', price: 150, rating: 4, reviews: 53,
        img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
        category: 'footwear' },
      { id: 5, title: 'Sony A7 IV', price: 2499, rating: 5, reviews: 42,
        img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
        category: 'gadgets' },
      { id: 6, title: 'Chanel No.5', price: 120, rating: 5, reviews: 189,
        img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
        category: 'accessories' },
      { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67,
        img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
        category: 'accessories' },
      { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156,
        img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
        category: 'gadgets' }
    ];

    // ---------- state ----------
    let cartCount = 0;
    const cartCountEl = document.getElementById('cartCount');

    // ---------- render categories (pills) ----------
    const pillContainer = document.getElementById('categoryPills');
    categories.forEach(cat => {
      const pill = document.createElement('span');
      pill.className = 'pill';
      pill.innerHTML = `<i class="fas ${cat.icon}"></i> ${cat.name}`;
      pill.addEventListener('click', () => {
        // filter products by category (simple client-side)
        const filtered = products.filter(p => p.category === cat.id);
        renderProducts(filtered);
        document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
      });
      pillContainer.appendChild(pill);
    });

    // ---------- render products ----------
    const productGrid = document.getElementById('productGrid');

    function renderProducts(list) {
      productGrid.innerHTML = '';
      list.forEach(p => {
        const card = document.createElement('div');
        card.className = 'product-card';
        let badgeHtml = '';
        if (p.badge) {
          const bg = p.badge.startsWith('−') ? '#ff6b6b' : '#f1c40f';
          badgeHtml = `<span class="badge" style="background:${bg};">${p.badge}</span>`;
        }
        card.innerHTML = `
          ${badgeHtml}
          <img src="${p.img}" alt="${p.title}" loading="lazy">
          <div class="product-body">
            <div class="cat-label">${p.category}</div>
            <h4>${p.title}</h4>
            <div>
              <span class="price">$${p.price}</span>
              ${p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : ''}
            </div>
            <div style="font-size:0.75rem;color:#8888a0;margin-top:2px;">★ ${p.rating} (${p.reviews})</div>
          </div>
          <div class="product-actions">
            <button class="btn btn-primary add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
            <button class="wish-btn-sm" aria-label="wishlist"><i class="far fa-heart"></i></button>
          </div>
        `;
        productGrid.appendChild(card);
      });

      // attach add to cart
      document.querySelectorAll('.add-btn').forEach(btn => {
        btn.addEventListener('click', (e) => {
          const id = Number(btn.dataset.id);
          addToCart(id);
        });
      });
    }

    // ---------- add to cart ----------
    function addToCart(id) {
      const item = products.find(p => p.id === id);
      if (!item) return;
      cartCount++;
      cartCountEl.textContent = cartCount;
      const btn = document.querySelector(`.add-btn[data-id="${id}"]`);
      if (btn) {
        const orig = btn.innerHTML;
        btn.innerHTML = '✓ Added';
        btn.disabled = true;
        setTimeout(() => {
          btn.innerHTML = orig;
          btn.disabled = false;
        }, 1000);
      }
    }

    // ---------- deal timer ----------
    function startDealTimer() {
      const target = new Date(Date.now() + (24 * 3600 + 45 * 60) * 1000);
      setInterval(() => {
        const diff = target - Date.now();
        if (diff <= 0) return;
        document.getElementById('dDays').textContent = Math.floor(diff / (24 * 3600 * 1000));
        document.getElementById('dHours').textContent = String(Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000))).padStart(2, '0');
        document.getElementById('dMinutes').textContent = String(Math.floor((diff % (3600 * 1000)) / (60 * 1000))).padStart(2, '0');
        document.getElementById('dSeconds').textContent = String(Math.floor((diff % (60 * 1000)) / 1000)).padStart(2, '0');
      }, 1000);
    }
    startDealTimer();

    // ---------- deal add ----------
    document.getElementById('dealAddBtn').addEventListener('click', () => {
      cartCount++;
      cartCountEl.textContent = cartCount;
      alert('🔥 MacBook Air added to cart!');
    });

    // ---------- newsletter ----------
    document.getElementById('newsletterForm').addEventListener('submit', (e) => {
      e.preventDefault();
      const email = document.getElementById('newsletterEmail').value.trim();
      const msg = document.getElementById('newsletterMsg');
      if (!email || !email.includes('@')) {
        msg.style.display = 'block';
        msg.textContent = 'Please enter a valid email.';
        msg.style.color = '#e74c3c';
        return;
      }
      msg.style.display = 'block';
      msg.textContent = '✅ You\'re in! Check your inbox.';
      msg.style.color = '#2ecc71';
      document.getElementById('newsletterEmail').value = '';
      setTimeout(() => msg.style.display = 'none', 3000);
    });

    // ---------- mobile toggle ----------
    const mobileToggle = document.getElementById('mobileToggle');
    const mobileMenu = document.getElementById('mobileMenu');
    mobileToggle.addEventListener('click', () => {
      mobileMenu.style.display = mobileMenu.style.display === 'none' || !mobileMenu.style.display ? 'block' : 'none';
    });

    // ---------- init ----------
    renderProducts(products);
    document.getElementById('year').textContent = new Date().getFullYear();
  </script>

</body>
</html>
