<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>KTM Spares & Services | Rahul Kusa</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #f4f4f4;
            color: #222;
        }

        html {
            scroll-behavior: smooth;
        }

        /* HEADER */
        header {
            background: #111111;
            color: white;
            padding: 18px 6%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .logo {
            color: #ff6600;
            font-size: 25px;
            font-weight: bold;
        }

        .logo-subtitle {
            color: white;
            font-size: 11px;
            letter-spacing: 2px;
            display: block;
            margin-top: 3px;
        }

        nav {
            display: flex;
            gap: 25px;
        }

        nav a {
            color: white;
            text-decoration: none;
            font-size: 15px;
        }

        nav a:hover {
            color: #ff6600;
        }

        .cart-button {
            background: #ff6600;
            color: white;
            border: none;
            padding: 11px 18px;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
        }

        .cart-button:hover {
            background: #e65500;
        }

        /* HERO */
        .hero {
            background: linear-gradient(135deg, #111111, #333333);
            color: white;
            text-align: center;
            padding: 100px 20px;
        }

        .hero h1 {
            font-size: 52px;
            margin-bottom: 20px;
        }

        .hero h1 span {
            color: #ff6600;
        }

        .hero p {
            max-width: 700px;
            margin: auto;
            font-size: 19px;
            line-height: 1.6;
            color: #dddddd;
        }

        .hero-buttons {
            margin-top: 30px;
        }

        .primary-button {
            background: #ff6600;
            color: white;
            border: none;
            padding: 14px 28px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }

        .primary-button:hover {
            background: #e65500;
        }

        /* SEARCH */
        .search-section {
            background: white;
            padding: 25px 6%;
        }

        .search-input {
            width: 100%;
            padding: 15px;
            border: 1px solid #cccccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .search-input:focus {
            outline: none;
            border-color: #ff6600;
        }

        /* GENERAL SECTION */
        section {
            padding: 55px 6%;
        }

        .section-title {
            text-align: center;
            margin-bottom: 35px;
        }

        .section-title h2 {
            font-size: 32px;
            margin-bottom: 10px;
        }

        .section-title span {
            color: #ff6600;
        }

        .section-title p {
            color: #666666;
        }

        /* CATEGORIES */
        .category-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(170px, 1fr));
            gap: 18px;
        }

        .category-card {
            background: white;
            padding: 28px 15px;
            text-align: center;
            border-radius: 8px;
            border: 2px solid transparent;
            cursor: pointer;
            transition: 0.3s;
        }

        .category-card:hover {
            border-color: #ff6600;
            transform: translateY(-4px);
        }

        .category-card h3 {
            margin-top: 10px;
        }

        /* PRODUCTS */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(230px, 1fr));
            gap: 25px;
        }

        .product-card {
            background: white;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 3px 10px rgba(0,0,0,0.08);
            transition: 0.3s;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 18px rgba(0,0,0,0.15);
        }

        .product-image {
            height: 160px;
            background: #222222;
            color: #ff6600;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 6px;
            font-size: 20px;
            font-weight: bold;
            margin-bottom: 18px;
        }

        .product-card h3 {
            margin-bottom: 10px;
        }

        .product-card p {
            color: #666666;
            font-size: 14px;
            line-height: 1.5;
        }

        .product-price {
            color: #ff6600;
            font-size: 22px;
            font-weight: bold;
            margin: 15px 0;
        }

        .add-button {
            width: 100%;
            background: #111111;
            color: white;
            border: none;
            padding: 12px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 15px;
        }

        .add-button:hover {
            background: #ff6600;
        }

        /* SERVICES */
        #services {
            background: #111111;
            color: white;
        }

        #services .section-title p {
            color: #bbbbbb;
        }

        .service-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(230px, 1fr));
            gap: 20px;
        }

        .service-card {
            background: #222222;
            padding: 28px;
            border-left: 4px solid #ff6600;
            border-radius: 6px;
        }

        .service-card h3 {
            color: #ff6600;
            margin-bottom: 12px;
        }

        .service-card p {
            color: #cccccc;
            line-height: 1.6;
        }

        .service-button {
            margin-top: 18px;
            background: #ff6600;
            color: white;
            border: none;
            padding: 11px 18px;
            border-radius: 5px;
            cursor: pointer;
        }

        .service-button:hover {
            background: #e65500;
        }

        /* OWNER */
        .owner-section {
            background: white;
        }

        .owner-card {
            max-width: 700px;
            margin: auto;
            background: #f5f5f5;
            padding: 40px;
            text-align: center;
            border-radius: 10px;
            border-top: 5px solid #ff6600;
        }

        .owner-initials {
            width: 100px;
            height: 100px;
            background: #111111;
            color: #ff6600;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0 auto 20px;
            font-size: 30px;
            font-weight: bold;
        }

        .owner-card h2 {
            margin-bottom: 8px;
        }

        .owner-role {
            color: #ff6600;
            font-weight: bold;
            margin-bottom: 18px;
        }

        .owner-card p {
            color: #555555;
            line-height: 1.7;
        }

        /* CART */
        .cart-panel {
            position: fixed;
            right: -420px;
            top: 0;
            width: 380px;
            height: 100vh;
            background: white;
            z-index: 2000;
            padding: 25px;
            box-shadow: -4px 0 15px rgba(0,0,0,0.3);
            transition: 0.3s;
            overflow-y: auto;
        }

        .cart-panel.active {
            right: 0;
        }

        .cart-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 25px;
        }

        .close-cart {
            background: #111111;
            color: white;
            border: none;
            padding: 8px 12px;
            cursor: pointer;
            border-radius: 4px;
        }

        .cart-item {
            border-bottom: 1px solid #dddddd;
            padding: 15px 0;
        }

        .cart-item h4 {
            margin-bottom: 7px;
        }

        .cart-item p {
            color: #666666;
        }

        .quantity-buttons {
            margin-top: 10px;
        }

        .quantity-buttons button {
            width: 30px;
            height: 30px;
            border: 1px solid #cccccc;
            background: white;
            cursor: pointer;
        }

        .quantity-buttons span {
            margin: 0 10px;
        }

        .cart-total {
            font-size: 21px;
            font-weight: bold;
            margin-top: 25px;
        }

        .checkout-button {
            width: 100%;
            background: #ff6600;
            color: white;
            border: none;
            padding: 14px;
            margin-top: 15px;
            border-radius: 5px;
            cursor: pointer;
        }

        /* FOOTER */
        footer {
            background: #050505;
            color: white;
            padding: 40px 6%;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 30px;
        }

        footer h3 {
            color: #ff6600;
            margin-bottom: 15px;
        }

        footer p {
            color: #bbbbbb;
            line-height: 1.7;
        }

        .copyright {
            text-align: center;
            border-top: 1px solid #333333;
            margin-top: 30px;
            padding-top: 20px;
            color: #777777;
        }

        .copyright strong {
            color: #ff6600;
        }

        /* MOBILE */
        @media (max-width: 750px) {

            header {
                flex-direction: column;
                gap: 15px;
            }

            nav {
                display: none;
            }

            .hero h1 {
                font-size: 36px;
            }

            .hero p {
                font-size: 16px;
            }

            .cart-panel {
                width: 90%;
            }
        }
    </style>
