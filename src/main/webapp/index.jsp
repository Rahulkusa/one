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
            font-family: Arial, Helvetica, sans-serif;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            background: #f5f5f5;
            color: #222;
        }

        /* HEADER */
        header {
            background: #0d0d0d;
            color: white;
            padding: 15px 6%;
            display: flex;
            align-items: center;
            justify-content: space-between;
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .logo {
            font-size: 25px;
            font-weight: bold;
            color: #ff6600;
        }

        .logo small {
            display: block;
            color: #fff;
            font-size: 10px;
            letter-spacing: 2px;
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
            padding: 10px 16px;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
        }

        /* HERO */
        .hero {
            min-height: 500px;
            display: flex;
            align-items: center;
            padding: 60px 8%;
            color: white;

            background:
                linear-gradient(
                    rgba(0,0,0,.72),
                    rgba(0,0,0,.72)
                ),
                url("https://images.unsplash.com/photo-1558981806-ec527fa84c39?auto=format&fit=crop&w=1600&q=80")
                center/cover;
        }

        .hero-content {
            max-width: 650px;
        }

        .hero h1 {
            font-size: 55px;
            margin-bottom: 15px;
        }

        .orange {
            color: #ff6600;
        }

        .hero p {
            font-size: 19px;
            line-height: 1.6;
            margin-bottom: 25px;
        }

        .hero-buttons {
            display: flex;
            gap: 15px;
            flex-wrap: wrap;
        }

        .primary-btn,
        .secondary-btn {
            padding: 13px 24px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .primary-btn {
            border: none;
            background: #ff6600;
            color: white;
        }

        .secondary-btn {
            border: 2px solid #ff6600;
            background: transparent;
            color: white;
        }

        /* SEARCH */
        .search-area {
            background: white;
            padding: 25px 6%;
        }

        .search-box {
            width: 100%;
            padding: 15px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 16px;
        }

        /* COMMON SECTION */
        section {
            padding: 50px 6%;
        }

        .section-title {
            text-align: center;
            margin-bottom: 35px;
        }

        .section-title h2 {
            font-size: 32px;
        }

        .section-title span {
            color: #ff6600;
        }

        .section-title p {
            margin-top: 8px;
            color: #666;
        }

        /* CATEGORIES */
