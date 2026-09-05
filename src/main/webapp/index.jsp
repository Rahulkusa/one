<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>KTM Spares & Services</title>

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: Arial, sans-serif;
    }

    body {
      background: #f4f4f4;
      color: #222;
    }

    /* HEADER */
    header {
      background: #111;
      color: white;
      padding: 15px 6%;
      display: flex;
      align-items: center;
      justify-content: space-between;
      position: sticky;
      top: 0;
      z-index: 100;
    }

    .logo {
      color: #ff6600;
      font-size: 25px;
      font-weight: bold;
    }

    nav a {
      color: white;
      text-decoration: none;
      margin: 0 12px;
    }

    .cart-btn {
      background: #ff6600;
      border: none;
      color: white;
      padding: 10px 16px;
      border-radius: 5px;
      cursor: pointer;
    }

    /* HERO */
    .hero {
      min-height: 400px;
      background: linear-gradient(
          rgba(0,0,0,.65),
          rgba(0,0,0,.65)
        ),
        url("https://images.unsplash.com/photo-1558981806-ec527fa84c39?auto=format&fit=crop&w=1600&q=80")
        center/cover;

      display: flex;
      align-items: center;
      padding: 50px 8%;
      color: white;
    }

    .hero-content {
      max-width: 600px;
    }

    .hero h1 {
      font-size: 48px;
      margin-bottom: 15px;
    }

    .hero span {
      color: #ff6600;
    }

    .hero p {
      font-size: 18px;
      margin-bottom: 25px;
    }

    .hero button {
      padding: 13px 25px;
      background: #ff6600;
      border: none;
      color: white;
      font-size: 16px;
      border-radius: 5px;
      cursor: pointer;
    }

    /* SEARCH */
    .search-section {
      padding: 30px 6%;
      background: white;
    }

    .search-box {
      width: 100%;
      padding: 15px;
      border: 1px solid #ddd;
      border-radius: 6px;
      font-size: 16px;
    }

    /* CATEGORIES */
    .categories {
      padding: 30px 6%;
    }

    .categories h2,
    .products h2,
    .services h2 {
      margin-bottom: 20px;
    }

    .category-list {
      display: flex;
      gap: 15px;
      flex-wrap: wrap;
    }

    .category {
      background: white;
      padding: 15px 25px;
      border-radius: 6px;
      cursor: pointer;
      border: 1px solid #ddd;
    }

    .category:hover {
      background: #ff6600;
      color: white;
    }

    /* PRODUCTS */
    .products {
      padding: 30px 6%;
    }

    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
      gap: 20px;
    }

    .product-card {
      background: white;
      border-radius: 8px;
      overflow: hidden;
      box-shadow: 0 2px 8px rgba(0,0,0,.1);
    }

    .product-card img {
      width: 100%;
      height: 180px;
      object-fit: cover;
    }

    .product-info {
      padding: 15px;
    }

    .product-info h3 {
      margin-bottom: 8px;
    }

    .price {
      color: #ff6600;
      font-weight: bold;
      font-size: 20px;
      margin: 10px 0;
    }

    .add-btn {
      width: 100%;
      padding: 11px;
      border: none;
      background: #111;
      color: white;
      cursor: pointer;
      border-radius: 5px;
    }

    .add-btn:hover {
      background: #ff6600;
    }

    /* SERVICES */
    .services {
      padding: 40px 6%;
      background: #111;
      color: white;
    }

    .service-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
      gap: 20px;
    }

    .service-card {
      background: #222;
      padding: 25px;
      border-radius: 8px;
    }

    .service-card h3 {
      color: #ff6600;
      margin-bottom: 10px;
    }

    .service-card button {
      margin-top: 15px;
      padding: 10px 15px;
      background: #ff6600;
      border: none;
      color: white;
      border-radius: 5px;
      cursor: pointer;
    }

    /* CART */
    .cart {
      position: fixed;
      right: -400px;
      top: 0;
      width: 350px;
      height: 100%;
      background: white;
      z-index: 200;
      padding: 25px;
      box-shadow: -3px 0 10px rgba(0,0,0,.3);
      transition: .3s;
      overflow-y: auto;
    }

    .cart.active {
      right: 0;
    }

    .cart h2 {
      margin-bottom: 20px;
    }

    .close-cart {
      float: right;
      background: #111;
      color: white;
      border: none;
      padding: 5px 10px;
      cursor: pointer;
    }

    .cart-item {
      display: flex;
      justify-content: space-between;
      border-bottom: 1px solid #ddd;
      padding: 12px 0;
    }

    .checkout {
      width: 100%;
      margin-top: 20px;
      padding: 13px;
      background: #ff6600;
      color: white;
      border: none;
      cursor: pointer;
      border-radius: 5px;
    }

    /* FOOTER */
    footer {
      background: #000;
      color: white;
      text-align: center;
      padding: 25px;
    }

    @media(max-width:700px) {
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
    <div class="logo">KTM SPARES</div>

    <nav>
      <a href="#home">Home</a>
      <a href="#products">Spares</a>
      <a href="#services">Services</a>
      <a href="#contact">Contact</a>
    </nav>

    <button class="cart-btn" onclick="openCart()">
      🛒 Cart (<span id="cartCount">0</span>)
    </button>
  </header>


  <!-- HERO -->
  <section class="hero" id="home">
    <div class="hero-content">
      <h1>KTM <span>Spares</span> & Services</h1>
      <p>
        Genuine and compatible motorcycle spare parts,
        accessories and professional KTM servicing.
      </p>

      <button onclick="document.getElementById('products').scrollIntoView()">
        Shop Now
      </button>
    </div>
  </section>


  <!-- SEARCH -->
  <section class="search-section">
    <input
      type="text"
      id="search"
      class="search-box"
      placeholder="Search for brake pads, chain kits, filters..."
      onkeyup="searchProducts()"
    >
  </section>


  <!-- CATEGORIES -->
  <section class="categories">
    <h2>Shop by Category</h2>

    <div class="category-list">
      <div class="category" onclick="filterCategory('all')">
        All
      </div>

      <div class="category" onclick="filterCategory('engine')">
        Engine Parts
      </div>

      <div class="category" onclick="filterCategory('brake')">
        Brake Parts
      </div>

      <div class="category" onclick="filterCategory('chain')">
        Chain & Sprocket
      </div>

      <div class="category" onclick="filterCategory('accessory')">
        Accessories
      </div>
    </div>
  </section>


  <!-- PRODUCTS -->
  <section class="products" id="products">
    <h2>KTM Spare Parts</h2>

    <div class="product-grid" id="productGrid">

      <div class="product-card" data-category="brake" data-name="KTM Front Brake Pad">
        <img src="https://images.unsplash.com/photo-1609630875171-b1321377ee65?auto=format&fit=crop&w=600&q=80">

        <div class="product-info">
          <h3>KTM Front Brake Pad</h3>
          <p>High-performance brake pads</p>
          <div class="price">₹1,299</div>

          <button
            class="add-btn"
            onclick="addToCart('KTM Front Brake Pad',1299)">
            Add to Cart
          </button>
        </div>
      </div>


      <div class="product-card" data-category="chain" data-name="KTM Chain Sprocket Kit">
        <img src="https://images.unsplash.com/photo-1558981285-6f0c94958bb6?auto=format&fit=crop&w=600&q=80">

        <div class="product-info">
          <h3>Chain Sprocket Kit</h3>
          <p>Heavy-duty chain & sprocket</p>
          <div class="price">₹3,499</div>

          <button
            class="add-btn"
            onclick="addToCart('Chain Sprocket Kit',3499)">
            Add to Cart
          </button>
        </div>
      </div>


      <div class="product-card" data-category="engine" data-name="KTM Air Filter">
        <img src="https://images.unsplash.com/photo-1619771914272-e3c1e6d1b0d4?auto=format&fit=crop&w=600&q=80">

        <div class="product-info">
          <h3>KTM Air Filter</h3>
          <p>Performance engine air filter</p>
          <div class="price">₹899</div>

          <button
            class="add-btn"
            onclick="addToCart('KTM Air Filter',899)">
            Add to Cart
          </button>
        </div>
      </div>


      <div class="product-card" data-category="accessory" data-name="KTM Bike Cover">
        <img src="https://images.unsplash.com/photo-1558980394-0c949d3d2c9c?auto=format&fit=crop&w=600&q=80">

        <div class="product-info">
          <h3>KTM Bike Cover</h3>
          <p>Water-resistant premium cover</p>
          <div class="price">₹799</div>

          <button
            class="add-btn"
            onclick="addToCart('KTM Bike Cover',799)">
            Add to Cart
          </button>
        </div>
      </div>

    </div>
  </section>


  <!-- SERVICES -->
  <section class="services" id="services">

    <h2>KTM Services</h2>

    <div class="service-grid">

      <div class="service-card">
        <h3>🔧 General Service</h3>
        <p>Complete inspection, engine oil replacement and tuning.</p>
        <button onclick="bookService('General Service')">
          Book Service
        </button>
      </div>

      <div class="service-card">
        <h3>⚙️ Chain Service</h3>
        <p>Chain cleaning, lubrication and adjustment.</p>
        <button onclick="bookService('Chain Service')">
          Book Service
        </button>
      </div>

      <div class="service-card">
        <h3>🛞 Brake Service</h3>
        <p>Brake inspection, pad replacement and brake adjustment.</p>
        <button onclick="bookService('Brake Service')">
          Book Service
        </button>
      </div>

      <div class="service-card">
        <h3>🏍️ Full Bike Service</h3>
        <p>Complete motorcycle health check and maintenance.</p>
        <button onclick="bookService('Full Bike Service')">
          Book Service
        </button>
      </div>

    </div>
  </section>


  <!-- CART -->
  <div class="cart" id="cart">

    <button class="close-cart" onclick="closeCart()">X</button>

    <h2>Your Cart</h2>

    <div id="cartItems"></div>

    <h3>Total: ₹<span id="cartTotal">0</span></h3>

    <button class="checkout" onclick="checkout()">
      Proceed to Checkout
    </button>

  </div>


  <!-- FOOTER -->
  <footer id="contact">
    <h3>KTM Spares & Services</h3>
    <p>Premium motorcycle parts & professional service.</p>
    <p>📞 +91 98765 43210 | ✉️ support@ktmspares.com</p>
    <br>
    <p>© 2026 KTM Spares. All Rights Reserved.</p>
  </footer>


  <!-- JAVASCRIPT -->
  <script>

    let cart = [];

    function addToCart(name, price) {

      const existing = cart.find(item => item.name === name);

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

      const cartItems = document.getElementById("cartItems");

      cartItems.innerHTML = "";

      let total = 0;
      let count = 0;

      cart.forEach((item, index) => {

        total += item.price * item.quantity;
        count += item.quantity;

        cartItems.innerHTML += `
          <div class="cart-item">

            <div>
              <strong>${item.name}</strong>
              <br>
              ₹${item.price} × ${item.quantity}
            </div>

            <div>
              <button onclick="changeQuantity(${index},-1)">−</button>
              <button onclick="changeQuantity(${index},1)">+</button>
            </div>

          </div>
        `;
      });

      document.getElementById("cartTotal").innerText = total;
      document.getElementById("cartCount").innerText = count;
    }


    function changeQuantity(index, change) {

      cart[index].quantity += change;

      if (cart[index].quantity <= 0) {
        cart.splice(index, 1);
      }

      updateCart();
    }


    function openCart() {
      document.getElementById("cart").classList.add("active");
    }


    function closeCart() {
      document.getElementById("cart").classList.remove("active");
    }


    function checkout() {

      if (cart.length === 0) {
        alert("Your cart is empty!");
        return;
      }

      alert(
        "Thank you for your order! " +
        "Checkout/payment integration can be connected here."
      );
    }


    function bookService(service) {

      const name = prompt("Enter your name:");

      if (!name) return;

      const phone = prompt("Enter your phone number:");

      if (!phone) return;

      alert(
        "Service Booking Confirmed!\n\n" +
        "Service: " + service + "\n" +
        "Name: " + name + "\n" +
        "Phone: " + phone
      );
    }


    function searchProducts() {

      const search =
        document.getElementById("search").value.toLowerCase();

      const products =
        document.querySelectorAll(".product-card");

      products.forEach(product => {

        const name =
          product.dataset.name.toLowerCase();

        if (name.includes(search)) {
          product.style.display = "block";
        } else {
          product.style.display = "none";
        }

      });
    }


    function filterCategory(category) {

      const products =
        document.querySelectorAll(".product-card");

      products.forEach(product => {

        if (
          category === "all" ||
          product.dataset.category === category
        ) {
          product.style.display = "block";
        } else {
          product.style.display = "none";
        }

      });
    }

  </script>

</body>
</html>