</head>

<body>

    <!-- HEADER -->
    <header>

        <div class="logo">
            KTM SPARES
            <span class="logo-subtitle">AND SERVICES</span>
        </div>

        <nav>
            <a href="#home">Home</a>
            <a href="#categories">Categories</a>
            <a href="#products">Spare Parts</a>
            <a href="#services">Services</a>
            <a href="#owner">About Owner</a>
            <a href="#contact">Contact</a>
        </nav>

        <button class="cart-button" onclick="openCart()">
            Cart (<span id="cartCount">0</span>)
        </button>

    </header>


    <!-- HERO -->
    <div class="hero" id="home">

        <h1>
            KTM <span>Spares</span> & Services
        </h1>

        <p>
            Your trusted online store for KTM motorcycle spare
            parts, accessories and professional bike servicing.
        </p>

        <div class="hero-buttons">

            <button
                class="primary-button"
                onclick="goToProducts()">
                Shop Spare Parts
            </button>

        </div>

    </div>


    <!-- SEARCH -->
    <div class="search-section">

        <input
            type="text"
            class="search-input"
            id="searchInput"
            placeholder="Search for spare parts..."
            onkeyup="searchProducts()"
        >

    </div>


    <!-- CATEGORIES -->
    <section id="categories">

        <div class="section-title">

            <h2>
                Shop by <span>Category</span>
            </h2>

            <p>
                Select a category to find your required parts
            </p>

        </div>

        <div class="category-grid">

            <div
                class="category-card"
                onclick="filterProducts('all')">

                <h3>All Parts</h3>

            </div>

            <div
                class="category-card"
                onclick="filterProducts('engine')">

                <h3>Engine Parts</h3>

            </div>

            <div
                class="category-card"
                onclick="filterProducts('brake')">

                <h3>Brake Parts</h3>

            </div>

            <div
                class="category-card"
                onclick="filterProducts('chain')">

                <h3>Chain and Sprocket</h3>

            </div>

            <div
                class="category-card"
                onclick="filterProducts('electrical')">

                <h3>Electrical Parts</h3>

            </div>

            <div
                class="category-card"
                onclick="filterProducts('accessories')">

                <h3>Accessories</h3>

            </div>

        </div>

    </section>


    <!-- PRODUCTS -->
    <section id="products">

        <div class="section-title">

            <h2>
                KTM <span>Spare Parts</span>
            </h2>

            <p>
                Browse our available KTM products
            </p>

        </div>


        <div class="product-grid" id="productGrid">


            <!-- PRODUCT 1 -->
            <div
                class="product-card"
                data-category="brake"
                data-name="Front Brake Pads">

                <div class="product-image">
                    KTM BRAKE PART
                </div>

                <h3>Front Brake Pads</h3>

                <p>
                    High-performance replacement brake pads
                    for KTM motorcycles.
                </p>

                <div class="product-price">
                    ₹1,299
                </div>

                <button
                    class="add-button"
                    onclick="addToCart('Front Brake Pads', 1299)">

                    Add to Cart

                </button>

            </div>


            <!-- PRODUCT 2 -->
            <div
                class="product-card"
                data-category="chain"
                data-name="Chain Sprocket Kit">

                <div class="product-image">
                    KTM CHAIN KIT
                </div>

                <h3>Chain Sprocket Kit</h3>

                <p>
                    Durable chain and sprocket replacement kit.
                </p>

                <div class="product-price">
                    ₹3,499
                </div>

                <button
                    class="add-button"
                    onclick="addToCart('Chain Sprocket Kit', 3499)">

                    Add to Cart

                </button>

            </div>


            <!-- PRODUCT 3 -->
            <div
                class="product-card"
                data-category="engine"
                data-name="Performance Air Filter">

                <div class="product-image">
                    KTM AIR FILTER
                </div>

                <h3>Performance Air Filter</h3>

                <p>
                    High-flow replacement air filter
                    for better engine performance.
                </p>

                <div class="product-price">
                    ₹899
                </div>

                <button
                    class="add-button"
                    onclick="addToCart('Performance Air Filter', 899)">

                    Add to Cart

                </button>

            </div>


            <!-- PRODUCT 4 -->
            <div
                class="product-card"
                data-category="electrical"
                data-name="LED Headlight">

                <div class="product-image">
                    KTM LED HEADLIGHT
                </div>

                <h3>LED Headlight</h3>

                <p>
                    Bright and efficient motorcycle
                    LED headlight.
                </p>

                <div class="product-price">
                    ₹2,499
                </div>

                <button
                    class="add-button"
                    onclick="addToCart('LED Headlight', 2499)">

                    Add to Cart

                </button>

            </div>


            <!-- PRODUCT 5 -->
            <div
                class="product-card"
                data-category="accessories"
                data-name="KTM Bike Cover">

                <div class="product-image">
                    KTM BIKE COVER
                </div>

                <h3>KTM Bike Cover</h3>

                <p>
                    Durable and water-resistant motorcycle cover.
                </p>

                <div class="product-price">
                    ₹799
                </div>

                <button
                    class="add-button"
                    onclick="addToCart('KTM Bike Cover', 799)">

                    Add to Cart

                </button>

            </div>


            <!-- PRODUCT 6 -->
            <div
                class="product-card"
                data-category="accessories"
                data-name="Riding Gloves">

                <div class="product-image">
                    RIDING GLOVES
                </div>

                <h3>Riding Gloves</h3>

                <p>
                    Comfortable protective motorcycle
                    riding gloves.
                </p>

                <div class="product-price">
                    ₹1,499
                </div>

                <button
                    class="add-button"
                    onclick="addToCart('Riding Gloves', 1499)">

                    Add to Cart

                </button>

            </div>


            <!-- PRODUCT 7 -->
            <div
                class="product-card"
                data-category="engine"
                data-name="Motorcycle Engine Oil">

                <div class="product-image">
                    ENGINE OIL
                </div>

                <h3>Motorcycle Engine Oil</h3>

                <p>
                    Premium engine oil suitable for
                    motorcycle maintenance.
                </p>

                <div class="product-price">
                    ₹1,099
                </div>

                <button
                    class="add-button"
                    onclick="addToCart('Motorcycle Engine Oil', 1099)">

                    Add to Cart

                </button>

            </div>


            <!-- PRODUCT 8 -->
            <div
                class="product-card"
                data-category="brake"
                data-name="Rear Brake Pads">

                <div class="product-image">
                    KTM BRAKE PAD
                </div>

                <h3>Rear Brake Pads</h3>

                <p>
                    Reliable rear brake pads for
                    everyday motorcycle use.
                </p>

                <div class="product-price">
                    ₹999
                </div>

                <button
                    class="add-button"
                    onclick="addToCart('Rear Brake Pads', 999)">

                    Add to Cart

                </button>

            </div>

        </div>

    </section>


    <!-- SERVICES -->
    <section id="services">

        <div class="section-title">

            <h2>
                KTM <span>Services</span>
            </h2>

            <p>
                Professional motorcycle maintenance services
            </p>

        </div>


        <div class="service-grid">

            <div class="service-card">

                <h3>General Service</h3>

                <p>
                    Complete motorcycle inspection,
                    oil replacement and general maintenance.
                </p>

                <button
                    class="service-button"
                    onclick="bookService('General Service')">

                    Book Service

                </button>

            </div>


            <div class="service-card">

                <h3>Chain Service</h3>

                <p>
                    Chain cleaning, lubrication,
                    adjustment and inspection.
                </p>

                <button
                    class="service-button"
                    onclick="bookService('Chain Service')">

                    Book Service

                </button>

            </div>


            <div class="service-card">

                <h3>Brake Service</h3>

                <p>
                    Brake inspection, brake pad replacement
                    and brake adjustment.
                </p>

                <button
                    class="service-button"
                    onclick="bookService('Brake Service')">

                    Book Service

                </button>

            </div>


            <div class="service-card">

                <h3>Full Bike Service</h3>

                <p>
                    Complete motorcycle inspection and
                    preventive maintenance.
                </p>

                <button
                    class="service-button"
                    onclick="bookService('Full Bike Service')">

                    Book Service

                </button>

            </div>

        </div>

    </section>


    <!-- OWNER -->
    <section class="owner-section" id="owner">

        <div class="section-title">

            <h2>
                About the <span>Owner</span>
            </h2>

        </div>


        <div class="owner-card">

            <div class="owner-initials">
                RK
            </div>

            <h2>Rahul Kusa</h2>

            <div class="owner-role">
                Owner and Founder
            </div>

            <p>
                Welcome to KTM Spares & Services.
                Our goal is to provide motorcycle riders
                with quality spare parts, accessories and
                professional servicing.
            </p>

            <br>

            <p>
                We are committed to providing reliable
                products and excellent customer service.
            </p>

        </div>

    </section>


    <!-- FOOTER -->
    <footer id="contact">

        <div class="footer-grid">

            <div>

                <h3>KTM Spares & Services</h3>

                <p>
                    Your trusted destination for KTM spare
                    parts, accessories and motorcycle service.
                </p>

            </div>


            <div>

                <h3>Quick Links</h3>

                <p>Home</p>
                <p>Spare Parts</p>
                <p>Services</p>
                <p>About Owner</p>

            </div>


            <div>

                <h3>Contact Information</h3>

                <p>Phone: +91 98765 43210</p>
                <p>Email: support@ktmspares.com</p>
                <p>Location: India</p>

            </div>


            <div>

                <h3>Business Owner</h3>

                <p>
                    Rahul Kusa
                </p>

                <p>
                    Owner and Founder
                </p>

            </div>

        </div>


        <div class="copyright">

            Copyright 2026 KTM Spares & Services.
            All Rights Reserved.

            <br>

            Owned and operated by
            <strong>Rahul Kusa</strong>.

        </div>

    </footer>


    <!-- CART PANEL -->
    <div class="cart-panel" id="cartPanel">

        <div class="cart-header">

            <h2>Shopping Cart</h2>

            <button
                class="close-cart"
                onclick="closeCart()">

                Close

            </button>

        </div>


        <div id="cartItems">

            <p>Your cart is empty.</p>

        </div>


        <div class="cart-total">

            Total:
            ₹<span id="cartTotal">0</span>

        </div>


        <button
            class="checkout-button"
            onclick="checkout()">

            Proceed to Checkout

        </button>

    </div>


    <!-- JAVASCRIPT -->
    <script>

        let cart = [];


        /* ADD PRODUCT TO CART */

        function addToCart(name, price) {

            let existingProduct =
                cart.find(item => item.name === name);


            if (existingProduct) {

                existingProduct.quantity++;

            } else {

                cart.push({
                    name: name,
                    price: price,
                    quantity: 1
                });

            }


            updateCart();

            alert(name + " has been added to your cart.");

        }


        /* UPDATE CART */

        function updateCart() {

            const cartItems =
                document.getElementById("cartItems");

            const cartCount =
                document.getElementById("cartCount");

            const cartTotal =
                document.getElementById("cartTotal");


            cartItems.innerHTML = "";

            let total = 0;
            let count = 0;


            if (cart.length === 0) {

                cartItems.innerHTML =
                    "<p>Your cart is empty.</p>";

            }


            cart.forEach(function(item, index) {

                total +=
                    item.price * item.quantity;

                count += item.quantity;


                cartItems.innerHTML += `

                    <div class="cart-item">

                        <h4>${item.name}</h4>

                        <p>
                            Price: ₹${item.price}
                        </p>

                        <div class="quantity-buttons">

                            <button
                                onclick="changeQuantity(${index}, -1)">
                                -
                            </button>

                            <span>
                                ${item.quantity}
                            </span>

                            <button
                                onclick="changeQuantity(${index}, 1)">
                                +
                            </button>

                        </div>

                    </div>

                `;

            });


            cartCount.innerText = count;

            cartTotal.innerText =
                total.toLocaleString("en-IN");

        }


        /* CHANGE QUANTITY */

        function changeQuantity(index, amount) {

            cart[index].quantity += amount;


            if (cart[index].quantity <= 0) {

                cart.splice(index, 1);

            }


            updateCart();

        }


        /* OPEN CART */

        function openCart() {

            document
                .getElementById("cartPanel")
                .classList.add("active");

        }


        /* CLOSE CART */

        function closeCart() {

            document
                .getElementById("cartPanel")
                .classList.remove("active");

        }


        /* CHECKOUT */

        function checkout() {

            if (cart.length === 0) {

                alert("Your shopping cart is empty.");

                return;

            }


            alert(
                "Checkout selected.\n\n" +
                "Payment and order processing can be connected here."
            );

        }


        /* SEARCH PRODUCTS */

        function searchProducts() {

            const search =
                document
                    .getElementById("searchInput")
                    .value
                    .toLowerCase();


            const products =
                document.querySelectorAll(".product-card");


            products.forEach(function(product) {

                const name =
                    product
                        .getAttribute("data-name")
                        .toLowerCase();


                if (name.includes(search)) {

                    product.style.display = "block";

                } else {

                    product.style.display = "none";

                }

            });

        }


        /* FILTER PRODUCTS */

        function filterProducts(category) {

            const products =
                document.querySelectorAll(".product-card");


            products.forEach(function(product) {

                const productCategory =
                    product.getAttribute("data-category");


                if (
                    category === "all" ||
                    productCategory === category
                ) {

                    product.style.display = "block";

                } else {

                    product.style.display = "none";

                }

            });


            document
                .getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });

        }


        /* SERVICE BOOKING */

        function bookService(serviceName) {

            const customerName =
                prompt("Please enter your full name:");

            if (!customerName) {
                return;
            }


            const phone =
                prompt("Please enter your phone number:");

            if (!phone) {
                return;
            }


            const bikeModel =
                prompt("Please enter your KTM bike model:");

            if (!bikeModel) {
                return;
            }


            alert(
                "Service Booking Request Submitted!\n\n" +
                "Service: " + serviceName + "\n" +
                "Customer: " + customerName + "\n" +
                "Phone: " + phone + "\n" +
                "Bike Model: " + bikeModel + "\n\n" +
                "Thank you for choosing KTM Spares & Services."
            );

        }


        /* SHOP BUTTON */

        function goToProducts() {

            document
                .getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });

        }

    </script>

</body>
</html>
