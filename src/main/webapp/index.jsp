<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Shop Happy, Shop Easy</title>

    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Fraunces:opsz,wght@9..144,600;9..144,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        /* ========== DESIGN TOKENS ========== */
        :root {
            --bg: #fbf9f6;
            --bg-soft: #f4f1ec;
            --card: #ffffff;

            --ink: #1f2937;
            --ink-soft: #4b5563;
            --ink-mute: #6b7280;
            --ink-faint: #9ca3af;

            --brand: #0d7377;
            --brand-dark: #095a5d;
            --brand-soft: #d5ecec;

            --warm: #ff6b6b;
            --warm-dark: #e85555;
            --warm-soft: #ffe4e4;

            --sun: #ffb703;
            --sun-soft: #fff3d6;

            --mint: #06a77d;
            --mint-soft: #d7f5ec;

            --line: rgba(31, 41, 55, 0.08);
            --line-strong: rgba(31, 41, 55, 0.16);

            --radius-lg: 24px;
            --radius: 16px;
            --radius-sm: 12px;
            --radius-pill: 999px;

            --shadow-sm: 0 1px 2px rgba(31, 41, 55, 0.05);
            --shadow: 0 6px 24px rgba(31, 41, 55, 0.06);
            --shadow-lg: 0 16px 40px rgba(31, 41, 55, 0.10);

            --space-1: 4px;
            --space-2: 8px;
            --space-3: 12px;
            --space-4: 16px;
            --space-5: 24px;
            --space-6: 32px;
            --space-7: 48px;
            --space-8: 64px;

            --container: 1200px;
            --transition: 0.2s ease;
        }

        /* ========== RESET ========== */
        *, *::before, *::after { box-sizing: border-box; }
        * { margin: 0; padding: 0; }

        html { scroll-behavior: smooth; -webkit-text-size-adjust: 100%; }

        body {
            font-family: 'Inter', system-ui, -apple-system, sans-serif;
            background: var(--bg);
            color: var(--ink);
            font-size: 16px;
            line-height: 1.65;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }

        img { display: block; max-width: 100%; height: auto; }

        a { color: inherit; text-decoration: none; }

        button {
            font-family: inherit;
            font-size: inherit;
            cursor: pointer;
            border: none;
            background: none;
            color: inherit;
            line-height: 1.2;
        }

        input, textarea {
            font-family: inherit;
            font-size: inherit;
            color: inherit;
        }

        /* Focus ring for accessibility */
        :focus-visible {
            outline: 3px solid var(--brand);
            outline-offset: 2px;
            border-radius: 8px;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 20px;
        }

        /* ========== UTILITIES ========== */
        .sr-only {
            position: absolute;
            width: 1px; height: 1px;
            padding: 0; margin: -1px;
            overflow: hidden; clip: rect(0,0,0,0);
            white-space: nowrap; border: 0;
        }

        /* ========== BUTTONS ========== */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            min-height: 48px;
            padding: 12px 24px;
            border-radius: var(--radius-pill);
            font-weight: 600;
            font-size: 15px;
            letter-spacing: 0.1px;
            transition: transform var(--transition), box-shadow var(--transition), background var(--transition);
            white-space: nowrap;
            user-select: none;
        }

        .btn:active { transform: scale(0.98); }

        .btn-primary {
            background: var(--brand);
            color: #fff;
            box-shadow: 0 4px 12px rgba(13, 115, 119, 0.25);
        }
        .btn-primary:hover {
            background: var(--brand-dark);
            box-shadow: 0 8px 20px rgba(13, 115, 119, 0.32);
            transform: translateY(-1px);
        }

        .btn-warm {
            background: var(--warm);
            color: #fff;
            box-shadow: 0 4px 12px rgba(255, 107, 107, 0.25);
        }
        .btn-warm:hover {
            background: var(--warm-dark);
            box-shadow: 0 8px 20px rgba(255, 107, 107, 0.32);
            transform: translateY(-1px);
        }

        .btn-ghost {
            background: rgba(255, 255, 255, 0.15);
            color: #fff;
            border: 2px solid rgba(255, 255, 255, 0.45);
            backdrop-filter: blur(8px);
        }
        .btn-ghost:hover {
            background: rgba(255, 255, 255, 0.28);
            border-color: #fff;
        }

        .btn-outline {
            background: #fff;
            color: var(--ink);
            border: 2px solid var(--line-strong);
        }
        .btn-outline:hover {
            border-color: var(--brand);
            color: var(--brand);
        }

        .btn-block { width: 100%; }

        /* ========== HEADER ========== */
        .site-header {
            position: sticky;
            top: 0;
            z-index: 200;
            background: rgba(251, 249, 246, 0.92);
            backdrop-filter: saturate(180%) blur(14px);
            -webkit-backdrop-filter: saturate(180%) blur(14px);
            border-bottom: 1px solid var(--line);
        }

        .header-row {
            display: flex;
            align-items: center;
            gap: var(--space-4);
            min-height: 72px;
            padding: 12px 0;
        }

        .brand {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            font-family: 'Fraunces', Georgia, serif;
            font-weight: 700;
            font-size: 22px;
            letter-spacing: -0.4px;
            color: var(--ink);
            flex-shrink: 0;
        }
        .brand-mark {
            width: 38px; height: 38px;
            border-radius: 12px;
            background: linear-gradient(135deg, var(--brand), var(--mint));
            display: grid; place-items: center;
            color: #fff; font-size: 17px;
            box-shadow: 0 4px 12px rgba(13, 115, 119, 0.25);
        }
        .brand .dot { color: var(--warm); }

        /* Primary nav */
        .nav-main {
            display: flex;
            align-items: center;
            gap: 4px;
            margin-left: auto;
        }
        .nav-main a {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 10px 16px;
            border-radius: var(--radius-pill);
            font-weight: 500;
            font-size: 14.5px;
            color: var(--ink-soft);
            transition: background var(--transition), color var(--transition);
        }
        .nav-main a:hover { background: var(--bg-soft); color: var(--ink); }
        .nav-main a.active { background: var(--brand-soft); color: var(--brand-dark); font-weight: 600; }
        .nav-main a i { font-size: 14px; opacity: 0.85; }

        .header-tools {
            display: flex;
            align-items: center;
            gap: 8px;
            flex-shrink: 0;
        }

        .search {
            display: flex;
            align-items: center;
            gap: 8px;
            background: var(--bg-soft);
            border: 2px solid transparent;
            border-radius: var(--radius-pill);
            padding: 0 6px 0 16px;
            height: 46px;
            min-width: 240px;
            transition: border-color var(--transition), background var(--transition), box-shadow var(--transition);
        }
        .search:focus-within {
            border-color: var(--brand);
            background: #fff;
            box-shadow: 0 0 0 4px rgba(13, 115, 119, 0.12);
        }
        .search i { color: var(--ink-mute); font-size: 14px; }
        .search input {
            flex: 1;
            border: 0;
            outline: none;
            background: transparent;
            padding: 12px 0;
            font-size: 14.5px;
            min-width: 0;
        }
        .search input::placeholder { color: var(--ink-faint); }
        .search button {
            width: 36px; height: 36px;
            border-radius: 50%;
            display: grid; place-items: center;
            background: var(--brand);
            color: #fff;
            font-size: 13px;
            transition: background var(--transition);
        }
        .search button:hover { background: var(--brand-dark); }

        .icon-btn {
            width: 46px; height: 46px;
            border-radius: 50%;
            display: grid; place-items: center;
            color: var(--ink-soft);
            font-size: 17px;
            transition: background var(--transition), color var(--transition);
            position: relative;
        }
        .icon-btn:hover { background: var(--bg-soft); color: var(--brand); }

        .cart-btn { position: relative; }
        .cart-badge {
            position: absolute;
            top: 4px; right: 2px;
            min-width: 20px; height: 20px;
            padding: 0 5px;
            border-radius: 10px;
            background: var(--warm);
            color: #fff;
            font-size: 11px;
            font-weight: 700;
            display: grid; place-items: center;
            border: 2px solid var(--bg);
            transition: transform 0.2s ease;
        }

        .menu-btn {
            display: none;
            width: 46px; height: 46px;
            border-radius: 50%;
            background: var(--bg-soft);
            color: var(--ink);
            font-size: 18px;
            place-items: center;
        }

        /* Mobile menu */
        .mobile-menu {
            display: none;
            background: #fff;
            border-top: 1px solid var(--line);
            padding: var(--space-4) 0 var(--space-5);
            animation: slideDown 0.22s ease;
        }
        .mobile-menu.open { display: block; }
        @keyframes slideDown {
            from { opacity: 0; transform: translateY(-8px); }
            to { opacity: 1; transform: translateY(0); }
        }
        .mobile-menu ul { list-style: none; display: grid; gap: 4px; }
        .mobile-menu a {
            display: flex;
            align-items: center;
            gap: 14px;
            padding: 14px 16px;
            border-radius: var(--radius-sm);
            font-weight: 500;
            color: var(--ink);
            min-height: 52px;
        }
        .mobile-menu a:hover { background: var(--bg-soft); }
        .mobile-menu a i { width: 20px; color: var(--brand); }

        /* ========== HERO ========== */
        .hero {
            position: relative;
            margin: 20px 20px 0;
            border-radius: var(--radius-lg);
            overflow: hidden;
            background: linear-gradient(135deg, #0d7377 0%, #095a5d 60%, #063c3f 100%);
            color: #fff;
        }
        .hero::after {
            content: '';
            position: absolute;
            inset: 0;
            background: url('https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&w=1600&q=80') center/cover;
            opacity: 0.22;
            mix-blend-mode: luminosity;
            z-index: 0;
        }
        .hero-inner {
            position: relative;
            z-index: 1;
            padding: 72px 0;
            display: grid;
            gap: var(--space-5);
            max-width: 640px;
        }
        .hero-eyebrow {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            align-self: flex-start;
            background: rgba(255, 255, 255, 0.15);
            border: 1px solid rgba(255, 255, 255, 0.25);
            padding: 6px 16px;
            border-radius: var(--radius-pill);
            font-size: 13px;
            font-weight: 500;
            backdrop-filter: blur(8px);
        }
        .hero-eyebrow .pulse {
            width: 8px; height: 8px;
            border-radius: 50%;
            background: var(--sun);
            box-shadow: 0 0 0 4px rgba(255, 183, 3, 0.28);
            animation: pulse 2s infinite;
        }
        @keyframes pulse {
            0%, 100% { box-shadow: 0 0 0 4px rgba(255, 183, 3, 0.28); }
            50% { box-shadow: 0 0 0 8px rgba(255, 183, 3, 0.10); }
        }

        .hero h1 {
            font-family: 'Fraunces', Georgia, serif;
            font-weight: 700;
            font-size: clamp(32px, 5vw, 52px);
            line-height: 1.1;
            letter-spacing: -0.5px;
        }
        .hero p {
            font-size: 17px;
            color: rgba(255, 255, 255, 0.85);
            max-width: 520px;
            line-height: 1.65;
        }
        .hero-cta { display: flex; gap: 12px; flex-wrap: wrap; }

        .hero-stats {
            position: relative;
            z-index: 1;
            display: flex;
            gap: 32px;
            flex-wrap: wrap;
            padding: 24px 0 0;
            margin-top: var(--space-5);
            border-top: 1px solid rgba(255, 255, 255, 0.15);
        }
        .hero-stat strong {
            display: block;
            font-family: 'Fraunces', serif;
            font-size: 26px;
            font-weight: 700;
        }
        .hero-stat span {
            font-size: 13px;
            color: rgba(255, 255, 255, 0.7);
        }

        /* ========== SECTIONS ========== */
        .section { padding: 64px 0 24px; }

        .section-head {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            gap: var(--space-4);
            margin-bottom: var(--space-6);
            flex-wrap: wrap;
        }
        .section-head .eyebrow {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            font-size: 13px;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 1px;
            color: var(--brand);
            margin-bottom: 6px;
        }
        .section-head h2 {
            font-family: 'Fraunces', Georgia, serif;
            font-weight: 700;
            font-size: clamp(24px, 3.2vw, 32px);
            letter-spacing: -0.4px;
            line-height: 1.15;
        }
        .section-head p {
            color: var(--ink-mute);
            margin-top: 6px;
            font-size: 15.5px;
            max-width: 560px;
        }
        .link-arrow {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            font-weight: 600;
            font-size: 15px;
            color: var(--brand);
            padding: 10px 4px;
            transition: gap var(--transition);
        }
        .link-arrow:hover { gap: 14px; color: var(--brand-dark); }

        /* ========== CATEGORIES ========== */
        .cat-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: var(--space-3);
        }
        .cat {
            background: var(--card);
            border: 1px solid var(--line);
            border-radius: var(--radius);
            padding: var(--space-5) var(--space-3);
            text-align: center;
            transition: transform var(--transition), box-shadow var(--transition), border-color var(--transition);
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 10px;
            min-height: 140px;
            justify-content: center;
        }
        .cat:hover {
            transform: translateY(-4px);
            border-color: var(--brand-soft);
            box-shadow: var(--shadow);
        }
        .cat-icon {
            width: 56px; height: 56px;
            border-radius: 18px;
            background: var(--brand-soft);
            color: var(--brand-dark);
            display: grid; place-items: center;
            font-size: 22px;
            transition: background var(--transition), color var(--transition);
        }
        .cat:hover .cat-icon { background: var(--brand); color: #fff; }
        .cat h3 { font-size: 15px; font-weight: 600; }
        .cat small { font-size: 13px; color: var(--ink-mute); }

        /* ========== PRODUCTS ========== */
        .filters {
            display: flex;
            gap: 8px;
            flex-wrap: wrap;
            margin-bottom: var(--space-5);
        }
        .chip {
            padding: 10px 18px;
            border-radius: var(--radius-pill);
            background: #fff;
            border: 1px solid var(--line);
            font-size: 14px;
            font-weight: 500;
            color: var(--ink-soft);
            transition: all var(--transition);
            min-height: 42px;
            display: inline-flex;
            align-items: center;
        }
        .chip:hover { border-color: var(--brand); color: var(--brand); }
        .chip.active { background: var(--ink); color: #fff; border-color: var(--ink); }

        .prod-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: var(--space-4);
        }
        .prod {
            background: var(--card);
            border: 1px solid var(--line);
            border-radius: var(--radius);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            transition: transform var(--transition), box-shadow var(--transition), border-color var(--transition);
        }
        .prod:hover {
            transform: translateY(-4px);
            box-shadow: var(--shadow-lg);
            border-color: transparent;
        }
        .prod-img {
            position: relative;
            aspect-ratio: 1/1;
            background: var(--bg-soft);
            overflow: hidden;
        }
        .prod-img img {
            width: 100%; height: 100%;
            object-fit: cover;
            transition: transform 0.4s ease;
        }
        .prod:hover .prod-img img { transform: scale(1.05); }

        .tag {
            position: absolute;
            top: 12px; left: 12px;
            padding: 5px 12px;
            border-radius: var(--radius-pill);
            font-size: 11.5px;
            font-weight: 700;
            letter-spacing: 0.4px;
            text-transform: uppercase;
            background: var(--brand);
            color: #fff;
        }
        .tag.sale { background: var(--warm); }
        .tag.new { background: var(--mint); }

        .wish {
            position: absolute;
            top: 10px; right: 10px;
            width: 42px; height: 42px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.95);
            color: var(--ink-mute);
            display: grid; place-items: center;
            font-size: 16px;
            transition: transform var(--transition), color var(--transition), background var(--transition);
            box-shadow: var(--shadow-sm);
        }
        .wish:hover { background: #fff; color: var(--warm); transform: scale(1.08); }
        .wish.active { color: var(--warm); }

        .prod-body {
            padding: var(--space-4) var(--space-4) var(--space-3);
            display: flex;
            flex-direction: column;
            gap: 6px;
            flex: 1;
        }
        .prod-cat {
            font-size: 12px;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.6px;
            color: var(--ink-faint);
        }
        .prod h3 {
            font-size: 15.5px;
            font-weight: 600;
            line-height: 1.35;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }
        .price-row {
            display: flex;
            align-items: baseline;
            gap: 8px;
            margin-top: 2px;
        }
        .price { font-weight: 700; font-size: 18px; color: var(--ink); }
        .price-old { font-size: 14px; color: var(--ink-faint); text-decoration: line-through; }
        .rating {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            font-size: 13px;
            color: var(--ink-mute);
        }
        .rating .stars { color: var(--sun); letter-spacing: 1px; }

        .prod-foot { padding: 0 var(--space-4) var(--space-4); }
        .add-btn {
            width: 100%;
            min-height: 46px;
            padding: 12px;
            border-radius: var(--radius-sm);
            background: var(--bg-soft);
            color: var(--ink);
            font-weight: 600;
            font-size: 14.5px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            transition: all var(--transition);
        }
        .add-btn:hover { background: var(--brand); color: #fff; }
        .add-btn.added { background: var(--mint); color: #fff; }

        /* Empty state */
        .empty {
            grid-column: 1 / -1;
            text-align: center;
            padding: var(--space-8) var(--space-4);
            background: var(--card);
            border-radius: var(--radius);
            border: 1px dashed var(--line-strong);
        }
        .empty i { font-size: 42px; color: var(--ink-faint); margin-bottom: 12px; }
        .empty h3 { font-size: 18px; margin-bottom: 6px; }
        .empty p { color: var(--ink-mute); font-size: 15px; }

        /* ========== DEAL ========== */
        .deal {
            display: grid;
            grid-template-columns: 1fr 1fr;
            background: var(--card);
            border-radius: var(--radius-lg);
            overflow: hidden;
            border: 1px solid var(--line);
            box-shadow: var(--shadow);
        }
        .deal-img { position: relative; min-height: 380px; background: var(--bg-soft); }
        .deal-img img { width: 100%; height: 100%; object-fit: cover; }
        .deal-img::after {
            content: 'Limited Time';
            position: absolute;
            top: 20px; left: 20px;
            background: var(--warm);
            color: #fff;
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 1px;
            padding: 8px 16px;
            border-radius: var(--radius-pill);
        }
        .deal-content {
            padding: var(--space-7) var(--space-6);
            display: flex;
            flex-direction: column;
            gap: var(--space-3);
            justify-content: center;
        }
        .deal-content h2 {
            font-family: 'Fraunces', serif;
            font-size: clamp(24px, 3vw, 32px);
            font-weight: 700;
            letter-spacing: -0.4px;
            line-height: 1.15;
        }
        .deal-content .desc { color: var(--ink-mute); font-size: 15.5px; }
        .deal-price {
            display: flex;
            align-items: baseline;
            gap: 12px;
            flex-wrap: wrap;
            margin-top: 4px;
        }
        .deal-price .now {
            font-family: 'Fraunces', serif;
            font-size: 38px;
            font-weight: 700;
            color: var(--brand-dark);
            line-height: 1;
        }
        .deal-price .was { font-size: 18px; color: var(--ink-faint); text-decoration: line-through; }
        .deal-price .save {
            background: var(--mint-soft);
            color: var(--mint);
            font-size: 13px;
            font-weight: 700;
            padding: 4px 12px;
            border-radius: var(--radius-pill);
        }

        .stock-line {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 14px;
            color: var(--ink-soft);
        }
        .stock-bar {
            flex: 1;
            height: 8px;
            background: var(--bg-soft);
            border-radius: var(--radius-pill);
            overflow: hidden;
        }
        .stock-bar span {
            display: block;
            height: 100%;
            width: 24%;
            background: linear-gradient(90deg, var(--warm), var(--sun));
            border-radius: inherit;
        }

        .timer {
            display: flex;
            gap: 10px;
            margin: 8px 0 12px;
        }
        .timer-box {
            background: var(--ink);
            color: #fff;
            border-radius: var(--radius-sm);
            padding: 12px 0;
            min-width: 68px;
            text-align: center;
            flex: 0 0 auto;
        }
        .timer-box .n {
            font-family: 'Fraunces', serif;
            font-size: 24px;
            font-weight: 700;
            line-height: 1.1;
            font-variant-numeric: tabular-nums;
        }
        .timer-box .l {
            font-size: 11px;
            text-transform: uppercase;
            letter-spacing: 1px;
            opacity: 0.7;
        }

        /* ========== TESTIMONIALS ========== */
        .review-row {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: var(--space-4);
        }
        .review {
            background: var(--card);
            border: 1px solid var(--line);
            border-radius: var(--radius);
            padding: var(--space-5);
            display: flex;
            flex-direction: column;
            gap: 14px;
            transition: transform var(--transition), box-shadow var(--transition);
        }
        .review:hover { transform: translateY(-4px); box-shadow: var(--shadow); }
        .review .stars { color: var(--sun); font-size: 15px; letter-spacing: 2px; }
        .review blockquote {
            font-size: 15px;
            line-height: 1.65;
            color: var(--ink-soft);
            flex: 1;
        }
        .review-author {
            display: flex;
            align-items: center;
            gap: 12px;
            padding-top: 14px;
            border-top: 1px solid var(--line);
        }
        .review-author img {
            width: 44px; height: 44px;
            border-radius: 50%;
            object-fit: cover;
            background: var(--bg-soft);
        }
        .review-author .name { font-weight: 600; font-size: 14.5px; }
        .review-author .meta { font-size: 13px; color: var(--ink-mute); }

        /* ========== NEWSLETTER ========== */
        .news {
            background: linear-gradient(135deg, var(--brand) 0%, var(--brand-dark) 100%);
            border-radius: var(--radius-lg);
            padding: var(--space-7) var(--space-6);
            color: #fff;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: var(--space-6);
            align-items: center;
            position: relative;
            overflow: hidden;
        }
        .news::before {
            content: '';
            position: absolute;
            top: -60px; right: -60px;
            width: 240px; height: 240px;
            background: radial-gradient(circle, rgba(255, 183, 3, 0.25), transparent 70%);
            border-radius: 50%;
        }
        .news-text { position: relative; z-index: 1; }
        .news-text .eyebrow {
            display: inline-block;
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 1.5px;
            background: rgba(255, 255, 255, 0.15);
            padding: 6px 14px;
            border-radius: var(--radius-pill);
            margin-bottom: 12px;
        }
        .news-text h2 {
            font-family: 'Fraunces', serif;
            font-size: clamp(24px, 3vw, 30px);
            font-weight: 700;
            letter-spacing: -0.3px;
            line-height: 1.2;
            margin-bottom: 8px;
        }
        .news-text p { color: rgba(255, 255, 255, 0.82); font-size: 15.5px; }

        .news-form {
            position: relative;
            z-index: 1;
            display: flex;
            flex-direction: column;
            gap: 10px;
        }
        .news-input-row {
            display: flex;
            gap: 8px;
            background: rgba(255, 255, 255, 0.12);
            border: 2px solid rgba(255, 255, 255, 0.18);
            border-radius: var(--radius-pill);
            padding: 6px 6px 6px 20px;
            transition: border-color var(--transition), background var(--transition);
        }
        .news-input-row:focus-within {
            border-color: #fff;
            background: rgba(255, 255, 255, 0.18);
        }
        .news-input-row input {
            flex: 1;
            border: 0;
            outline: none;
            background: transparent;
            color: #fff;
            font-size: 15px;
            min-width: 0;
        }
        .news-input-row input::placeholder { color: rgba(255, 255, 255, 0.6); }
        .news-input-row button {
            background: var(--sun);
            color: var(--ink);
            font-weight: 700;
            padding: 12px 22px;
            border-radius: var(--radius-pill);
            font-size: 14.5px;
            display: inline-flex;
            align-items: center;
            gap: 8px;
            transition: background var(--transition), transform var(--transition);
            white-space: nowrap;
        }
        .news-input-row button:hover { background: #ffc93c; transform: translateY(-1px); }
        .news-hint { font-size: 13px; color: rgba(255, 255, 255, 0.7); padding-left: 8px; }
        .news-msg {
            font-size: 14px;
            padding: 10px 16px;
            border-radius: var(--radius-sm);
            display: none;
        }
        .news-msg.ok { display: block; background: rgba(6, 167, 125, 0.25); color: #d7f5ec; }
        .news-msg.err { display: block; background: rgba(255, 107, 107, 0.25); color: #ffe4e4; }

        /* ========== FOOTER ========== */
        .site-footer {
            margin-top: var(--space-8);
            padding: var(--space-7) 0 var(--space-5);
            border-top: 1px solid var(--line);
            background: var(--bg-soft);
        }
        .foot-grid {
            display: grid;
            grid-template-columns: 1.6fr 1fr 1fr 1fr;
            gap: var(--space-6);
            margin-bottom: var(--space-6);
        }
        .foot-brand p {
            color: var(--ink-mute);
            font-size: 14.5px;
            max-width: 320px;
            margin: 12px 0 20px;
            line-height: 1.65;
        }
        .socials { display: flex; gap: 10px; }
        .socials a {
            width: 42px; height: 42px;
            border-radius: 50%;
            background: #fff;
            display: grid; place-items: center;
            color: var(--ink-soft);
            font-size: 15px;
            border: 1px solid var(--line);
            transition: all var(--transition);
        }
        .socials a:hover { background: var(--brand); color: #fff; border-color: var(--brand); transform: translateY(-2px); }

        .foot-col h4 {
            font-size: 14px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 1px;
            margin-bottom: 16px;
            color: var(--ink);
        }
        .foot-col ul { list-style: none; display: flex; flex-direction: column; gap: 10px; }
        .foot-col a {
            color: var(--ink-mute);
            font-size: 14.5px;
            transition: color var(--transition), padding var(--transition);
            display: inline-block;
        }
        .foot-col a:hover { color: var(--brand); padding-left: 4px; }

        .foot-bottom {
            padding-top: var(--space-5);
            border-top: 1px solid var(--line);
            display: flex;
            justify-content: space-between;
            gap: var(--space-3);
            flex-wrap: wrap;
            color: var(--ink-mute);
            font-size: 13.5px;
        }

        /* ========== TOAST ========== */
        .toast-wrap {
            position: fixed;
            bottom: 24px;
            left: 50%;
            transform: translateX(-50%);
            z-index: 999;
            display: flex;
            flex-direction: column;
            gap: 10px;
            pointer-events: none;
            width: calc(100% - 40px);
            max-width: 400px;
        }
        .toast {
            background: var(--ink);
            color: #fff;
            padding: 14px 20px;
            border-radius: var(--radius);
            font-size: 14.5px;
            font-weight: 500;
            display: flex;
            align-items: center;
            gap: 12px;
            box-shadow: var(--shadow-lg);
            animation: toastIn 0.3s ease;
            pointer-events: auto;
        }
        .toast i { color: var(--mint); font-size: 18px; }
        .toast.warm i { color: var(--sun); }
        @keyframes toastIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* ========== RESPONSIVE ========== */
        @media (max-width: 1100px) {
            .prod-grid { grid-template-columns: repeat(3, 1fr); }
            .cat-grid { grid-template-columns: repeat(3, 1fr); }
            .review-row { grid-template-columns: repeat(2, 1fr); }
            .nav-main { display: none; }
            .menu-btn { display: grid; }
            .foot-grid { grid-template-columns: 1fr 1fr; }
        }

        @media (max-width: 900px) {
            .search { min-width: 160px; }
            .deal { grid-template-columns: 1fr; }
            .deal-img { min-height: 260px; }
            .deal-content { padding: var(--space-6) var(--space-5); }
            .news { grid-template-columns: 1fr; text-align: left; }
            .hero-inner { padding: 48px 0; }
        }

        @media (max-width: 720px) {
            .container { padding: 0 16px; }
            .hero { margin: 12px 12px 0; }
            .search { display: none; }
            .prod-grid { grid-template-columns: repeat(2, 1fr); gap: 12px; }
            .cat-grid { grid-template-columns: repeat(2, 1fr); gap: 10px; }
            .section { padding: 44px 0 16px; }
            .section-head { margin-bottom: var(--space-5); }
            .review-row { grid-template-columns: 1fr; }
            .foot-grid { grid-template-columns: 1fr; gap: var(--space-5); }
            .news { padding: var(--space-6) var(--space-4); }
            .timer { gap: 8px; }
            .timer-box { min-width: 58px; padding: 10px 0; }
            .timer-box .n { font-size: 20px; }
            .hero-stats { gap: 20px; }
            .hero-stat strong { font-size: 22px; }
            .deal-price .now { font-size: 32px; }
        }

        @media (max-width: 420px) {
            .prod-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
            .prod-body { padding: 12px 12px 8px; }
            .prod h3 { font-size: 14px; }
            .price { font-size: 16px; }
            .prod-foot { padding: 0 12px 12px; }
            .add-btn { font-size: 13px; min-height: 42px; padding: 10px; }
            .timer { flex-wrap: wrap; }
            .hero-cta .btn { flex: 1; }
            .news-input-row { flex-direction: column; padding: 12px; }
            .news-input-row button { justify-content: center; }
        }
    </style>
</head>

<body>

<!-- ============ HEADER ============ -->
<header class="site-header">
    <div class="container header-row">
        <a href="#" class="brand" aria-label="NexusShop home">
            <span class="brand-mark"><i class="fas fa-store"></i></span>
            <span>Nexus<span class="dot">Shop</span></span>
        </a>

        <nav class="nav-main" aria-label="Primary">
            <a href="#" class="active"><i class="fas fa-house"></i> Home</a>
            <a href="#categories"><i class="fas fa-grip"></i> Categories</a>
            <a href="#products"><i class="fas fa-fire"></i> Trending</a>
            <a href="#deal"><i class="fas fa-tag"></i> Deals</a>
            <a href="#reviews"><i class="fas fa-star"></i> Reviews</a>
        </nav>

        <div class="header-tools">
            <div class="search" role="search">
                <i class="fas fa-magnifying-glass" aria-hidden="true"></i>
                <input type="search" id="searchInput" placeholder="Search products…" aria-label="Search products" />
                <button id="searchBtn" aria-label="Search"><i class="fas fa-arrow-right"></i></button>
            </div>

            <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>

            <button class="icon-btn cart-btn" id="cartBtn" title="Cart" aria-label="Cart">
                <i class="fas fa-bag-shopping"></i>
                <span class="cart-badge" id="cartCount">0</span>
            </button>

            <button class="menu-btn" id="menuBtn" aria-label="Open menu" aria-expanded="false">
                <i class="fas fa-bars"></i>
            </button>
        </div>
    </div>

    <div class="mobile-menu" id="mobileMenu">
        <div class="container">
            <ul>
                <li><a href="#"><i class="fas fa-house"></i> Home</a></li>
                <li><a href="#categories"><i class="fas fa-grip"></i> Categories</a></li>
                <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                <li><a href="#deal"><i class="fas fa-tag"></i> Deals</a></li>
                <li><a href="#reviews"><i class="fas fa-star"></i> Reviews</a></li>
            </ul>
        </div>
    </div>
</header>

<main>

    <!-- ============ HERO ============ -->
    <section class="hero" aria-labelledby="hero-title">
        <div class="container hero-inner">
            <span class="hero-eyebrow">
                <span class="pulse"></span>
                New arrivals — Fall 2026
            </span>

            <h1 id="hero-title">Everything you love,<br>at prices you'll adore.</h1>

            <p>Handpicked products, honest reviews, and free shipping on your first order. Shopping made simple and joyful.</p>

            <div class="hero-cta">
                <button class="btn btn-warm" id="shopNow">
                    <i class="fas fa-bag-shopping"></i> Start Shopping
                </button>
                <button class="btn btn-ghost" id="exploreDeals">
                    <i class="fas fa-bolt"></i> Today's Deals
                </button>
            </div>

            <div class="hero-stats">
                <div class="hero-stat"><strong>50k+</strong><span>Happy customers</span></div>
                <div class="hero-stat"><strong>4.9★</strong><span>Average rating</span></div>
                <div class="hero-stat"><strong>24h</strong><span>Fast delivery</span></div>
            </div>
        </div>
    </section>

    <!-- ============ CATEGORIES ============ -->
    <section class="section" id="categories" aria-labelledby="cat-title">
        <div class="container">
            <div class="section-head">
                <div>
                    <span class="eyebrow"><i class="fas fa-grip"></i> Shop by category</span>
                    <h2 id="cat-title">Find what you need, fast</h2>
                    <p>Tap a category to jump straight to the products you care about.</p>
                </div>
                <a href="#products" class="link-arrow">Browse all <i class="fas fa-arrow-right"></i></a>
            </div>
            <div class="cat-grid" id="catGrid"></div>
        </div>
    </section>

    <!-- ============ PRODUCTS ============ -->
    <section class="section" id="products" aria-labelledby="prod-title">
        <div class="container">
            <div class="section-head">
                <div>
                    <span class="eyebrow"><i class="fas fa-fire"></i> Trending now</span>
                    <h2 id="prod-title">Popular picks this week</h2>
                    <p>Loved by our community — updated daily.</p>
                </div>
            </div>

            <div class="filters" id="filters" role="tablist" aria-label="Filter products"></div>

            <div class="prod-grid" id="prodGrid" aria-live="polite"></div>
        </div>
    </section>

    <!-- ============ DEAL ============ -->
    <section class="section" id="deal" aria-labelledby="deal-title">
        <div class="container">
            <div class="section-head">
                <div>
                    <span class="eyebrow"><i class="fas fa-bolt"></i> Flash deal</span>
                    <h2 id="deal-title">Today's best offer</h2>
                    <p>Only a few left — grab it before the timer runs out.</p>
                </div>
            </div>

            <div class="deal">
                <div class="deal-img">
                    <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=80" alt="MacBook Air M2 laptop on a desk" loading="lazy">
                </div>
                <div class="deal-content">
                    <h2>MacBook Air M2</h2>
                    <p class="desc">Thin, light, and incredibly powerful. The M2 chip redefines what a laptop can do — all day battery, silent performance.</p>

                    <div class="deal-price">
                        <span class="now">$999</span>
                        <span class="was">$1,199</span>
                        <span class="save">Save $200</span>
                    </div>

                    <div class="stock-line">
                        <span>Only <strong>12</strong> left</span>
                        <div class="stock-bar" aria-hidden="true"><span></span></div>
                    </div>

                    <div class="timer" id="timer" aria-label="Deal countdown">
                        <div class="timer-box"><div class="n" id="tDays">0</div><div class="l">Days</div></div>
                        <div class="timer-box"><div class="n" id="tHours">00</div><div class="l">Hours</div></div>
                        <div class="timer-box"><div class="n" id="tMins">00</div><div class="l">Min</div></div>
                        <div class="timer-box"><div class="n" id="tSecs">00</div><div class="l">Sec</div></div>
                    </div>

                    <button class="btn btn-warm btn-block" id="buyDeal">
                        <i class="fas fa-cart-plus"></i> Add to Cart
                    </button>
                </div>
            </div>
        </div>
    </section>

    <!-- ============ REVIEWS ============ -->
    <section class="section" id="reviews" aria-labelledby="rev-title">
        <div class="container">
            <div class="section-head">
                <div>
                    <span class="eyebrow"><i class="fas fa-star"></i> Reviews</span>
                    <h2 id="rev-title">What our customers say</h2>
                    <p>Real feedback from verified buyers.</p>
                </div>
            </div>
            <div class="review-row" id="reviewRow"></div>
        </div>
    </section>

    <!-- ============ NEWSLETTER ============ -->
    <section class="section" aria-labelledby="news-title">
        <div class="container">
            <div class="news">
                <div class="news-text">
                    <span class="eyebrow">Newsletter</span>
                    <h2 id="news-title">Get 10% off your first order</h2>
                    <p>Subscribe for early access to sales, new arrivals, and members-only deals. No spam, ever.</p>
                </div>
                <form class="news-form" id="newsForm" novalidate>
                    <div class="news-input-row">
                        <input type="email" id="newsEmail" placeholder="you@example.com" aria-label="Email address" required />
                        <button type="submit"><i class="fas fa-paper-plane"></i> Subscribe</button>
                    </div>
                    <div class="news-hint">We'll only email you about things you'll actually like.</div>
                    <div class="news-msg" id="newsMsg" role="status"></div>
                </form>
            </div>
        </div>
    </section>

</main>

<!-- ============ FOOTER ============ -->
<footer class="site-footer">
    <div class="container">
        <div class="foot-grid">
            <div class="foot-brand">
                <a href="#" class="brand">
                    <span class="brand-mark"><i class="fas fa-store"></i></span>
                    <span>Nexus<span class="dot">Shop</span></span>
                </a>
                <p>Modern shopping, made simple. Quality products, fair prices, and a team that actually cares.</p>
                <div class="socials">
                    <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                    <a href="#" aria-label="Twitter"><i class="fab fa-x-twitter"></i></a>
                    <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
                </div>
            </div>

            <div class="foot-col">
                <h4>Company</h4>
                <ul>
                    <li><a href="#">About us</a></li>
                    <li><a href="#">Careers</a></li>
                    <li><a href="#">Press</a></li>
                    <li><a href="#">Blog</a></li>
                </ul>
            </div>

            <div class="foot-col">
                <h4>Support</h4>
                <ul>
                    <li><a href="#">Help center</a></li>
                    <li><a href="#">Shipping</a></li>
                    <li><a href="#">Returns</a></li>
                    <li><a href="#">Contact us</a></li>
                </ul>
            </div>

            <div class="foot-col">
                <h4>Legal</h4>
                <ul>
                    <li><a href="#">Privacy</a></li>
                    <li><a href="#">Terms</a></li>
                    <li><a href="#">Cookies</a></li>
                </ul>
            </div>
        </div>

        <div class="foot-bottom">
            <span>&copy; <span id="year"></span> NexusShop. All rights reserved.</span>
            <span>Made with <i class="fas fa-heart" style="color:var(--warm)"></i> for people who love to shop</span>
        </div>
    </div>
</footer>

<!-- ============ TOASTS ============ -->
<div class="toast-wrap" id="toasts" aria-live="polite"></div>

<script>
    /* ============================================================
       DATA
       ============================================================ */
    const CATEGORIES = [
        { id: 'phones',      name: 'Smartphones', icon: 'fa-mobile-screen', count: 24 },
        { id: 'laptops',     name: 'Laptops',     icon: 'fa-laptop',       count: 18 },
        { id: 'clothing',    name: 'Clothing',    icon: 'fa-shirt',        count: 42 },
        { id: 'gadgets',     name: 'Gadgets',     icon: 'fa-headphones',   count: 31 },
        { id: 'footwear',    name: 'Footwear',    icon: 'fa-shoe-prints',  count: 27 },
        { id: 'accessories', name: 'Accessories', icon: 'fa-watch',        count: 39 }
    ];

    const PRODUCTS = [
        { id: 1, title: 'iPhone 14 Pro Max',      price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New',  category: 'Smartphones', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80' },
        { id: 2, title: 'MacBook Pro 14"',        price: 1999,                rating: 4, reviews: 86,  badge: '',     category: 'Laptops',     img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80' },
        { id: 3, title: 'Apple Watch Series 8',   price: 349,  oldPrice: 399,  rating: 5, reviews: 214, badge: 'Sale', category: 'Accessories', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80' },
        { id: 4, title: 'Nike Air Max 270',       price: 150,                 rating: 4, reviews: 53,  badge: '',     category: 'Footwear',    img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80' },
        { id: 5, title: 'Sony A7 IV Camera',      price: 2499,                rating: 5, reviews: 42,  badge: 'New',  category: 'Gadgets',     img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80' },
        { id: 6, title: 'Chanel No. 5 Perfume',   price: 120,                 rating: 5, reviews: 189, badge: '',     category: 'Accessories', img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80' },
        { id: 7, title: 'Travel Backpack 30L',    price: 79,   oldPrice: 99,   rating: 4, reviews: 67,  badge: 'Sale', category: 'Accessories', img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80' },
        { id: 8, title: 'Sony WH-1000XM5',        price: 399,                 rating: 5, reviews: 156, badge: '',     category: 'Gadgets',     img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80' }
    ];

    const REVIEWS = [
        { name: 'Ava Martin',  role: 'Verified Buyer',   avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=120&q=80', text: 'Fast shipping and genuinely helpful support. The product exceeded my expectations!', stars: 5 },
        { name: 'Michael Lee', role: 'Frequent Shopper', avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=120&q=80', text: 'Great selection and a smooth checkout. Will definitely shop here again.',            stars: 4 },
        { name: 'Sophia Chen', role: 'Designer',          avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=120&q=80', text: 'Love the quality and the packaging. Everything arrived in perfect condition.',     stars: 5 },
        { name: 'James Wilson',role: 'Tech Enthusiast',   avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=120&q=80', text: 'Amazing prices on electronics. The M2 MacBook deal was unbeatable.',              stars: 5 }
    ];

    /* ============================================================
       STATE
       ============================================================ */
    let cartCount = 0;
    let activeFilter = 'All';

    /* ============================================================
       DOM
       ============================================================ */
    const $ = (id) => document.getElementById(id);

    const catGrid    = $('catGrid');
    const prodGrid   = $('prodGrid');
    const filtersEl  = $('filters');
    const cartCountEl= $('cartCount');
    const searchInput= $('searchInput');
    const searchBtn  = $('searchBtn');
    const menuBtn    = $('menuBtn');
    const mobileMenu = $('mobileMenu');
    const reviewRow  = $('reviewRow');
    const newsForm   = $('newsForm');
    const newsEmail  = $('newsEmail');
    const newsMsg    = $('newsMsg');
    const toasts     = $('toasts');

    /* ============================================================
       HELPERS
       ============================================================ */
    const escapeHtml = (str) => String(str).replace(/[&<>"']/g, (s) => ({
        '&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'
    }[s]));

    const starsFor = (rating) => '★'.repeat(Math.round(rating)) + '☆'.repeat(5 - Math.round(rating));

    function showToast(message, kind = 'ok') {
        const el = document.createElement('div');
        el.className = 'toast' + (kind === 'warm' ? ' warm' : '');
        el.innerHTML = `<i class="fas ${kind === 'warm' ? 'fa-bolt' : 'fa-circle-check'}"></i><span>${escapeHtml(message)}</span>`;
        toasts.appendChild(el);
        setTimeout(() => {
            el.style.transition = 'opacity .3s ease, transform .3s ease';
            el.style.opacity = '0';
            el.style.transform = 'translateY(20px)';
            setTimeout(() => el.remove(), 300);
        }, 2400);
    }

    function updateCartCount() {
        cartCountEl.textContent = cartCount;
        cartCountEl.style.transform = 'scale(1.35)';
        setTimeout(() => cartCountEl.style.transform = 'scale(1)', 220);
    }

    /* ============================================================
       RENDER — CATEGORIES
       ============================================================ */
    function renderCategories() {
        catGrid.innerHTML = '';
        CATEGORIES.forEach((c) => {
            const el = document.createElement('button');
            el.className = 'cat';
            el.type = 'button';
            el.setAttribute('aria-label', `Browse ${c.name}`);
            el.innerHTML = `
                <div class="cat-icon"><i class="fas ${c.icon}"></i></div>
                <h3>${escapeHtml(c.name)}</h3>
                <small>${c.count} items</small>
            `;
            el.addEventListener('click', () => {
                activeFilter = c.name;
                renderFilters();
                renderProducts(filterByCategory(c.name));
                $('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
            });
            catGrid.appendChild(el);
        });
    }

    /* ============================================================
       RENDER — FILTERS
       ============================================================ */
    function renderFilters() {
        const options = ['All', ...CATEGORIES.map((c) => c.name)];
        filtersEl.innerHTML = '';
        options.forEach((opt) => {
            const b = document.createElement('button');
            b.type = 'button';
            b.className = 'chip' + (activeFilter === opt ? ' active' : '');
            b.textContent = opt;
            b.setAttribute('role', 'tab');
            b.setAttribute('aria-selected', activeFilter === opt);
            b.addEventListener('click', () => {
                activeFilter = opt;
                renderFilters();
                renderProducts(opt === 'All' ? PRODUCTS : filterByCategory(opt));
            });
            filtersEl.appendChild(b);
        });
    }

    const filterByCategory = (cat) => PRODUCTS.filter((p) => p.category === cat);

    /* ============================================================
       RENDER — PRODUCTS
       ============================================================ */
    function renderProducts(list) {
        prodGrid.innerHTML = '';

        if (!list.length) {
            prodGrid.innerHTML = `
                <div class="empty">
                    <i class="fas fa-magnifying-glass"></i>
                    <h3>No products found</h3>
                    <p>Try a different search or category.</p>
                </div>`;
            return;
        }

        list.forEach((p) => {
            const el = document.createElement('article');
            el.className = 'prod';

            const badgeClass =
                p.badge === 'Sale' ? 'sale' :
                p.badge === 'New'  ? 'new'  : '';
            const badgeHtml = p.badge
                ? `<span class="tag ${badgeClass}">${escapeHtml(p.badge)}</span>` : '';
            const oldPriceHtml = p.oldPrice
                ? `<span class="price-old">$${p.oldPrice.toLocaleString()}</span>` : '';

            el.innerHTML = `
                <div class="prod-img">
                    <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
                    ${badgeHtml}
                    <button class="wish" aria-label="Add ${escapeHtml(p.title)} to wishlist">
                        <i class="far fa-heart"></i>
                    </button>
                </div>
                <div class="prod-body">
                    <span class="prod-cat">${escapeHtml(p.category)}</span>
                    <h3>${escapeHtml(p.title)}</h3>
                    <div class="price-row">
                        <span class="price">$${p.price.toLocaleString()}</span>
                        ${oldPriceHtml}
                    </div>
                    <div class="rating">
                        <span class="stars">${starsFor(p.rating)}</span>
                        <span>${p.reviews} reviews</span>
                    </div>
                </div>
                <div class="prod-foot">
                    <button class="add-btn" data-id="${p.id}">
                        <i class="fas fa-cart-plus"></i> Add to cart
                    </button>
                </div>
            `;

            // Wishlist toggle
            const wish = el.querySelector('.wish');
            wish.addEventListener('click', () => {
                wish.classList.toggle('active');
                const on = wish.classList.contains('active');
                wish.innerHTML = on ? '<i class="fas fa-heart"></i>' : '<i class="far fa-heart"></i>';
                showToast(on ? 'Saved to wishlist' : 'Removed from wishlist', on ? 'ok' : 'warm');
            });

            prodGrid.appendChild(el);
        });

        prodGrid.querySelectorAll('.add-btn').forEach((btn) => {
            btn.addEventListener('click', (e) => {
                e.stopPropagation();
                addToCart(Number(btn.dataset.id), btn);
            });
        });
    }

    /* ============================================================
       RENDER — REVIEWS
       ============================================================ */
    function renderReviews() {
        reviewRow.innerHTML = '';
        REVIEWS.forEach((r) => {
            const el = document.createElement('div');
            el.className = 'review';
            el.innerHTML = `
                <div class="stars">${starsFor(r.stars)}</div>
                <blockquote>“${escapeHtml(r.text)}”</blockquote>
                <div class="review-author">
                    <img src="${r.avatar}" alt="" loading="lazy">
                    <div>
                        <div class="name">${escapeHtml(r.name)}</div>
                        <div class="meta">${escapeHtml(r.role)}</div>
                    </div>
                </div>
            `;
            reviewRow.appendChild(el);
        });
    }

    /* ============================================================
       CART
       ============================================================ */
    function addToCart(id, btnEl) {
        const p = PRODUCTS.find((x) => x.id === id);
        if (!p) return;

        cartCount++;
        updateCartCount();
        showToast(`${p.title} added to cart`);

        if (btnEl) {
            const orig = btnEl.innerHTML;
            btnEl.classList.add('added');
            btnEl.innerHTML = '<i class="fas fa-check"></i> Added!';
            setTimeout(() => {
                btnEl.classList.remove('added');
                btnEl.innerHTML = orig;
            }, 1400);
        }
    }

    /* ============================================================
       SEARCH
       ============================================================ */
    function runSearch() {
        const q = searchInput.value.trim().toLowerCase();
        if (!q) {
            activeFilter = 'All';
            renderFilters();
            renderProducts(PRODUCTS);
            return;
        }
        const filtered = PRODUCTS.filter((p) =>
            p.title.toLowerCase().includes(q) ||
            p.category.toLowerCase().includes(q)
        );
        activeFilter = 'All';
        renderFilters();
        renderProducts(filtered);
        $('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
        if (filtered.length) showToast(`Found ${filtered.length} result${filtered.length !== 1 ? 's' : ''}`);
    }

    /* ============================================================
       DEAL TIMER
       ============================================================ */
    (function dealTimer() {
        const target = new Date(Date.now() + ((24 * 60 + 36) * 60 * 1000));
        const dEl = $('tDays'), hEl = $('tHours'), mEl = $('tMins'), sEl = $('tSecs');

        function tick() {
            const diff = target - Date.now();
            if (diff <= 0) {
                dEl.textContent = '0'; hEl.textContent = '00';
                mEl.textContent = '00'; sEl.textContent = '00';
                return;
            }
            const d = Math.floor(diff / 86400000);
            const h = Math.floor((diff % 86400000) / 3600000);
            const m = Math.floor((diff % 3600000) / 60000);
            const s = Math.floor((diff % 60000) / 1000);
            dEl.textContent = d;
            hEl.textContent = String(h).padStart(2, '0');
            mEl.textContent = String(m).padStart(2, '0');
            sEl.textContent = String(s).padStart(2, '0');
        }
        tick();
        setInterval(tick, 1000);
    })();

    /* ============================================================
       EVENT BINDINGS
       ============================================================ */
    searchBtn.addEventListener('click', runSearch);
    searchInput.addEventListener('keydown', (e) => { if (e.key === 'Enter') runSearch(); });

    menuBtn.addEventListener('click', () => {
        const open = mobileMenu.classList.toggle('open');
        menuBtn.setAttribute('aria-expanded', open);
        menuBtn.innerHTML = open ? '<i class="fas fa-xmark"></i>' : '<i class="fas fa-bars"></i>';
    });

    mobileMenu.querySelectorAll('a').forEach((a) => {
        a.addEventListener('click', () => {
            mobileMenu.classList.remove('open');
            menuBtn.innerHTML = '<i class="fas fa-bars"></i>';
            menuBtn.setAttribute('aria-expanded', 'false');
        });
    });

    $('shopNow').addEventListener('click', () =>
        $('products').scrollIntoView({ behavior: 'smooth', block: 'start' }));
    $('exploreDeals').addEventListener('click', () =>
        $('deal').scrollIntoView({ behavior: 'smooth', block: 'start' }));

    $('buyDeal').addEventListener('click', () => {
        cartCount++;
        updateCartCount();
        showToast('MacBook Air M2 added to cart');
    });

    $('cartBtn').addEventListener('click', () => {
        showToast(cartCount === 0
            ? 'Your cart is empty — start shopping!'
            : `Your cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}`, 'warm');
    });

    newsForm.addEventListener('submit', (e) => {
        e.preventDefault();
        const email = newsEmail.value.trim();
        const valid = /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
        if (!valid) {
            newsMsg.className = 'news-msg err';
            newsMsg.textContent = 'Please enter a valid email address.';
            newsEmail.focus();
            return;
        }
        newsMsg.className = 'news-msg ok';
        newsMsg.textContent = '🎉 You\'re in! Check your inbox for your 10% off code.';
        newsEmail.value = '';
        setTimeout(() => { newsMsg.className = 'news-msg'; }, 4000);
    });

    window.addEventListener('resize', () => {
        if (window.innerWidth > 1100) {
            mobileMenu.classList.remove('open');
            menuBtn.innerHTML = '<i class="fas fa-bars"></i>';
            menuBtn.setAttribute('aria-expanded', 'false');
        }
    });

    /* ============================================================
       INIT
       ============================================================ */
    $('year').textContent = new Date().getFullYear();

    renderCategories();
    renderFilters();
    renderProducts(PRODUCTS);
    renderReviews();
    updateCartCount();

    console.log('%c🛍️  NexusShop — friendly UI loaded.', 'color:#0d7377;font-weight:700;font-size:14px');
</script>

</body>
</html>
