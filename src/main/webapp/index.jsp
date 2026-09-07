<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, user-scalable=yes">
    <title>ShopHub · Amazon/Flipkart Style</title>
    <!-- Font Awesome 6 (free) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        /* ===== RESET & ROOT VARIABLES ===== */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Roboto, system-ui, -apple-system, sans-serif;
        }

        :root {
            --primary: #ff9900;
            --primary-dark: #e68a00;
            --secondary: #232f3e;
            --light-bg: #f0f2f5;
            --card-shadow: 0 2px 8px rgba(0,0,0,0.08);
            --border-radius: 8px;
            --transition: all 0.2s ease;
        }

        body {
            background: var(--light-bg);
            color: #111;
            min-height: 100vh;
        }

        /* ===== APP CONTAINER ===== */
        .app {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 16px 30px;
            background: #fff;
            box-shadow: 0 0 30px rgba(0,0,0,0.05);
            min-height: 100vh;
        }

        /* ===== HEADER ===== */
        .header {
            background: var(--secondary);
            color: white;
            padding: 12px 20px;
            border-radius: 0 0 12px 12px;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            gap: 12px;
            position: sticky;
            top: 0;
            z-index: 1000;
            box-shadow: 0 2px 10px rgba(0,0,0,0.2);
        }

        .logo-area {
            display: flex;
            align-items: center;
            gap: 8px;
            font-size: 1.6rem;
            font-weight: 700;
            color: white;
            text-decoration: none;
        }
        .logo-area span {
            color: var(--primary);
        }
        .logo-area i {
            font-size: 1.8rem;
            color: var(--primary);
        }

        .header-search {
            flex: 1;
            min-width: 200px;
            max-width: 600px;
            display: flex;
            background: white;
            border-radius: 6px;
            overflow: hidden;
        }
        .header-search input {
            flex: 1;
            padding: 10px 16px;
            border: none;
            outline: none;
            font-size: 0.95rem;
        }
        .header-search button {
            background: var(--primary);
            border: none;
            padding: 10px 20px;
            color: #111;
            cursor: pointer;
            transition: var(--transition);
            font-size: 1rem;
        }
        .header-search button:hover {
            background: var(--primary-dark);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 18px;
            font-size: 0.9rem;
        }
        .header-actions .action-item {
            display: flex;
            flex-direction: column;
            align-items: center;
            cursor: pointer;
            transition: var(--transition);
            color: #ddd;
            position: relative;
        }
        .header-actions .action-item:hover {
            color: white;
        }
        .header-actions .action-item i {
            font-size: 1.3rem;
        }
        .header-actions .action-item span {
            font-size: 0.65rem;
            margin-top: 2px;
        }
        .cart-badge {
            background: var(--primary);
            color: #111;
            border-radius: 50%;
            padding: 1px 7px;
            font-size: 0.7rem;
            font-weight: 700;
            position: absolute;
            top: -8px;
            right: -10px;
        }

        /* ===== LOCATION BAR ===== */
        .location-bar {
            background: #f7f8fa;
            padding: 10px 18px;
            margin: 12px 0 16px;
            border-radius: var(--border-radius);
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            gap: 12px;
            border: 1px solid #e3e6eb;
        }
        .location-bar i {
            color: var(--primary);
            font-size: 1.1rem;
        }
        .location-bar .loc-text {
            font-size: 0.9rem;
        }
        .location-bar .loc-text strong {
            color: var(--secondary);
        }
        .location-bar .change {
            margin-left: auto;
            color: var(--primary);
            font-weight: 600;
            font-size: 0.8rem;
            cursor: pointer;
            padding: 4px 12px;
            border-radius: 20px;
            background: white;
            border: 1px solid #ddd;
        }
        .location-bar .change:hover {
            background: var(--primary);
            color: white;
            border-color: var(--primary);
        }

        /* ===== CATEGORY NAV ===== */
        .category-nav {
            display: flex;
            gap: 6px;
            overflow-x: auto;
            padding: 8px 0 16px;
            scrollbar-width: thin;
            -webkit-overflow-scrolling: touch;
            border-bottom: 1px solid #e3e6eb;
            margin-bottom: 20px;
        }
        .category-nav::-webkit-scrollbar {
            height: 4px;
        }
        .category-nav::-webkit-scrollbar-thumb {
            background: #ccc;
            border-radius: 20px;
        }
        .cat-link {
            white-space: nowrap;
            padding: 8px 20px;
            background: #f0f2f5;
            border-radius: 30px;
            font-size: 0.85rem;
            font-weight: 500;
            color: #333;
            cursor: pointer;
            transition: var(--transition);
            border: 1px solid transparent;
            display: flex;
            align-items: center;
            gap: 6px;
        }
        .cat-link i {
            font-size: 0.9rem;
        }
        .cat-link:hover {
            background: #e3e6eb;
        }
        .cat-link.active {
            background: var(--primary);
            color: #111;
            border-color: var(--primary);
        }
        .cat-link.active i {
            color: #111;
        }

        /* ===== BANNER ===== */
        .banner {
            background: linear-gradient(135deg, #232f3e 0%, #1a2533 100%);
            color: white;
            padding: 24px 28px;
            border-radius: var(--border-radius);
            margin-bottom: 24px;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            position: relative;
            overflow: hidden;
        }
        .banner::after {
            content: '';
            position: absolute;
            right: -50px;
            top: -50px;
            width: 200px;
            height: 200px;
            background: rgba(255, 153, 0, 0.1);
            border-radius: 50%;
        }
        .banner-content h2 {
            font-size: 1.6rem;
            margin-bottom: 6px;
        }
        .banner-content h2 i {
            color: var(--primary);
        }
        .banner-content p {
            opacity: 0.8;
            font-size: 0.95rem;
        }
        .banner-btn {
            background: var(--primary);
            color: #111;
            border: none;
            padding: 12px 30px;
            border-radius: 30px;
            font-weight: 700;
            cursor: pointer;
            transition: var(--transition);
            font-size: 0.95rem;
            z-index: 1;
        }
        .banner-btn:hover {
            transform: scale(1.03);
            box-shadow: 0 4px 15px rgba(255, 153, 0, 0.4);
        }

        /* ===== PRODUCT GRID ===== */
        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: baseline;
            margin: 20px 0 16px;
            flex-wrap: wrap;
            gap: 8px;
        }
        .section-header h3 {
            font-size: 1.3rem;
            font-weight: 700;
        }
        .section-header .view-all {
            color: var(--primary);
            font-weight: 600;
            font-size: 0.85rem;
            cursor: pointer;
        }
        .section-header .view-all:hover {
            text-decoration: underline;
        }

        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
            gap: 20px;
            margin-bottom: 30px;
        }

        .product-card {
            background: white;
            border-radius: var(--border-radius);
            padding: 16px 14px 18px;
            border: 1px solid #e3e6eb;
            transition: var(--transition);
            cursor: pointer;
            position: relative;
        }
        .product-card:hover {
            box-shadow: 0 4px 20px rgba(0,0,0,0.08);
            transform: translateY(-2px);
            border-color: var(--primary);
        }
        .product-card .badge {
            position: absolute;
            top: 10px;
            left: 10px;
            background: #cc0c39;
            color: white;
            font-size: 0.65rem;
            font-weight: 700;
            padding: 3px 10px;
            border-radius: 4px;
            text-transform: uppercase;
        }
        .product-card .badge.green {
            background: #067d62;
        }
        .product-img {
            width: 100%;
            height: 160px;
            background: #f7f8fa;
            border-radius: 6px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 4rem;
            color: #999;
            margin-bottom: 12px;
        }
        .product-title {
            font-weight: 600;
            font-size: 0.95rem;
            margin-bottom: 4px;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }
        .product-rating {
            display: flex;
            align-items: center;
            gap: 4px;
            font-size: 0.8rem;
            color: #555;
            margin: 4px 0;
        }
        .product-rating .stars {
            color: #ffa41c;
        }
        .product-price {
            font-size: 1.2rem;
            font-weight: 700;
            margin: 6px 0;
        }
        .product-price .old {
            font-size: 0.8rem;
            color: #999;
            text-decoration: line-through;
            font-weight: 400;
            margin-left: 8px;
        }
        .product-price .offer {
            font-size: 0.75rem;
            color: #067d62;
            font-weight: 600;
            margin-left: 6px;
        }
        .add-to-cart {
            width: 100%;
            padding: 10px;
            background: var(--primary);
            border: none;
            border-radius: 6px;
            font-weight: 600;
            cursor: pointer;
            transition: var(--transition);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            margin-top: 8px;
        }
        .add-to-cart:hover {
            background: var(--primary-dark);
            transform: scale(1.02);
        }
        .add-to-cart.added {
            background: #067d62;
            color: white;
        }

        /* ===== SHOPPING CART SIDEBAR ===== */
        .cart-overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0,0,0,0.5);
            z-index: 2000;
            backdrop-filter: blur(4px);
        }
        .cart-overlay.open {
            display: block;
        }

        .cart-sidebar {
            position: fixed;
            top: 0;
            right: -420px;
            width: 400px;
            max-width: 90%;
            height: 100%;
            background: white;
            z-index: 2001;
            transition: right 0.3s ease;
            box-shadow: -4px 0 20px rgba(0,0,0,0.15);
            display: flex;
            flex-direction: column;
        }
        .cart-sidebar.open {
            right: 0;
        }

        .cart-header {
            padding: 20px 24px;
            border-bottom: 1px solid #e3e6eb;
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: var(--secondary);
            color: white;
            border-radius: 0 0 12px 12px;
        }
        .cart-header h3 {
            font-size: 1.2rem;
        }
        .cart-header .close-cart {
            background: none;
            border: none;
            color: white;
            font-size: 1.5rem;
            cursor: pointer;
            padding: 4px 10px;
        }
        .cart-header .close-cart:hover {
            background: rgba(255,255,255,0.1);
            border-radius: 6px;
        }

        .cart-items {
            flex: 1;
            overflow-y: auto;
            padding: 16px 20px;
        }
        .cart-item {
            display: flex;
            gap: 14px;
            padding: 12px 0;
            border-bottom: 1px solid #f0f2f5;
            align-items: center;
        }
        .cart-item-img {
            width: 60px;
            height: 60px;
            background: #f7f8fa;
            border-radius: 6px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 2rem;
            color: #999;
            flex-shrink: 0;
        }
        .cart-item-info {
            flex: 1;
        }
        .cart-item-info h4 {
            font-size: 0.9rem;
            margin-bottom: 2px;
        }
        .cart-item-info .price {
            font-weight: 600;
            color: var(--secondary);
        }
        .cart-item-qty {
            display: flex;
            align-items: center;
            gap: 8px;
            margin-top: 4px;
        }
        .cart-item-qty button {
            width: 28px;
            height: 28px;
            border-radius: 50%;
            border: 1px solid #ddd;
            background: white;
            cursor: pointer;
            font-weight: 700;
            transition: var(--transition);
        }
        .cart-item-qty button:hover {
            background: var(--primary);
            color: white;
            border-color: var(--primary);
        }
        .cart-item-qty span {
            font-weight: 600;
            min-width: 20px;
            text-align: center;
        }
        .cart-item-remove {
            color: #cc0c39;
            cursor: pointer;
            font-size: 0.8rem;
            margin-left: 6px;
        }
        .cart-item-remove:hover {
            text-decoration: underline;
        }

        .cart-footer {
            padding: 16px 20px 24px;
            border-top: 1px solid #e3e6eb;
            background: #fafafa;
        }
        .cart-total {
            display: flex;
            justify-content: space-between;
            font-size: 1.1rem;
            font-weight: 700;
            margin-bottom: 12px;
        }
        .checkout-btn {
            width: 100%;
            padding: 14px;
            background: var(--primary);
            border: none;
            border-radius: 8px;
            font-weight: 700;
            font-size: 1rem;
            cursor: pointer;
            transition: var(--transition);
        }
        .checkout-btn:hover {
            background: var(--primary-dark);
            transform: scale(1.01);
        }
        .empty-cart {
            text-align: center;
            padding: 40px 20px;
            color: #999;
        }
        .empty-cart i {
            font-size: 3rem;
            margin-bottom: 12px;
            color: #ddd;
        }

        /* ===== TOAST NOTIFICATION ===== */
        .toast {
            position: fixed;
            bottom: 30px;
            left: 50%;
            transform: translateX(-50%);
            background: var(--secondary);
            color: white;
            padding: 14px 28px;
            border-radius: 30px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.2);
            z-index: 3000;
            display: none;
            align-items: center;
            gap: 12px;
            font-weight: 500;
            animation: slideUp 0.3s ease;
        }
        .toast.show {
            display: flex;
        }
        .toast i {
            color: var(--primary);
            font-size: 1.2rem;
        }
        @keyframes slideUp {
            from { opacity: 0; transform: translateX(-50%) translateY(20px); }
            to { opacity: 1; transform: translateX(-50%) translateY(0); }
        }

        /* ===== RESPONSIVE ===== */
        @media (max-width: 768px) {
            .header {
                padding: 10px 14px;
                flex-wrap: wrap;
            }
            .header-search {
                order: 3;
                flex-basis: 100%;
                max-width: 100%;
            }
            .logo-area {
                font-size: 1.3rem;
            }
            .header-actions .action-item span {
                display: none;
            }
            .banner {
                padding: 18px 20px;
                flex-direction: column;
                align-items: flex-start;
                gap: 14px;
            }
            .banner-content h2 {
                font-size: 1.2rem;
            }
            .product-grid {
                grid-template-columns: repeat(auto-fill, minmax(160px, 1fr));
                gap: 12px;
            }
            .cart-sidebar {
                width: 100%;
                max-width: 100%;
                right: -100%;
            }
            .location-bar {
                font-size: 0.85rem;
                padding: 8px 12px;
            }
        }

        @media (max-width: 480px) {
            .app {
                padding: 0 8px 20px;
            }
            .product-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 10px;
            }
            .product-card {
                padding: 10px 8px 12px;
            }
            .product-img {
                height: 120px;
                font-size: 2.8rem;
            }
            .product-title {
                font-size: 0.8rem;
            }
            .product-price {
                font-size: 1rem;
            }
            .add-to-cart {
                font-size: 0.75rem;
                padding: 8px;
            }
            .banner-content h2 {
                font-size: 1rem;
            }
        }
    </style>
