<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Modern E‑Commerce</title>

    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&family=Playfair+Display:ital,wght@0,600;0,700;1,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        :root {
            --bg: #0f1117;
            --bg-card: #181b24;
            --bg-surface: #222634;
            --primary: #f8fafc;
            --accent: #ff6b4a;
            --accent-hover: #ff522b;
            --accent-soft: rgba(255, 107, 74, 0.12);
            --muted: #94a3b8;
            --border: rgba(255, 255, 255, 0.08);
            --success: #10b981;
            --radius-lg: 20px;
            --radius-md: 12px;
            --radius-sm: 8px;
            --shadow-sm: 0 4px 12px rgba(0, 0, 0, 0.25);
            --shadow-lg: 0 20px 40px rgba(0, 0, 0, 0.4);
            --transition: 0.25s cubic-bezier(0.2, 0.8, 0.2, 1);
            --container: 1280px;
        }

        * { box-sizing: border-box; margin: 0; padding: 0; }
        html { scroll-behavior: smooth; }
        body {
            font-family: 'Plus Jakarta Sans', system-ui, sans-serif;
            background: var(--bg);
            color: var(--primary);
            line-height: 1.5;
            overflow-x: hidden;
        }
        a { color: inherit; text-decoration: none; }
        img { display: block; max-width: 100%; object-fit: cover; }
        button { cursor: pointer; font-family: inherit; border: none; background: none; color: inherit; }
        input, select { font-family: inherit; color: inherit; }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* Buttons */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            padding: 12px 24px;
            border-radius: 999px;
            font-weight: 600;
            font-size: 14px;
            transition: var(--transition);
        }
        .btn-primary {
            background: var(--accent);
            color: #fff;
        }
        .btn-primary:hover {
            background: var(--accent-hover);
            transform: translateY(-2px);
            box-shadow: 0 10px 24px rgba(255, 107, 74, 0.35);
        }
        .btn-secondary {
            background: var(--bg-surface);
            color: #fff;
            border: 1px solid var(--border);
        }
        .btn-secondary:hover {
            background: rgba(255, 255, 255, 0.15);
            transform: translateY(-2px);
        }
        .btn-sm {
            padding: 8px 16px;
            font-size: 13px;
        }

        /* Header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(15, 17, 23, 0.85);
            backdrop-filter: blur(18px);
            border-bottom: 1px solid var(--border);
        }
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            height: 72px;
        }
        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 22px;
            font-weight: 800;
            letter-spacing: -0.5px;
        }
        .brand i { color: var(--accent); font-size: 24px; }
        .brand span span { color: var(--accent); }

        nav.main-nav ul {
            display: flex;
            gap: 8px;
            list-style: none;
        }
        nav.main-nav li a {
            padding: 8px 16px;
            border-radius: var(--radius-sm);
            font-size: 14px;
            font-weight: 500;
            color: var(--muted);
            transition: var(--transition);
        }
        nav.main-nav li a:hover, nav.main-nav li a.active {
            color: #fff;
            background: var(--bg-surface);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 12px;
        }
        .icon-btn {
            position: relative;
            width: 42px;
            height: 42px;
            display: grid;
            place-items: center;
            border-radius: 50%;
            background: var(--bg-surface);
            border: 1px solid var(--border);
            color: var(--muted);
            transition: var(--transition);
        }
        .icon-btn:hover {
            color: #fff;
            border-color: rgba(255, 255, 255, 0.2);
            transform: translateY(-2px);
        }
        .badge-count {
            position: absolute;
            top: -4px;
            right: -4px;
            background: var(--accent);
            color: #fff;
            font-size: 11px;
            font-weight: 700;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            border: 2px solid var(--bg);
            transition: transform 0.2s cubic-bezier(0.175, 0.885, 0.32, 1.275);
        }

        /* Hero */
        .hero {
            position: relative;
            padding: 90px 0 70px;
            overflow: hidden;
        }
        .hero-bg-glow {
            position: absolute;
            width: 500px;
            height: 500px;
            background: radial-gradient(circle, rgba(255,107,74,0.15) 0%, rgba(15,17,23,0) 70%);
            top: -100px;
            right: 10%;
            z-index: 0;
            pointer-events: none;
        }
        .hero-grid {
            display: grid;
            grid-template-columns: 1.1fr 0.9fr;
            gap: 40px;
            align-items: center;
            position: relative;
            z-index: 1;
        }
        .hero-tag {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: var(--accent-soft);
            color: var(--accent);
            padding: 6px 14px;
            border-radius: 999px;
            font-size: 13px;
            font-weight: 600;
            margin-bottom: 20px;
        }
        .hero h1 {
            font-family: 'Playfair Display', serif;
            font-size: 56px;
            line-height: 1.1;
            margin-bottom: 20px;
            font-weight: 700;
        }
        .hero h1 span {
            font-style: italic;
            color: var(--accent);
        }
        .hero p {
            color: var(--muted);
            font-size: 18px;
            max-width: 480px;
            margin-bottom: 32px;
        }
        .hero-cta-group {
            display: flex;
            gap: 16px;
            align-items: center;
        }
        .hero-image-card {
            position: relative;
            border-radius: var(--radius-lg);
            overflow: hidden;
            box-shadow: var(--shadow-lg);
            border: 1px solid var(--border);
        }
        .hero-image-card img {
            width: 100%;
            height: 420px;
            object-fit: cover;
        }

        /* Controls / Filter Bar */
        .catalog-controls {
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
            gap: 16px;
            margin-bottom: 28px;
            padding: 16px;
            background: var(--bg-card);
            border: 1px solid var(--border);
            border-radius: var(--radius-md);
        }
        .search-box {
            position: relative;
            flex: 1;
            min-width: 260px;
        }
        .search-box i {
            position: absolute;
            left: 16px;
            top: 50%;
            transform: translateY(-50%);
            color: var(--muted);
        }
        .search-box input {
            width: 100%;
            padding: 10px 16px 10px 42px;
            background: var(--bg-surface);
            border: 1px solid var(--border);
            border-radius: 999px;
            outline: none;
            font-size: 14px;
            transition: var(--transition);
        }
        .search-box input:focus {
            border-color: var(--accent);
            box-shadow: 0 0 0 3px var(--accent-soft);
        }
        .filter-actions {
            display: flex;
            align-items: center;
            gap: 12px;
        }
        .select-styled {
            padding: 10px 18px;
            background: var(--bg-surface);
            border: 1px solid var(--border);
            border-radius: 999px;
            font-size: 14px;
            outline: none;
            cursor: pointer;
        }
        .select-styled option {
            background: var(--bg-card);
        }

        /* Category Chips */
        .category-scroll {
            display: flex;
            gap: 10px;
            overflow-x: auto;
            padding-bottom: 8px;
            margin-bottom: 32px;
        }
        .cat-chip {
            display: flex;
            align-items: center;
            gap: 8px;
            padding: 10px 20px;
            background: var(--bg-card);
            border: 1px solid var(--border);
            border-radius: 999px;
            font-size: 14px;
            font-weight: 500;
            color: var(--muted);
            white-space: nowrap;
            transition: var(--transition);
        }
        .cat-chip:hover {
            color: #fff;
            border-color: var(--muted);
        }
        .cat-chip.active {
            background: var(--accent);
            border-color: var(--accent);
            color: #fff;
        }

        /* Products Grid */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
            gap: 24px;
        }
        .product-card {
            background: var(--bg-card);
            border-radius: var(--radius-md);
            border: 1px solid var(--border);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            transition: var(--transition);
            position: relative;
        }
        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-lg);
            border-color: rgba(255, 255, 255, 0.15);
        }
        .prod-media {
            position: relative;
            aspect-ratio: 1;
            background: var(--bg-surface);
            overflow: hidden;
            cursor: pointer;
        }
        .prod-media img {
            width: 100%;
            height: 100%;
            transition: transform 0.4s ease;
        }
        .product-card:hover .prod-media img {
            transform: scale(1.06);
        }
        .quick-view-badge {
            position: absolute;
            inset: 0;
            background: rgba(15, 17, 23, 0.4);
            display: grid;
            place-items: center;
            opacity: 0;
            transition: var(--transition);
        }
        .prod-media:hover .quick-view-badge {
            opacity: 1;
        }
        .quick-view-badge span {
            background: #fff;
            color: #0f1117;
            padding: 8px 16px;
            border-radius: 999px;
            font-size: 12px;
            font-weight: 700;
        }
        .card-badge {
            position: absolute;
            top: 12px;
            left: 12px;
            background: var(--accent);
            color: #fff;
            font-size: 11px;
            font-weight: 700;
            padding: 4px 10px;
            border-radius: 6px;
            z-index: 2;
        }
        .card-wishlist {
            position: absolute;
            top: 12px;
            right: 12px;
            width: 36px;
            height: 36px;
            border-radius: 50%;
            background: rgba(15, 17, 23, 0.65);
            backdrop-filter: blur(8px);
            display: grid;
            place-items: center;
            color: #fff;
            z-index: 2;
            transition: var(--transition);
        }
        .card-wishlist.active {
            color: var(--accent);
        }
        .card-wishlist:hover {
            transform: scale(1.15);
        }
        .prod-info {
            padding: 18px;
            display: flex;
            flex-direction: column;
            flex-grow: 1;
        }
        .prod-meta {
            display: flex;
            justify-content: space-between;
            font-size: 12px;
            color: var(--muted);
            margin-bottom: 6px;
        }
        .prod-title {
            font-size: 16px;
            font-weight: 600;
            margin-bottom: 12px;
            line-height: 1.3;
        }
        .prod-rating {
            display: flex;
            align-items: center;
            gap: 4px;
            font-size: 12px;
            color: #fbbf24;
            margin-bottom: 14px;
        }
        .prod-rating span {
            color: var(--muted);
            margin-left: 4px;
        }
        .prod-footer {
            margin-top: auto;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .price-group {
            display: flex;
            flex-direction: column;
        }
        .price-current {
            font-size: 20px;
            font-weight: 700;
        }
        .price-old {
            font-size: 13px;
            color: var(--muted);
            text-decoration: line-through;
        }
        .btn-cart-action {
            width: 42px;
            height: 42px;
            border-radius: var(--radius-sm);
            background: var(--bg-surface);
            border: 1px solid var(--border);
            display: grid;
            place-items: center;
            color: #fff;
            transition: var(--transition);
        }
        .btn-cart-action:hover {
            background: var(--accent);
            border-color: var(--accent);
            transform: scale(1.05);
        }

        /* Slide-over Drawer Cart */
        .cart-overlay {
            position: fixed;
            inset: 0;
            background: rgba(0, 0, 0, 0.6);
            backdrop-filter: blur(4px);
            z-index: 200;
            opacity: 0;
            pointer-events: none;
            transition: opacity 0.3s ease;
        }
        .cart-overlay.open {
            opacity: 1;
            pointer-events: auto;
        }
        .cart-drawer {
            position: fixed;
            top: 0;
            right: 0;
            bottom: 0;
            width: 100%;
            max-width: 440px;
            background: var(--bg-card);
            border-left: 1px solid var(--border);
            z-index: 201;
            transform: translateX(100%);
            transition: transform 0.3s cubic-bezier(0.16, 1, 0.3, 1);
            display: flex;
            flex-direction: column;
        }
        .cart-drawer.open {
            transform: translateX(0);
        }
        .cart-header {
            padding: 20px;
            border-bottom: 1px solid var(--border);
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .cart-items {
            flex-grow: 1;
            overflow-y: auto;
            padding: 20px;
            display: flex;
            flex-direction: column;
            gap: 16px;
        }
        .cart-item {
            display: flex;
            gap: 14px;
            background: var(--bg-surface);
            padding: 12px;
            border-radius: var(--radius-sm);
            border: 1px solid var(--border);
            align-items: center;
        }
        .cart-item img {
            width: 64px;
            height: 64px;
            border-radius: 8px;
        }
        .cart-item-info {
            flex-grow: 1;
        }
        .cart-item-title {
            font-size: 14px;
            font-weight: 600;
            margin-bottom: 4px;
        }
        .cart-item-price {
            font-size: 13px;
            color: var(--accent);
            font-weight: 700;
        }
        .cart-item-controls {
            display: flex;
            align-items: center;
            gap: 8px;
            margin-top: 6px;
        }
        .qty-btn {
            width: 24px;
            height: 24px;
            border-radius: 4px;
            background: var(--bg-card);
            border: 1px solid var(--border);
            display: grid;
            place-items: center;
            font-size: 11px;
        }
        .qty-num {
            font-size: 13px;
            min-width: 16px;
            text-align: center;
        }
        .cart-footer {
            padding: 20px;
            border-top: 1px solid var(--border);
            background: var(--bg-card);
        }
        .cart-summary-line {
            display: flex;
            justify-content: space-between;
            margin-bottom: 14px;
            font-size: 15px;
            color: var(--muted);
        }
        .cart-summary-total {
            color: #fff;
            font-size: 18px;
            font-weight: 700;
        }

        /* Modal Quick View */
        .modal-overlay {
            position: fixed;
            inset: 0;
            background: rgba(0, 0, 0, 0.7);
            backdrop-filter: blur(4px);
            z-index: 300;
            display: none;
            place-items: center;
            padding: 20px;
        }
        .modal-overlay.open {
            display: grid;
        }
        .modal-card {
            background: var(--bg-card);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            max-width: 760px;
            width: 100%;
            display: grid;
            grid-template-columns: 1fr 1fr;
            overflow: hidden;
            position: relative;
            box-shadow: var(--shadow-lg);
        }
        .modal-close {
            position: absolute;
            top: 16px;
            right: 16px;
            width: 36px;
            height: 36px;
            border-radius: 50%;
            background: var(--bg-surface);
            display: grid;
            place-items: center;
            z-index: 10;
        }
        .modal-img {
            height: 100%;
            min-height: 340px;
        }
        .modal-content {
            padding: 32px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        /* Toast notifications */
        .toast {
            position: fixed;
            bottom: 24px;
            right: 24px;
            background: var(--bg-surface);
            border: 1px solid var(--accent);
            padding: 14px 20px;
            border-radius: var(--radius-sm);
            color: #fff;
            display: flex;
            align-items: center;
            gap: 12px;
            box-shadow: var(--shadow-lg);
            z-index: 400;
            transform: translateY(100px);
            opacity: 0;
            transition: 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
        }
        .toast.show {
            transform: translateY(0);
            opacity: 1;
        }

        /* Responsive */
        @media (max-width: 900px) {
            .hero-grid { grid-template-columns: 1fr; text-align: center; }
            .hero p { margin: 0 auto 32px; }
            .hero-cta-group { justify-content: center; }
            .modal-card { grid-template-columns: 1fr; max-height: 85vh; overflow-y: auto; }
            .modal-img { height: 260px; }
        }
        @media (max-width: 600px) {
            .header-inner { height: 64px; }
            nav.main-nav { display: none; }
            .hero h1 { font-size: 38px; }
        }
    </style>
</head>

<body>

    <!-- Notification Toast -->
    <div id="toast" class="toast">
        <i class="fas fa-check-circle" style="color: var(--accent);"></i>
        <span id="toastMsg">Cart updated</span>
    </div>

    <!-- Header -->
    <header>
        <div class="container header-inner">
            <a class="brand" href="#">
                <i class="fas fa-bolt"></i>
                <span>Nexus<span>Shop</span></span>
            </a>

            <nav class="main-nav">
                <ul>
                    <li><a href="#" class="active">Shop</a></li>
                    <li><a href="#catalog">Catalog</a></li>
                    <li><a href="#deals">Specials</a></li>
                </ul>
            </nav>

            <div class="header-actions">
                <button class="icon-btn" id="wishlistBtn" aria-label="Wishlist">
                    <i class="far fa-heart"></i>
                    <span class="badge-count" id="wishlistCount">0</span>
                </button>
                <button class="icon-btn" id="cartOpenBtn" aria-label="Shopping Cart">
                    <i class="fas fa-bag-shopping"></i>
                    <span class="badge-count" id="cartCount">0</span>
                </button>
            </div>
        </div>
    </header>

    <!-- Main -->
    <main>
        <!-- Hero Section -->
        <section class="hero">
            <div class="hero-bg-glow"></div>
            <div class="container hero-grid">
                <div>
                    <div class="hero-tag"><i class="fas fa-sparkles"></i> 2026 Hardware Series</div>
                    <h1>Refined Gear for <span>Modern Creators.</span></h1>
                    <p>Experience seamless, high-performance electronics and premium workwear crafted to improve your daily workflow.</p>
                    <div class="hero-cta-group">
                        <a href="#catalog" class="btn btn-primary"><i class="fas fa-arrow-down"></i> Browse Products</a>
                        <button class="btn btn-secondary" onclick="openQuickView(2)"><i class="fas fa-eye"></i> Feature Item</button>
                    </div>
                </div>
                <div class="hero-image-card">
                    <img src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=1000&q=80" alt="Tech setup">
                </div>
            </div>
        </section>

        <!-- Product Catalog Section -->
        <section class="container" id="catalog" style="padding-bottom: 80px;">
            <!-- Category Chips -->
            <div class="category-scroll" id="categoryChips"></div>

            <!-- Controls (Search + Sort) -->
            <div class="catalog-controls">
                <div class="search-box">
                    <i class="fas fa-search"></i>
                    <input type="text" id="searchInput" placeholder="Search devices, accessories, clothing...">
                </div>
                <div class="filter-actions">
                    <select class="select-styled" id="sortSelect">
                        <option value="featured">Featured Picks</option>
                        <option value="price-low">Price: Low to High</option>
                        <option value="price-high">Price: High to Low</option>
                        <option value="rating">Highest Rated</option>
                    </select>
                </div>
            </div>

            <!-- Dynamic Product Grid -->
            <div class="products-grid" id="productsGrid"></div>
        </section>
    </main>

    <!-- Cart Drawer -->
    <div class="cart-overlay" id="cartOverlay"></div>
    <aside class="cart-drawer" id="cartDrawer">
        <div class="cart-header">
            <h3>Your Cart (<span id="drawerCount">0</span>)</h3>
            <button class="icon-btn" id="cartCloseBtn"><i class="fas fa-times"></i></button>
        </div>
        <div class="cart-items" id="cartItemsContainer"></div>
        <div class="cart-footer">
            <div class="cart-summary-line">
                <span>Subtotal</span>
                <span class="cart-summary-total" id="cartSubtotal">$0.00</span>
            </div>
            <button class="btn btn-primary" style="width: 100%;" id="checkoutBtn"><i class="fas fa-lock"></i> Checkout</button>
        </div>
    </aside>

    <!-- Quick View Modal -->
    <div class="modal-overlay" id="quickViewModal">
        <div class="modal-card">
            <button class="modal-close" id="modalCloseBtn"><i class="fas fa-times"></i></button>
            <div class="modal-img">
                <img id="modalImg" src="" alt="Product Preview">
            </div>
            <div class="modal-content">
                <span class="hero-tag" id="modalCat">Category</span>
                <h2 id="modalTitle" style="margin-bottom: 8px;">Product Title</h2>
                <div class="prod-rating" id="modalRating" style="margin-bottom: 12px;"></div>
                <div style="font-size: 26px; font-weight: 800; margin-bottom: 16px;" id="modalPrice">$0.00</div>
                <p style="color: var(--muted); font-size: 14px; margin-bottom: 24px;" id="modalDesc">
                    Engineered with premium sustainable materials for enhanced ergonomics and day-long reliability.
                </p>
                <button class="btn btn-primary" id="modalAddBtn"><i class="fas fa-bag-shopping"></i> Add to Cart</button>
            </div>
        </div>
    </div>

    <!-- Logic -->
    <script>
        const PRODUCTS = [
            { id: 1, title: 'iPhone 15 Pro Max', price: 1199, oldPrice: 1299, rating: 4.9, reviews: 310, badge: 'New', category: 'Smartphones', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80' },
            { id: 2, title: 'MacBook Pro 14" M3', price: 1999, oldPrice: 2199, rating: 5.0, reviews: 140, badge: 'Flagship', category: 'Laptops', img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80' },
            { id: 3, title: 'Apex Noise-Cancelling Watch', price: 349, oldPrice: 399, rating: 4.6, reviews: 88, badge: 'Sale', category: 'Accessories', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80' },
            { id: 4, title: 'React Performance Runners', price: 140, oldPrice: 175, rating: 4.5, reviews: 62, badge: '', category: 'Footwear', img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80' },
            { id: 5, title: 'Mirrorless Full-Frame 4K', price: 2399, oldPrice: null, rating: 4.8, reviews: 49, badge: 'Hot', category: 'Gadgets', img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80' },
            { id: 6, title: 'Studio Hi-Fi Wireless Cans', price: 379, oldPrice: 429, rating: 4.7, reviews: 204, badge: '', category: 'Gadgets', img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80' },
            { id: 7, title: 'Weatherproof Transit Pack', price: 110, oldPrice: 140, rating: 4.6, reviews: 93, badge: 'Sale', category: 'Accessories', img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80' },
            { id: 8, title: 'Tactile Mechanical Board', price: 180, oldPrice: null, rating: 4.9, reviews: 112, badge: 'New', category: 'Gadgets', img: 'https://images.unsplash.com/photo-1587829741301-dc798b83add3?auto=format&fit=crop&w=600&q=80' }
        ];

        let cart = [];
        let wishlist = new Set();
        let selectedCategory = 'All';
        let searchQuery = '';
        let currentSort = 'featured';

        // Elements
        const productsGrid = document.getElementById('productsGrid');
        const categoryChips = document.getElementById('categoryChips');
        const searchInput = document.getElementById('searchInput');
        const sortSelect = document.getElementById('sortSelect');
        const cartDrawer = document.getElementById('cartDrawer');
        const cartOverlay = document.getElementById('cartOverlay');
        const cartItemsContainer = document.getElementById('cartItemsContainer');
        const cartSubtotal = document.getElementById('cartSubtotal');
        const cartCount = document.getElementById('cartCount');
        const drawerCount = document.getElementById('drawerCount');
        const wishlistCount = document.getElementById('wishlistCount');

        // Init Categories
        function setupCategories() {
            const categories = ['All', ...new Set(PRODUCTS.map(p => p.category))];
            categoryChips.innerHTML = categories.map(cat => `
                <button class="cat-chip ${cat === selectedCategory ? 'active' : ''}" onclick="setCategory('${cat}')">
                    ${cat}
                </button>
            `).join('');
        }

        window.setCategory = function(cat) {
            selectedCategory = cat;
            setupCategories();
            renderCatalog();
        };

        // Render Cards
        function renderCatalog() {
            let list = PRODUCTS.filter(p => {
                const matchesCat = selectedCategory === 'All' || p.category === selectedCategory;
                const matchesSearch = p.title.toLowerCase().includes(searchQuery.toLowerCase()) || p.category.toLowerCase().includes(searchQuery.toLowerCase());
                return matchesCat && matchesSearch;
            });

            if (currentSort === 'price-low') list.sort((a, b) => a.price - b.price);
            if (currentSort === 'price-high') list.sort((a, b) => b.price - a.price);
            if (currentSort === 'rating') list.sort((a, b) => b.rating - a.rating);

            if (!list.length) {
                productsGrid.innerHTML = `<div style="grid-column: 1/-1; text-align: center; padding: 48px; color: var(--muted);">No matching products found.</div>`;
                return;
            }

            productsGrid.innerHTML = list.map(p => `
                <article class="product-card">
                    <div class="prod-media" onclick="openQuickView(${p.id})">
                        ${p.badge ? `<span class="card-badge">${p.badge}</span>` : ''}
                        <button class="card-wishlist ${wishlist.has(p.id) ? 'active' : ''}" onclick="event.stopPropagation(); toggleWishlist(${p.id})">
                            <i class="${wishlist.has(p.id) ? 'fas' : 'far'} fa-heart"></i>
                        </button>
                        <img src="${p.img}" alt="${p.title}" loading="lazy">
                        <div class="quick-view-badge"><span>Quick View</span></div>
                    </div>
                    <div class="prod-info">
                        <div class="prod-meta">
                            <span>${p.category}</span>
                            <span>Stocked</span>
                        </div>
                        <h3 class="prod-title">${p.title}</h3>
                        <div class="prod-rating">
                            ${'★'.repeat(Math.floor(p.rating))}${'☆'.repeat(5 - Math.floor(p.rating))}
                            <span>(${p.reviews})</span>
                        </div>
                        <div class="prod-footer">
                            <div class="price-group">
                                <span class="price-current">$${p.price.toLocaleString()}</span>
                                ${p.oldPrice ? `<span class="price-old">$${p.oldPrice.toLocaleString()}</span>` : ''}
                            </div>
                            <button class="btn-cart-action" onclick="addToCart(${p.id})" aria-label="Add to cart">
                                <i class="fas fa-plus"></i>
                            </button>
                        </div>
                    </div>
                </article>
            `).join('');
        }

        // Cart Actions
        window.addToCart = function(id) {
            const prod = PRODUCTS.find(p => p.id === id);
            const exists = cart.find(item => item.id === id);
            if (exists) {
                exists.qty++;
            } else {
                cart.push({ ...prod, qty: 1 });
            }
            updateCart();
            showToast(`Added ${prod.title} to bag`);
        };

        window.updateQty = function(id, delta) {
            const index = cart.findIndex(item => item.id === id);
            if (index > -1) {
                cart[index].qty += delta;
                if (cart[index].qty <= 0) cart.splice(index, 1);
            }
            updateCart();
        };

        function updateCart() {
            const totalItems = cart.reduce((sum, item) => sum + item.qty, 0);
            const totalPrice = cart.reduce((sum, item) => sum + (item.price * item.qty), 0);

            cartCount.innerText = totalItems;
            drawerCount.innerText = totalItems;
            cartSubtotal.innerText = `$${totalPrice.toLocaleString()}`;

            if (!cart.length) {
                cartItemsContainer.innerHTML = `<div style="text-align: center; color: var(--muted); margin-top: 40px;">Your bag is empty</div>`;
                return;
            }

            cartItemsContainer.innerHTML = cart.map(item => `
                <div class="cart-item">
                    <img src="${item.img}" alt="${item.title}">
                    <div class="cart-item-info">
                        <div class="cart-item-title">${item.title}</div>
                        <div class="cart-item-price">$${(item.price * item.qty).toLocaleString()}</div>
                        <div class="cart-item-controls">
                            <button class="qty-btn" onclick="updateQty(${item.id}, -1)">-</button>
                            <span class="qty-num">${item.qty}</span>
                            <button class="qty-btn" onclick="updateQty(${item.id}, 1)">+</button>
                        </div>
                    </div>
                    <button onclick="updateQty(${item.id}, -${item.qty})" style="color: var(--muted);"><i class="fas fa-trash-can"></i></button>
                </div>
            `).join('');
        }

        // Wishlist
        window.toggleWishlist = function(id) {
            if (wishlist.has(id)) {
                wishlist.delete(id);
                showToast("Removed from wishlist");
            } else {
                wishlist.add(id);
                showToast("Saved to wishlist");
            }
            wishlistCount.innerText = wishlist.size;
            renderCatalog();
        };

        // Quick View Modal
        window.openQuickView = function(id) {
            const prod = PRODUCTS.find(p => p.id === id);
            document.getElementById('modalImg').src = prod.img;
            document.getElementById('modalCat').innerText = prod.category;
            document.getElementById('modalTitle').innerText = prod.title;
            document.getElementById('modalPrice').innerText = `$${prod.price.toLocaleString()}`;
            document.getElementById('modalRating').innerHTML = `${'★'.repeat(Math.floor(prod.rating))} <span>(${prod.reviews} customer reviews)</span>`;
            document.getElementById('modalAddBtn').onclick = () => {
                addToCart(prod.id);
                closeModal();
            };
            document.getElementById('quickViewModal').classList.add('open');
        };

        function closeModal() {
            document.getElementById('quickViewModal').classList.remove('open');
        }

        // Toast Feedback
        function showToast(msg) {
            const toast = document.getElementById('toast');
            document.getElementById('toastMsg').innerText = msg;
            toast.classList.add('show');
            setTimeout(() => toast.classList.remove('show'), 2500);
        }

        // Event Listeners
        searchInput.addEventListener('input', (e) => {
            searchQuery = e.target.value;
            renderCatalog();
        });

        sortSelect.addEventListener('change', (e) => {
            currentSort = e.target.value;
            renderCatalog();
        });

        const toggleDrawer = (open) => {
            cartDrawer.classList.toggle('open', open);
            cartOverlay.classList.toggle('open', open);
        };

        document.getElementById('cartOpenBtn').onclick = () => toggleDrawer(true);
        document.getElementById('cartCloseBtn').onclick = () => toggleDrawer(false);
        cartOverlay.onclick = () => toggleDrawer(false);
        document.getElementById('modalCloseBtn').onclick = closeModal;
        document.getElementById('checkoutBtn').onclick = () => {
            if (!cart.length) return showToast("Your cart is empty!");
            showToast("Redirecting to checkout...");
        };

        // Bootstrap
        setupCategories();
        renderCatalog();
    </script>
</body>
</html>
