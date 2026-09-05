<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KTM Spares & Services - Rahul Kusa</title>

    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, sans-serif;
            background: #f4f4f4;
            color: #222;
        }

        /* HEADER */
        header {
            background: #111;
            color: white;
            padding: 18px 6%;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            color: #ff6600;
            font-size: 24px;
            font-weight: bold;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin: 0 12px;
        }

        nav a:hover {
            color: #ff6600;
        }

        .cart-btn {
            background: #ff6600;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
        }

        /* HERO */
        .hero {
            background: linear-gradient(135deg, #111, #333);
            color: white;
            text-align: center;
            padding: 90px 20px;
        }

        .hero h1 {
            font-size: 48px;
            margin-bottom: 15px;
        }

        .hero h1 span {
            color: #ff6600;
        }

        .hero p {
            font-size: 18px;
            margin-bottom: 25px;
        }

        .hero button {
            background: #ff6600;
            color: white;
            border: none;
            padding: 14px 25px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        /* SEARCH */
        .search {
            background: white;
            padding: 25px 6%;
        }

        .search input {
            width: 100%;
            padding: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        /* SECTIONS */
        section {
            padding: 50px 6%;
        }

        .title {
            text-align: center;
            margin-bottom: 30px;
        }

        .title h2 {
            font-size: 32px;
        }

        .title span {
            color: #ff6600;
        }

        /* CATEGORIES */
        .categories {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 15px;
        }

        .category {
            background: white;
            padding: 25px;
            text-align: center;
            border-radius: 8px;
            cursor: pointer;
            border: 2px solid transparent;
        }

        .category:hover {
            border-color: #ff6600;
            color: #ff6600;
        }

        .category div {
            font-size: 35px;
            margin-bottom: 10px;
        }

        /* PRODUCTS */
        .products {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 25px;
        }

        .product {
            background: white;
            border-radius: 8px;
            padding: 20px;
            text-align: center;
            box-shadow: 0 2px 8px #ddd;
        }

        .product-image {
            height: 150px;
            background: #222;
            color: #ff6600;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 55px;
            border-radius: 6px;
            margin-bottom: 15px;
        }

        .product h3 {
            margin-bottom: 10px;
        }

        .product p {
            color: #666;
            margin-bottom: 10px;
        }

        .price {
            color: #ff6600;
            font-size: 21px;
            font-weight: bold;
            margin: 12px;
        }

        .product button {
            background: #111;
            color: white;
            border: none;
            padding: 12px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        .product button:hover {
            background: #ff6600;
        }

        /* SERVICES */
        #services {
            background: #111;
            color: white;
        }

        .services {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 20px;
        }

        .service {
            background: #222;
            padding: 25px;
            border-radius: 8px;
            border-left: 4px solid #ff6600;
        }

        .service h3 {
            color: #ff6600;
            margin-bottom: 12px;
        }

        .service p {
            color: #ccc;
            line-height: 1.5;
        }

        .service button {
            margin-top: 15px;
            padding: 10px 15px;
            background: #ff6600;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        /* OWNER */
        .owner {
            background: white;
            text-align: center;
        }

        .owner-card {
            max-width: 600px;
            margin: auto;
            background: #f5f5f5;
            padding: 35px;
            border-radius: 10px;
            border-top: 5px solid #ff6600;
        }

        .owner-avatar {
            width: 100px;
            height: 100px;
            background: #111;
            color: #ff6600;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 20px;
            font-size: 30px;
            font-weight: bold;
        }

        .owner-card h2 {
            margin-bottom: 10px;
        }

        .owner-card p {
            color: #666;
            line-height: 1.6;
        }

        /* CART */
        .cart {
            position: fixed;
            top: 0;
            right: -400px;
            width: 350px;
            height: 100%;
            background: white;
            box-shadow: -3px 0 10px #555;
            padding: 25px;
            z-index: 1000;
            transition: 0.3s;
            overflow-y: auto;
        }

        .cart.active {
            right: 0;
        }

        .cart-header {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        .close {
            background: #111;
            color: white;
            border: none;
            padding: 7px 12px;
            cursor: pointer;
        }

        .cart-item {
            border-bottom: 1px solid #ddd;
            padding: 15px 0;
        }

        .cart-item button {
            margin: 8px 4px 0 0;
            padding: 5px 10px;
            cursor: pointer;
        }

        .total {
            font-size: 20px;
            font-weight: bold;
            margin-top: 20px;
        }

        .checkout {
            width: 100%;
            background: #ff6600;
            color: white;
            border: none;
            padding: 13px;
            margin-top: 15px;
            cursor: pointer;
            border-radius: 5px;
        }

        /* FOOTER */
        footer {
            background: #050505;
            color: white;
            text-align: center;
            padding: 30px;
        }

        footer span {
            color: #ff6600;
        }

        /* MOBILE */
        @media (max-width: 700px) {
            header {
                flex-direction: column;
                gap: 15px;
            }

            nav {
                display: none;
            }

            .hero h1 {
                font-size: 35px;
            }

            .cart {
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
        </div>

        <nav>
            <a href="#home">Home</a>
            <a href="#products">Spares</a>
            <a href="#services">Services</a>
            <a href="#owner">Owner</a>
            <a href="#contact">Contact</a>
        </nav>

        <button class="cart-btn" onclick="openCart()">
            🛒 Cart (<span id="cartCount">0</span>)
        </button>

    </header>


    <!-- HERO -->
    <div class="hero" id="home">

        <h1>
            KTM <span>Spares</span> & Services
        </h1>

        <p>
            Spare parts, accessories and professional
            KTM motorcycle services.
        </p>

        <button onclick="document.getElementById('products').scrollIntoView()">
            Shop Now
        </button>

    </div>


    <!-- SEARCH -->
    <div class="search">

        <input
            type="text"
            id="searchInput"
            placeholder="Search spare parts..."
            onkeyup="searchProducts()"
        >

    </div>


    <!-- CATEGORIES -->
    <section>

        <div class="title">
            <h2>Shop by <span>Category</span></h2>
        </div>

        <div class="categories">

            <div class="category" onclick="filterProducts('all')">
                <div>🏍️</div>
                <h3>All Parts</h3>
            </div>

            <div class="category" onclick="filterProducts('engine')">
                <div>⚙️</div>
                <h3>Engine</h3>
            </div>

            <div class="category" onclick="filterProducts('brake')">
                <div>🛑</div>
                <h3>Brakes</h3>
            </div>

            <div class="category" onclick="filterProducts('chain')">
                <div>🔗</div>
                <h3>Chain</h3>
            </div>

            <div class="category" onclick="filterProducts('accessory')">
                <div>🧤</div>
                <h3>Accessories</h3>
            </div>

        </div>

    </section>


    <!-- PRODUCTS -->
    <section id="products">

        <div class="title">
            <h2>KTM <span>Spare Parts</span></h2>
            <p>Choose the parts you need</p>
        </div>

        <div class="products" id="productList">

            <div class="product"
                 data-category="brake"
                 data-name="Front Brake Pads">

                <div class="product-image">
                    🛑
                </div>

                <h3>Front Brake Pads</h3>

                <p>High performance brake pads</p>

                <div class="price">₹1,299</div>

                <button onclick="addToCart('Front Brake Pads',1299)">
                    Add to Cart
                </button>

            </div>


            <div class="product"
                 data-category="chain"
                 data-name="Chain Sprocket Kit">

                <div class="product-image">
                    🔗
                </div>

                <h3>Chain Sprocket Kit</h3>

                <p>Durable chain and sprocket kit</p>

                <div class="price">₹3,499</div>

                <button onclick="addToCart('Chain Sprocket Kit',3499)">
                    Add to Cart
                </button>

            </div>


            <div class="product"
                 data-category="engine"
                 data-name="Air Filter">

                <div class="product-image">
                    ⚙️
                </div>

                <h3>Performance Air Filter</h3>

                <p>High-flow engine air filter</p>

                <div class="price">₹899</div>

                <button onclick="addToCart('Performance Air Filter',899)">
                    Add to Cart
                </button>

            </div>


            <div class="product"
                 data-category="accessory"
                 data-name="KTM Bike Cover">

                <div class="product-image">
                    🏍️
                </div>

                <h3>KTM Bike Cover</h3>

                <p>Water resistant bike cover</p>

                <div class="price">₹799</div>

                <button onclick="addToCart('KTM Bike Cover',799)">
                    Add to Cart
                </button>

            </div>


            <div class="product"
                 data-category="accessory"
                 data-name="Riding Gloves">

                <div class="product-image">
                    🧤
                </div>

                <h3>Riding Gloves</h3>

                <p>Protective riding gloves</p>

                <div class="price">₹1,499</div>

                <button onclick="addToCart('Riding Gloves',1499)">
                    Add to Cart
                </button>

            </div>


            <div class="product"
                 data-category="engine"
                 data-name="Engine Oil">

                <div class="product-image">
                    🛢️
                </div>

                <h3>KTM Engine Oil</h3>

                <p>Premium motorcycle engine oil</p>

                <div class="price">₹1,099</div>

                <button onclick="addToCart('KTM Engine Oil',1099)">
                    Add to Cart
                </button>

            </div>

        </div>

    </section>


    <!-- SERVICES -->
    <section id="services">

        <div class="title">
            <h2>KTM <span>Services</span></h2>
            <p>Professional bike maintenance</p>
        </div>

        <div class="services">

            <div class="service">
                <h3>🔧 General Service</h3>

                <p>
                    Complete bike inspection,
                    oil replacement and tuning.
                </p>

                <button onclick="bookService('General Service')">
                    Book Service
                </button>
            </div>


            <div class="service">
                <h3>🔗 Chain Service</h3>

                <p>
                    Chain cleaning, lubrication
                    and adjustment.
                </p>

                <button onclick="bookService('Chain Service')">
                    Book Service
                </button>
            </div>


            <div class="service">
                <h3>🛑 Brake Service</h3>

                <p>
                    Brake inspection and
                    brake pad replacement.
                </p>

                <button onclick="bookService('Brake Service')">
                    Book Service
                </button>
            </div>


            <div class="service">
                <h3>🏍️ Full Bike Service</h3>

                <p>
                    Complete KTM motorcycle
                    inspection and maintenance.
                </p>

                <button onclick="bookService('Full Bike Service')">
                    Book Service
                </button>
            </div>

        </div>

    </section>


    <!-- OWNER -->
    <section class="owner" id="owner">

        <div class="title">
            <h2>About the <span>Owner</span></h2>
        </div>

        <div class="owner-card">

            <div class="owner-avatar">
                RK
            </div>

            <h2>Rahul Kusa</h2>

            <p>
                <strong>Owner & Founder</strong>
            </p>

            <br>

            <p>
                Welcome to KTM Spares & Services.
                We provide quality motorcycle spare parts,
                accessories and professional KTM servicing.
            </p>

        </div>

    </section>


    <!-- FOOTER -->
    <footer id="contact">

        <h2>KTM Spares & Services</h2>

        <br>

        <p>
            Owner: <span>Rahul Kusa</span>
        </p>

        <p>
            📞 +91 98765 43210
        </p>

        <p>
            📧 support@ktmspares.com
        </p>

        <br>

        <p>
            © 2026 KTM Spares & Services.
            All Rights Reserved.
        </p>

    </footer>


    <!-- CART -->
    <div class="cart" id="cart">

        <div class="cart-header">

            <h2>Your Cart</h2>

            <button class="close" onclick="closeCart()">
                X
            </button>

        </div>

        <div id="cartItems">
            <p>Your cart is empty.</p>
        </div>

        <div class="total">
            Total: ₹<span id="cartTotal">0</span>
        </div>

        <button class="checkout" onclick="checkout()">
            Checkout
        </button>

    </div>


    <!-- JAVASCRIPT -->
    <script>

        let cart = [];


        function addToCart(name, price) {

            let existing = cart.find(
                item => item.name === name
            );

            if (existing) {

                existing.quantity++;

            } else {

                cart.push({
                    name: name,
                    price: price,
                    quantity: 1
                });

            }

            updateCart();

            alert(name + " added to cart!");

        }


        function updateCart() {

            let items =
                document.getElementById("cartItems");

            let total = 0;
            let count = 0;

            if (cart.length === 0) {

                items.innerHTML =
                    "<p>Your cart is empty.</p>";

            } else {

                items.innerHTML = "";

                cart.forEach(function(item, index) {

                    total +=
                        item.price * item.quantity;

                    count += item.quantity;

                    items.innerHTML += `
                        <div class="cart-item">

                            <strong>${item.name}</strong>

                            <p>
                                ₹${item.price}
                                × ${item.quantity}
                            </p>

                            <button onclick="changeQuantity(${index}, -1)">
                                -
                            </button>

                            <button onclick="changeQuantity(${index}, 1)">
                                +
                            </button>

                        </div>
                    `;

                });

            }

            document.getElementById("cartTotal").innerText =
                total.toLocaleString("en-IN");

            document.getElementById("cartCount").innerText =
                count;

        }


        function changeQuantity(index, amount) {

            cart[index].quantity += amount;

            if (cart[index].quantity <= 0) {

                cart.splice(index, 1);

            }

            updateCart();

        }


        function openCart() {

            document
                .getElementById("cart")
                .classList.add("active");

        }


        function closeCart() {

            document
                .getElementById("cart")
                .classList.remove("active");

        }


        function checkout() {

            if (cart.length === 0) {

                alert("Your cart is empty!");

                return;

            }

            alert(
                "Order checkout selected!\n\n" +
                "Payment gateway can be connected here."
            );

        }


        function searchProducts() {

            let search =
                document
                .getElementById("searchInput")
                .value
                .toLowerCase();

            let products =
                document.querySelectorAll(".product");

            products.forEach(function(product) {

                let name =
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


        function filterProducts(category) {

            let products =
                document.querySelectorAll(".product");

            products.forEach(function(product) {

                if (
                    category === "all" ||
                    product.getAttribute("data-category") === category
                ) {

                    product.style.display = "block";

                } else {

                    product.style.display = "none";

                }

            });

        }


        function bookService(service) {

            let name = prompt("Enter your name:");

            if (!name) return;

            let phone = prompt("Enter your phone number:");

            if (!phone) return;

            let bike = prompt("Enter your KTM model:");

            if (!bike) return;

            alert(
                "Service Booking Successful!\n\n" +
                "Service: " + service + "\n" +
                "Name: " + name + "\n" +
                "Phone: " + phone + "\n" +
                "Bike: " + bike
            );

        }

    </script>

</body>
</html>