</head>
<body>

    <!-- ===== TOAST ===== -->
    <div class="toast" id="toast">
        <i class="fas fa-check-circle"></i>
        <span id="toastMessage">Item added to cart!</span>
    </div>

    <!-- ===== CART OVERLAY ===== -->
    <div class="cart-overlay" id="cartOverlay" onclick="closeCart()"></div>

    <!-- ===== CART SIDEBAR ===== -->
    <div class="cart-sidebar" id="cartSidebar">
        <div class="cart-header">
            <h3><i class="fas fa-shopping-cart"></i> Your Cart</h3>
            <button class="close-cart" onclick="closeCart()">&times;</button>
        </div>
        <div class="cart-items" id="cartItems">
            <div class="empty-cart">
                <i class="fas fa-shopping-bag"></i>
                <p>Your cart is empty</p>
                <p style="font-size:0.8rem; margin-top:4px;">Add some amazing products!</p>
            </div>
        </div>
        <div class="cart-footer" id="cartFooter" style="display:none;">
            <div class="cart-total">
                <span>Total:</span>
                <span id="cartTotal">$0.00</span>
            </div>
            <button class="checkout-btn" onclick="checkout()">
                <i class="fas fa-lock"></i> Proceed to Checkout
            </button>
        </div>
    </div>

    <!-- ===== MAIN APP ===== -->
    <div class="app">

        <!-- ===== HEADER ===== -->
        <header class="header">
            <a class="logo-area" href="#">
                <i class="fas fa-store"></i>
                Shop<span>Hub</span>
            </a>

            <div class="header-search">
                <input type="text" placeholder="Search for products, brands..." id="searchInput" onkeyup="searchProducts()">
                <button onclick="searchProducts()"><i class="fas fa-search"></i></button>
            </div>

            <div class="header-actions">
                <div class="action-item">
                    <i class="fas fa-user"></i>
                    <span>Account</span>
                </div>
                <div class="action-item" onclick="openCart()">
                    <i class="fas fa-shopping-cart"></i>
                    <span>Cart</span>
                    <span class="cart-badge" id="cartBadge">0</span>
                </div>
            </div>
        </header>

        <!-- ===== LOCATION ===== -->
        <div class="location-bar">
            <i class="fas fa-location-dot"></i>
            <span class="loc-text">Delivering to <strong>New York, 10001</strong></span>
            <span class="change">Change</span>
        </div>

        <!-- ===== CATEGORIES ===== -->
        <nav class="category-nav" id="categoryNav">
            <span class="cat-link active" onclick="filterCategory('all')"><i class="fas fa-th-large"></i> All</span>
            <span class="cat-link" onclick="filterCategory('electronics')"><i class="fas fa-laptop"></i> Electronics</span>
            <span class="cat-link" onclick="filterCategory('fashion')"><i class="fas fa-tshirt"></i> Fashion</span>
            <span class="cat-link" onclick="filterCategory('home')"><i class="fas fa-couch"></i> Home</span>
            <span class="cat-link" onclick="filterCategory('books')"><i class="fas fa-book"></i> Books</span>
            <span class="cat-link" onclick="filterCategory('toys')"><i class="fas fa-gamepad"></i> Toys</span>
            <span class="cat-link" onclick="filterCategory('sports')"><i class="fas fa-football"></i> Sports</span>
        </nav>

        <!-- ===== BANNER ===== -->
        <div class="banner">
            <div class="banner-content">
                <h2><i class="fas fa-bolt"></i> Mega Sale! Up to 70% Off</h2>
                <p>Electronics, Fashion & More – Limited Time Offer</p>
            </div>
            <button class="banner-btn" onclick="scrollToProducts()">Shop Now <i class="fas fa-arrow-right"></i></button>
        </div>

        <!-- ===== PRODUCTS SECTION ===== -->
        <div class="section-header">
            <h3 id="sectionTitle">🔥 Featured Products</h3>
            <span class="view-all" onclick="filterCategory('all')">View All <i class="fas fa-chevron-right" style="font-size:0.6rem;"></i></span>
        </div>

        <div class="product-grid" id="productGrid">
            <!-- Products will be rendered by JavaScript -->
        </div>

        <!-- ===== FOOTER ===== -->
        <div style="text-align: center; padding: 24px 0 12px; border-top: 1px solid #e3e6eb; margin-top: 20px; font-size:0.8rem; color:#888;">
            <i class="fas fa-shield-alt" style="color:var(--primary);"></i> 100% Secure Shopping &nbsp;|&nbsp; © 2026 ShopHub
        </div>
    </div>

    <script>
        // =====================================================
        // PRODUCT DATA
        // =====================================================
        const products = [
            // Electronics
            { id: 1, name: 'Wireless Bluetooth Headphones', category: 'electronics', price: 49.99, oldPrice: 79.99,
                icon: 'fa-headphones', rating: 4.5, reviews: 128, badge: 'Best Seller' },
            { id: 2, name: '4K Ultra HD Smart TV 55"', category: 'electronics', price: 499.99, oldPrice: 699.99,
                icon: 'fa-tv', rating: 4.8, reviews: 342, badge: 'Deal' },
            { id: 3, name: 'Wireless Charging Pad', category: 'electronics', price: 19.99, oldPrice: 29.99,
                icon: 'fa-charging-station', rating: 4.2, reviews: 89, badge: '' },
            { id: 4, name: 'Smart Fitness Tracker Watch', category: 'electronics', price: 89.99, oldPrice: 129.99,
                icon: 'fa-clock', rating: 4.6, reviews: 215, badge: 'New' },

            // Fashion
            { id: 5, name: 'Casual Denim Jacket', category: 'fashion', price: 59.99, oldPrice: 89.99, icon: 'fa-jacket',
                rating: 4.4, reviews: 76, badge: 'Trending' },
            { id: 6, name: 'Running Sneakers Air Max', category: 'fashion', price: 79.99, oldPrice: 119.99,
                icon: 'fa-shoe-prints', rating: 4.7, reviews: 154, badge: '' },
            { id: 7, name: 'Classic Leather Backpack', category: 'fashion', price: 44.99, oldPrice: 64.99,
                icon: 'fa-bag-shopping', rating: 4.3, reviews: 92, badge: 'Eco' },
            { id: 8, name: 'Summer Sunglasses UV', category: 'fashion', price: 24.99, oldPrice: 39.99, icon: 'fa-glasses',
                rating: 4.1, reviews: 67, badge: '' },

            // Home
            { id: 9, name: 'Smart LED Desk Lamp', category: 'home', price: 34.99, oldPrice: 49.99, icon: 'fa-lightbulb',
                rating: 4.5, reviews: 103, badge: '' },
            { id: 10, name: 'Premium Cotton Bed Sheets', category: 'home', price: 39.99, oldPrice: 59.99, icon: 'fa-bed',
                rating: 4.6, reviews: 88, badge: 'Sale' },
            { id: 11, name: 'Kitchen Knife Set 5-Piece', category: 'home', price: 54.99, oldPrice: 79.99,
                icon: 'fa-kitchen-set', rating: 4.8, reviews: 201, badge: 'Top Rated' },
            { id: 12, name: 'Air Purifier HEPA Filter', category: 'home', price: 129.99, oldPrice: 179.99,
                icon: 'fa-wind', rating: 4.4, reviews: 145, badge: '' },

            // Books
            { id: 13, name: 'The Art of Coding - 2nd Ed', category: 'books', price: 29.99, oldPrice: 44.99,
                icon: 'fa-book', rating: 4.9, reviews: 312, badge: 'Bestseller' },
            { id: 14, name: 'SCIENCE FICTION Anthology', category: 'books', price: 19.99, oldPrice: 29.99,
                icon: 'fa-book-open', rating: 4.3, reviews: 67, badge: '' },

            // Toys
            { id: 15, name: 'Building Blocks 500pcs', category: 'toys', price: 24.99, oldPrice: 34.99, icon: 'fa-cubes',
                rating: 4.7, reviews: 156, badge: 'Kids Love' },
            { id: 16, name: 'Remote Control Drone', category: 'toys', price: 69.99, oldPrice: 99.99, icon: 'fa-helicopter',
                rating: 4.2, reviews: 89, badge: 'New' },

            // Sports
            { id: 17, name: 'Professional Yoga Mat', category: 'sports', price: 29.99, oldPrice: 44.99, icon: 'fa-hand-sparkles',
                rating: 4.5, reviews: 134, badge: '' },
            { id: 18, name: 'Adjustable Dumbbell Set', category: 'sports', price: 89.99, oldPrice: 129.99,
                icon: 'fa-dumbbell', rating: 4.8, reviews: 201, badge: 'Hot' },
        ];

        // =====================================================
        // CART STATE
        // =====================================================
        let cart = [];
        let currentCategory = 'all';
        let currentSearch = '';

        // =====================================================
        // DOM REFERENCES
        // =====================================================
        const productGrid = document.getElementById('productGrid');
        const cartItems = document.getElementById('cartItems');
        const cartFooter = document.getElementById('cartFooter');
        const cartTotal = document.getElementById('cartTotal');
        const cartBadge = document.getElementById('cartBadge');
        const toast = document.getElementById('toast');
        const toastMessage = document.getElementById('toastMessage');

        // =====================================================
        // RENDER PRODUCTS
        // =====================================================
        function renderProducts() {
            let filtered = products;

            // Filter by category
            if (currentCategory !== 'all') {
                filtered = filtered.filter(p => p.category === currentCategory);
            }

            // Filter by search
            if (currentSearch.trim() !== '') {
                const searchLower = currentSearch.toLowerCase();
                filtered = filtered.filter(p =>
                    p.name.toLowerCase().includes(searchLower) ||
                    p.category.toLowerCase().includes(searchLower)
                );
            }

            if (filtered.length === 0) {
                productGrid.innerHTML = `
                            <div style="grid-column:1/-1; text-align:center; padding:40px 20px; color:#999;">
                                <i class="fas fa-search" style="font-size:2rem; display:block; margin-bottom:12px;"></i>
                                <p>No products found</p>
                                <p style="font-size:0.8rem; margin-top:4px;">Try adjusting your search or filter</p>
                            </div>
                        `;
                return;
            }

            productGrid.innerHTML = filtered.map(product => {
                const inCart = cart.find(item => item.id === product.id);
                const stockStatus = inCart ? 'Added to Cart' : 'Add to Cart';
                const btnClass = inCart ? 'add-to-cart added' : 'add-to-cart';

                const stars = '★'.repeat(Math.floor(product.rating)) + '☆'.repeat(5 - Math.floor(product.rating));
                const discount = Math.round((1 - product.price / product.oldPrice) * 100);

                return `
                            <div class="product-card" data-id="${product.id}">
                                ${product.badge ? `<span class="badge">${product.badge}</span>` : ''}
                                <div class="product-img"><i class="fas ${product.icon}"></i></div>
                                <div class="product-title">${product.name}</div>
                                <div class="product-rating">
                                    <span class="stars">${stars}</span>
                                    <span>${product.rating} (${product.reviews})</span>
                                </div>
                                <div class="product-price">
                                    $${product.price.toFixed(2)}
                                    <span class="old">$${product.oldPrice.toFixed(2)}</span>
                                    <span class="offer">${discount}% off</span>
                                </div>
                                <button class="${btnClass}" onclick="toggleCart(${product.id})">
                                    <i class="fas ${inCart ? 'fa-check' : 'fa-cart-plus'}"></i>
                                    ${stockStatus}
                                </button>
                            </div>
                        `;
            }).join('');
        }

        // =====================================================
        // CATEGORY FILTER
        // =====================================================
        function filterCategory(category) {
            currentCategory = category;
            // Update active class
            document.querySelectorAll('.cat-link').forEach(el => el.classList.remove('active'));
            document.querySelectorAll('.cat-link').forEach(el => {
                if (el.textContent.trim().toLowerCase() === category ||
                    (category === 'all' && el.textContent.trim() === 'All')) {
                    el.classList.add('active');
                }
            });

            // Update section title
            const title = document.getElementById('sectionTitle');
            if (category === 'all') {
                title.textContent = '🔥 Featured Products';
            } else {
                const catName = document.querySelector('.cat-link.active')?.textContent.trim() || category;
                title.textContent = `📦 ${catName}`;
            }

            renderProducts();
        }

        // =====================================================
        // SEARCH
        // =====================================================
        function searchProducts() {
            const input = document.getElementById('searchInput');
            currentSearch = input.value;
            renderProducts();
        }

        // =====================================================
        // SCROLL TO PRODUCTS
        // =====================================================
        function scrollToProducts() {
            document.getElementById('productGrid').scrollIntoView({ behavior: 'smooth', block: 'start' });
        }

        // =====================================================
        // CART FUNCTIONS
        // =====================================================
        function toggleCart(productId) {
            const product = products.find(p => p.id === productId);
            if (!product) return;

            const existing = cart.find(item => item.id === productId);
            if (existing) {
                // Remove from cart
                cart = cart.filter(item => item.id !== productId);
                showToast(`${product.name} removed from cart`);
            } else {
                // Add to cart
                cart.push({ ...product, quantity: 1 });
                showToast(`${product.name} added to cart!`);
            }

            updateCartUI();
            renderProducts();
        }

        function updateCartUI() {
            // Update badge
            const totalItems = cart.reduce((sum, item) => sum + item.quantity, 0);
            cartBadge.textContent = totalItems;

            // Update cart sidebar
            if (cart.length === 0) {
                cartItems.innerHTML = `
                            <div class="empty-cart">
                                <i class="fas fa-shopping-bag"></i>
                                <p>Your cart is empty</p>
                                <p style="font-size:0.8rem; margin-top:4px;">Start shopping now!</p>
                            </div>
                        `;
                cartFooter.style.display = 'none';
            } else {
                cartItems.innerHTML = cart.map(item => `
                            <div class="cart-item">
                                <div class="cart-item-img"><i class="fas ${item.icon}"></i></div>
                                <div class="cart-item-info">
                                    <h4>${item.name}</h4>
                                    <div class="price">$${(item.price * item.quantity).toFixed(2)}</div>
                                    <div class="cart-item-qty">
                                        <button onclick="changeQty(${item.id}, -1)">−</button>
                                        <span>${item.quantity}</span>
                                        <button onclick="changeQty(${item.id}, 1)">+</button>
                                        <span class="cart-item-remove" onclick="removeFromCart(${item.id})">Remove</span>
                                    </div>
                                </div>
                            </div>
                        `).join('');

                cartFooter.style.display = 'block';
                const total = cart.reduce((sum, item) => sum + item.price * item.quantity, 0);
                cartTotal.textContent = `$${total.toFixed(2)}`;
            }
        }

        function changeQty(productId, delta) {
            const item = cart.find(i => i.id === productId);
            if (!item) return;

            item.quantity += delta;
            if (item.quantity <= 0) {
                cart = cart.filter(i => i.id !== productId);
            }
            updateCartUI();
            renderProducts();
        }

        function removeFromCart(productId) {
            cart = cart.filter(i => i.id !== productId);
            updateCartUI();
            renderProducts();
            showToast('Item removed from cart');
        }

        function openCart() {
            document.getElementById('cartOverlay').classList.add('open');
            document.getElementById('cartSidebar').classList.add('open');
            document.body.style.overflow = 'hidden';
            updateCartUI();
        }

        function closeCart() {
            document.getElementById('cartOverlay').classList.remove('open');
            document.getElementById('cartSidebar').classList.remove('open');
            document.body.style.overflow = 'auto';
        }

        function checkout() {
            if (cart.length === 0) {
                showToast('Your cart is empty!');
                return;
            }
            const total = cart.reduce((sum, item) => sum + item.price * item.quantity, 0);
            showToast(`🎉 Order placed! Total: $${total.toFixed(2)}`);
            cart = [];
            updateCartUI();
            renderProducts();
            closeCart();
        }

        // =====================================================
        // TOAST NOTIFICATION
        // =====================================================
        let toastTimeout;

        function showToast(message) {
            toastMessage.textContent = message;
            toast.classList.add('show');
            clearTimeout(toastTimeout);
            toastTimeout = setTimeout(() => {
                toast.classList.remove('show');
            }, 2500);
        }

        // =====================================================
        // KEYBOARD SHORTCUT: ESC to close cart
        // =====================================================
        document.addEventListener('keydown', (e) => {
            if (e.key === 'Escape') closeCart();
        });

        // =====================================================
        // INIT
        // =====================================================
        renderProducts();
        updateCartUI();
    </script>
</body>
</html>
// This is the end of the code
