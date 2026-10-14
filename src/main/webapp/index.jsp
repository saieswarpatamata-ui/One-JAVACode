<!DOCTYPE html
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>NexusShop — ALIEN PSY CORE UV</title>

  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

  <style>
    /* ============================================================
       ALIEN PSY CORE UV THEME — blacklight / neon / cosmos / ET
       ============================================================ */
    :root {
      --bg: #020004;
      --bg-card: #0a0412;
      --surface: #140a1f;
      --primary: #e8ddff;
      --primary-light: #c9b0ff;
      --accent: #ff00e5;
      --accent-2: #00f0ff;
      --accent-3: #f5ff00;
      --accent-4: #b100ff;
      --accent-5: #ff4d00;
      --accent-6: #00ff88;
      --alien: #39ff14;
      --alien-2: #00ffc8;
      --muted: #9d7fc0;
      --muted-light: #4d2e6b;
      --border: rgba(255, 0, 229, 0.18);
      --shadow: 0 8px 32px rgba(0, 0, 0, 0.95);
      --shadow-hover: 0 0 40px rgba(255, 0, 229, 0.4), 0 0 80px rgba(57, 255, 20, 0.12);
      --radius: 20px;
      --radius-sm: 12px;
      --transition: 0.3s cubic-bezier(0.4, 0, 0.2, 1);
      --container: 1240px;
      --uv1: #ff00e5;
      --uv2: #00f0ff;
      --uv3: #f5ff00;
      --uv4: #b100ff;
      --uv5: #ff4d00;
      --uv6: #00ff88;
    }

    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }
    html {
      scroll-behavior: smooth;
    }
    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
      -moz-osx-font-smoothing: grayscale;
      overflow-x: hidden;
      position: relative;
      min-height: 100vh;
    }

    /* ============================================================
       ALIEN COSMIC BACKGROUND — layered UV + UFOs + aliens
       ============================================================ */
    .alien-bg {
      position: fixed;
      inset: 0;
      z-index: -3;
      pointer-events: none;
      overflow: hidden;
      background:
        radial-gradient(ellipse at 15% 25%, rgba(57, 255, 20, 0.12) 0%, transparent 50%),
        radial-gradient(ellipse at 85% 75%, rgba(0, 240, 255, 0.15) 0%, transparent 55%),
        radial-gradient(ellipse at 50% 50%, rgba(255, 0, 229, 0.10) 0%, transparent 60%),
        radial-gradient(ellipse at 70% 15%, rgba(177, 0, 255, 0.12) 0%, transparent 50%),
        radial-gradient(ellipse at 25% 85%, rgba(245, 255, 0, 0.06) 0%, transparent 50%);
      animation: alienShift 25s ease-in-out infinite alternate;
    }
    @keyframes alienShift {
      0% {
        background:
          radial-gradient(ellipse at 15% 25%, rgba(57, 255, 20, 0.15) 0%, transparent 50%),
          radial-gradient(ellipse at 85% 75%, rgba(0, 240, 255, 0.18) 0%, transparent 55%),
          radial-gradient(ellipse at 50% 50%, rgba(255, 0, 229, 0.12) 0%, transparent 60%),
          radial-gradient(ellipse at 70% 15%, rgba(177, 0, 255, 0.15) 0%, transparent 50%),
          radial-gradient(ellipse at 25% 85%, rgba(245, 255, 0, 0.08) 0%, transparent 50%);
      }
      33% {
        background:
          radial-gradient(ellipse at 60% 20%, rgba(0, 255, 200, 0.18) 0%, transparent 50%),
          radial-gradient(ellipse at 20% 70%, rgba(255, 0, 229, 0.15) 0%, transparent 55%),
          radial-gradient(ellipse at 80% 50%, rgba(57, 255, 20, 0.12) 0%, transparent 60%),
          radial-gradient(ellipse at 40% 80%, rgba(177, 0, 255, 0.10) 0%, transparent 50%),
          radial-gradient(ellipse at 90% 10%, rgba(255, 77, 0, 0.06) 0%, transparent 50%);
      }
      66% {
        background:
          radial-gradient(ellipse at 30% 80%, rgba(0, 255, 136, 0.20) 0%, transparent 50%),
          radial-gradient(ellipse at 70% 20%, rgba(255, 77, 0, 0.15) 0%, transparent 55%),
          radial-gradient(ellipse at 50% 60%, rgba(177, 0, 255, 0.15) 0%, transparent 60%),
          radial-gradient(ellipse at 10% 40%, rgba(0, 240, 255, 0.12) 0%, transparent 50%),
          radial-gradient(ellipse at 90% 70%, rgba(255, 0, 229, 0.10) 0%, transparent 50%);
      }
      100% {
        background:
          radial-gradient(ellipse at 50% 10%, rgba(177, 0, 255, 0.20) 0%, transparent 50%),
          radial-gradient(ellipse at 50% 90%, rgba(255, 0, 229, 0.18) 0%, transparent 55%),
          radial-gradient(ellipse at 10% 50%, rgba(0, 240, 255, 0.15) 0%, transparent 60%),
          radial-gradient(ellipse at 90% 50%, rgba(57, 255, 20, 0.12) 0%, transparent 50%),
          radial-gradient(ellipse at 50% 50%, rgba(245, 255, 0, 0.06) 0%, transparent 50%);
      }
    }

    /* Starfield */
    .alien-bg::before {
      content: '';
      position: absolute;
      inset: 0;
      background-image:
        radial-gradient(1px 1px at 10% 20%, #fff, transparent),
        radial-gradient(1px 1px at 30% 60%, rgba(255,255,255,0.8), transparent),
        radial-gradient(1.5px 1.5px at 55% 15%, rgba(57,255,20,0.9), transparent),
        radial-gradient(1px 1px at 75% 45%, #fff, transparent),
        radial-gradient(1.5px 1.5px at 90% 80%, rgba(0,240,255,0.9), transparent),
        radial-gradient(1px 1px at 15% 90%, #fff, transparent),
        radial-gradient(1px 1px at 45% 35%, rgba(255,0,229,0.8), transparent),
        radial-gradient(1.5px 1.5px at 65% 70%, #fff, transparent),
        radial-gradient(1px 1px at 5% 50%, rgba(245,255,0,0.7), transparent),
        radial-gradient(1px 1px at 95% 25%, #fff, transparent),
        radial-gradient(1px 1px at 40% 95%, rgba(177,0,255,0.8), transparent),
        radial-gradient(1.5px 1.5px at 85% 5%, #fff, transparent);
      background-size: 100% 100%;
      animation: starDrift 60s linear infinite;
      opacity: 0.9;
    }
    @keyframes starDrift {
      0% { transform: translate(0, 0); }
      100% { transform: translate(-40px, -60px); }
    }

    /* Nebula noise overlay */
    .alien-bg::after {
      content: '';
      position: absolute;
      inset: 0;
      background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="300" height="300" viewBox="0 0 300 300"><filter id="n"><feTurbulence type="fractalNoise" baseFrequency="0.7" numOctaves="5" stitchTiles="stitch"/><feColorMatrix type="saturate" values="0"/></filter><rect width="300" height="300" filter="url(%23n)" opacity="0.05"/></svg>');
      background-size: 250px 250px;
      mix-blend-mode: overlay;
      opacity: 0.6;
      animation: alienNoise 0.6s steps(4) infinite;
    }
    @keyframes alienNoise {
      0% { background-position: 0 0; }
      25% { background-position: 80px 40px; }
      50% { background-position: 30px 90px; }
      75% { background-position: 120px 60px; }
      100% { background-position: 0 0; }
    }

    /* ============================================================
       UFO & ALIEN VISUAL LAYER
       ============================================================ */
    .ufo-layer {
      position: fixed;
      inset: 0;
      z-index: -2;
      pointer-events: none;
      overflow: hidden;
    }

    /* UFO 1 — large saucer, top right, slow drift */
    .ufo {
      position: absolute;
      animation: ufoFloat 18s ease-in-out infinite;
    }
    .ufo-1 {
      top: 8%;
      right: 6%;
      animation-duration: 22s;
    }
    .ufo-2 {
      top: 55%;
      left: 3%;
      animation-duration: 26s;
      animation-delay: -8s;
      transform: scale(0.7) rotate(-15deg);
      opacity: 0.7;
    }
    .ufo-3 {
      bottom: 12%;
      right: 18%;
      animation-duration: 30s;
      animation-delay: -14s;
      transform: scale(0.5) rotate(10deg);
      opacity: 0.5;
    }
    @keyframes ufoFloat {
      0% { transform: translate(0, 0) rotate(0deg); }
      25% { transform: translate(-30px, 20px) rotate(4deg); }
      50% { transform: translate(20px, -25px) rotate(-3deg); }
      75% { transform: translate(-15px, -15px) rotate(2deg); }
      100% { transform: translate(0, 0) rotate(0deg); }
    }

    /* UFO saucer body */
    .saucer {
      position: relative;
      width: 160px;
      height: 60px;
    }
    .saucer .dome {
      position: absolute;
      top: -28px;
      left: 50%;
      transform: translateX(-50%);
      width: 60px;
      height: 36px;
      border-radius: 50% 50% 0 0 / 100% 100% 0 0;
      background: linear-gradient(180deg, rgba(0, 240, 255, 0.65) 0%, rgba(0, 240, 255, 0.15) 70%, transparent 100%);
      border: 1.5px solid rgba(0, 240, 255, 0.7);
      box-shadow:
        0 0 25px rgba(0, 240, 255, 0.6),
        0 0 60px rgba(0, 240, 255, 0.25),
        inset 0 0 20px rgba(0, 240, 255, 0.3);
      animation: domeGlow 2.5s ease-in-out infinite alternate;
    }
    @keyframes domeGlow {
      0% { box-shadow: 0 0 25px rgba(0, 240, 255, 0.6), 0 0 60px rgba(0, 240, 255, 0.25), inset 0 0 20px rgba(0, 240, 255, 0.3); }
      100% { box-shadow: 0 0 35px rgba(0, 240, 255, 0.9), 0 0 90px rgba(0, 240, 255, 0.4), inset 0 0 30px rgba(0, 240, 255, 0.5); }
    }
    .saucer .dome::after {
      content: '';
      position: absolute;
      top: 6px;
      left: 50%;
      transform: translateX(-50%);
      width: 30px;
      height: 14px;
      border-radius: 50%;
      background: radial-gradient(circle, rgba(57, 255, 20, 0.8), transparent 70%);
      filter: blur(4px);
    }
    .saucer .body {
      position: absolute;
      bottom: 0;
      left: 50%;
      transform: translateX(-50%);
      width: 160px;
      height: 34px;
      border-radius: 50%;
      background:
        radial-gradient(ellipse at 50% 30%, rgba(177, 0, 255, 0.5) 0%, rgba(255, 0, 229, 0.3) 40%, rgba(20, 5, 30, 0.95) 75%);
      border: 1.5px solid rgba(255, 0, 229, 0.6);
      box-shadow:
        0 0 30px rgba(255, 0, 229, 0.5),
        0 0 70px rgba(177, 0, 255, 0.25),
        inset 0 -6px 15px rgba(255, 0, 229, 0.3);
    }
    .saucer .body::before,
    .saucer .body::after {
      content: '';
      position: absolute;
      top: 50%;
      width: 10px;
      height: 10px;
      border-radius: 50%;
      background: var(--alien);
      box-shadow: 0 0 15px var(--alien), 0 0 30px var(--alien);
      animation: lightBlink 1.5s ease-in-out infinite;
    }
    .saucer .body::before {
      left: 22%;
      animation-delay: 0s;
    }
    .saucer .body::after {
      right: 22%;
      animation-delay: 0.75s;
    }
    @keyframes lightBlink {
      0%, 100% { opacity: 1; transform: scale(1); }
      50% { opacity: 0.3; transform: scale(0.7); }
    }

    /* Alien entity — floating, glowing */
    .alien {
      position: absolute;
      width: 44px;
      height: 60px;
      animation: alienBob 6s ease-in-out infinite;
    }
    .alien-1 {
      top: 30%;
      left: 8%;
      animation-delay: 0s;
      transform: scale(0.9);
    }
    .alien-2 {
      bottom: 25%;
      right: 10%;
      animation-delay: -2s;
      transform: scale(0.7) rotate(8deg);
      opacity: 0.8;
    }
    .alien-3 {
      top: 70%;
      left: 30%;
      animation-delay: -4s;
      transform: scale(0.5) rotate(-10deg);
      opacity: 0.6;
    }
    @keyframes alienBob {
      0%, 100% { transform: translateY(0) rotate(0deg); }
      50% { transform: translateY(-20px) rotate(5deg); }
    }

    /* Alien head */
    .alien .head {
      position: relative;
      width: 44px;
      height: 44px;
      border-radius: 50% 50% 45% 45%;
      background:
        radial-gradient(ellipse at 50% 60%, rgba(57, 255, 20, 0.5) 0%, rgba(0, 255, 200, 0.2) 40%, rgba(10, 30, 10, 0.9) 80%);
      border: 1.5px solid rgba(57, 255, 20, 0.8);
      box-shadow:
        0 0 25px rgba(57, 255, 20, 0.6),
        0 0 50px rgba(0, 255, 200, 0.3),
        inset 0 0 20px rgba(57, 255, 20, 0.3);
    }
    /* Alien eyes */
    .alien .head::before,
    .alien .head::after {
      content: '';
      position: absolute;
      top: 45%;
      width: 12px;
      height: 8px;
      border-radius: 50%;
      background: radial-gradient(circle, #000 30%, rgba(57, 255, 20, 0.9) 60%, transparent 100%);
      box-shadow: 0 0 15px rgba(57, 255, 20, 0.9), 0 0 30px rgba(57, 255, 20, 0.5);
      animation: alienBlink 4s ease-in-out infinite;
    }
    .alien .head::before { left: 20%; transform: rotate(-15deg); }
    .alien .head::after { right: 20%; transform: rotate(15deg); }
    @keyframes alienBlink {
      0%, 90%, 100% { height: 8px; }
      95% { height: 1px; }
    }
    /* Alien body */
    .alien .body {
      position: absolute;
      top: 42px;
      left: 50%;
      transform: translateX(-50%);
      width: 18px;
      height: 20px;
      border-radius: 40% 40% 50% 50%;
      background: linear-gradient(180deg, rgba(57, 255, 20, 0.4), rgba(0, 255, 200, 0.15));
      border: 1px solid rgba(57, 255, 20, 0.6);
      box-shadow: 0 0 15px rgba(57, 255, 20, 0.4);
    }
    .alien .body::after {
      content: '';
      position: absolute;
      top: 8px;
      left: 50%;
      transform: translateX(-50%);
      width: 6px;
      height: 6px;
      border-radius: 50%;
      background: var(--alien-2);
      box-shadow: 0 0 10px var(--alien-2), 0 0 20px var(--alien-2);
    }

    /* UFO beam */
    .beam {
      position: absolute;
      top: 100%;
      left: 50%;
      transform: translateX(-50%);
      width: 40px;
      height: 120px;
      background: linear-gradient(180deg, rgba(57, 255, 20, 0.35) 0%, rgba(0, 240, 255, 0.15) 40%, transparent 100%);
      clip-path: polygon(35% 0%, 65% 0%, 100% 100%, 0% 100%);
      filter: blur(6px);
      animation: beamPulse 2s ease-in-out infinite alternate;
      pointer-events: none;
    }
    @keyframes beamPulse {
      0% { opacity: 0.4; transform: translateX(-50%) scaleY(1); }
      100% { opacity: 0.9; transform: translateX(-50%) scaleY(1.15); }
    }

    /* Cosmic ring / planet */
    .cosmic-ring {
      position: absolute;
      border-radius: 50%;
      border: 1.5px solid rgba(255, 0, 229, 0.25);
      box-shadow: 0 0 30px rgba(255, 0, 229, 0.15);
      animation: ringSpin 40s linear infinite;
    }
    .ring-1 {
      width: 300px;
      height: 300px;
      top: 60%;
      left: 70%;
      border-color: rgba(0, 240, 255, 0.2);
      animation-duration: 50s;
    }
    .ring-2 {
      width: 200px;
      height: 200px;
      top: 20%;
      left: 40%;
      border-color: rgba(177, 0, 255, 0.2);
      animation-duration: 35s;
      animation-direction: reverse;
    }
    @keyframes ringSpin {
      0% { transform: rotate(0deg); }
      100% { transform: rotate(360deg); }
    }

    /* UV glow orbs */
    .uv-orb {
      position: fixed;
      border-radius: 50%;
      filter: blur(130px);
      opacity: 0.30;
      pointer-events: none;
      z-index: -1;
      animation: orbFloat 16s ease-in-out infinite alternate;
    }
    .uv-orb-1 { width: 500px; height: 500px; background: var(--uv4); top: -15%; left: -10%; animation-duration: 20s; }
    .uv-orb-2 { width: 400px; height: 400px; background: var(--uv2); bottom: -10%; right: -5%; animation-duration: 24s; animation-delay: -5s; }
    .uv-orb-3 { width: 350px; height: 350px; background: var(--alien); top: 40%; left: 60%; animation-duration: 18s; animation-delay: -9s; opacity: 0.18; }
    .uv-orb-4 { width: 300px; height: 300px; background: var(--uv3); bottom: 20%; left: 15%; animation-duration: 22s; animation-delay: -3s; opacity: 0.14; }
    .uv-orb-5 { width: 280px; height: 280px; background: var(--uv5); top: 10%; right: 25%; animation-duration: 26s; animation-delay: -12s; opacity: 0.16; }
    @keyframes orbFloat {
      0% { transform: translate(0, 0) scale(1); }
      33% { transform: translate(70px, -50px) scale(1.12); }
      66% { transform: translate(-50px, 60px) scale(0.9); }
      100% { transform: translate(40px, -30px) scale(1.06); }
    }

    a {
      color: inherit;
      text-decoration: none;
    }
    img {
      display: block;
      max-width: 100%;
    }
    button {
      cursor: pointer;
      font-family: inherit;
      border: none;
      background: none;
      color: inherit;
    }
    input {
      font-family: inherit;
    }

    .container {
      width: 100%;
      max-width: var(--container);
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ---------- Utilities ---------- */
    .muted { color: var(--muted); }
    .text-center { text-align: center; }
    .sr-only {
      position: absolute;
      width: 1px;
      height: 1px;
      padding: 0;
      margin: -1px;
      overflow: hidden;
      clip: rect(0, 0, 0, 0);
      border: 0;
    }

    /* ============================================================
       BUTTONS — alien UV neon
       ============================================================ */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      padding: 12px 28px;
      border-radius: 999px;
      font-weight: 600;
      font-size: 15px;
      transition: var(--transition);
      border: 2px solid transparent;
      position: relative;
      overflow: hidden;
      text-shadow: 0 0 8px currentColor;
    }
    .btn-primary {
      background: var(--accent);
      color: #020004;
      border-color: var(--accent);
      box-shadow:
        0 0 20px rgba(255, 0, 229, 0.55),
        0 0 50px rgba(255, 0, 229, 0.25),
        0 0 80px rgba(57, 255, 20, 0.15),
        inset 0 0 30px rgba(255, 255, 255, 0.15);
    }
    .btn-primary:hover {
      background: var(--alien);
      border-color: var(--alien);
      box-shadow:
        0 0 35px rgba(57, 255, 20, 0.85),
        0 0 80px rgba(57, 255, 20, 0.4),
        0 0 120px rgba(0, 255, 200, 0.2),
        inset 0 0 40px rgba(255, 255, 255, 0.20);
      transform: translateY(-3px) scale(1.04);
      color: #020004;
    }
    .btn-secondary {
      background: var(--primary);
      color: #020004;
      border-color: var(--primary);
      box-shadow: 0 0 20px rgba(232, 221, 255, 0.4);
    }
    .btn-secondary:hover {
      background: var(--accent-3);
      border-color: var(--accent-3);
      box-shadow: 0 0 40px rgba(245, 255, 0, 0.7);
      transform: translateY(-3px) scale(1.04);
      color: #020004;
    }
    .btn-outline {
      background: transparent;
      color: var(--primary);
      border-color: rgba(57, 255, 20, 0.5);
      box-shadow: 0 0 15px rgba(57, 255, 20, 0.2);
    }
    .btn-outline:hover {
      background: var(--alien);
      color: #020004;
      border-color: var(--alien);
      box-shadow: 0 0 35px rgba(57, 255, 20, 0.8);
      transform: translateY(-3px) scale(1.04);
    }
    .btn-ghost {
      background: rgba(57, 255, 20, 0.08);
      color: #fff;
      border-color: rgba(57, 255, 20, 0.35);
      backdrop-filter: blur(12px);
      box-shadow: 0 0 20px rgba(57, 255, 20, 0.2);
    }
    .btn-ghost:hover {
      background: rgba(57, 255, 20, 0.22);
      border-color: var(--alien-2);
      box-shadow: 0 0 35px rgba(0, 255, 200, 0.6), inset 0 0 30px rgba(0, 255, 200, 0.1);
      transform: translateY(-3px) scale(1.04);
    }
    .btn-sm {
      padding: 8px 18px;
      font-size: 13px;
    }

    /* ============================================================
       HEADER
       ============================================================ */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(2, 0, 4, 0.78);
      backdrop-filter: blur(24px);
      -webkit-backdrop-filter: blur(24px);
      border-bottom: 1px solid rgba(57, 255, 20, 0.20);
      box-shadow: 0 4px 40px rgba(57, 255, 20, 0.06);
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 12px 0;
      min-height: 68px;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
      font-weight: 800;
      font-size: 22px;
      letter-spacing: -0.5px;
      color: #fff;
      flex-shrink: 0;
      text-shadow: 0 0 20px rgba(57, 255, 20, 0.5);
    }
    .brand .accent {
      background: linear-gradient(90deg, var(--accent), var(--accent-2), var(--alien), var(--alien-2));
      background-size: 300% 100%;
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
      animation: gradientFlow 4s ease infinite;
    }
    @keyframes gradientFlow {
      0%, 100% { background-position: 0% 50%; }
      50% { background-position: 100% 50%; }
    }
    .brand i {
      font-size: 26px;
      background: linear-gradient(135deg, var(--alien), var(--accent-2), var(--accent-4));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
      filter: drop-shadow(0 0 12px rgba(57, 255, 20, 0.7));
    }

    nav.main-nav ul {
      display: flex;
      gap: 4px;
      list-style: none;
      align-items: center;
    }
    nav.main-nav li a {
      display: flex;
      align-items: center;
      gap: 6px;
      padding: 8px 16px;
      border-radius: var(--radius-sm);
      font-weight: 500;
      font-size: 14px;
      color: var(--muted);
      transition: var(--transition);
      position: relative;
    }
    nav.main-nav li a:hover,
    nav.main-nav li a.active {
      background: rgba(57, 255, 20, 0.12);
      color: #fff;
      box-shadow: 0 0 25px rgba(57, 255, 20, 0.25), inset 0 0 20px rgba(57, 255, 20, 0.05);
      text-shadow: 0 0 15px rgba(57, 255, 20, 0.8);
    }
    nav.main-nav li a i {
      font-size: 14px;
      color: var(--alien);
      filter: drop-shadow(0 0 6px rgba(57, 255, 20, 0.7));
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 6px;
      flex-shrink: 0;
    }
    .header-actions .icon-btn {
      width: 42px;
      height: 42px;
      display: grid;
      place-items: center;
      border-radius: 50%;
      font-size: 18px;
      color: var(--muted);
      transition: var(--transition);
      position: relative;
    }
    .header-actions .icon-btn:hover {
      background: rgba(57, 255, 20, 0.15);
      color: var(--alien);
      box-shadow: 0 0 25px rgba(57, 255, 20, 0.4);
      text-shadow: 0 0 20px rgba(57, 255, 20, 0.9);
    }

    .cart-wrap {
      position: relative;
    }
    .cart-count {
      position: absolute;
      top: -2px;
      right: -2px;
      background: linear-gradient(135deg, var(--alien), var(--accent), var(--accent-4));
      color: #fff;
      font-size: 11px;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      border: 2px solid #020004;
      box-shadow: 0 0 20px rgba(57, 255, 20, 0.8), 0 0 40px rgba(255, 0, 229, 0.4);
      animation: cartPulse 2s ease-in-out infinite;
    }
    @keyframes cartPulse {
      0%, 100% { box-shadow: 0 0 20px rgba(57, 255, 20, 0.8), 0 0 40px rgba(255, 0, 229, 0.4); }
      50% { box-shadow: 0 0 30px rgba(57, 255, 20, 1), 0 0 60px rgba(255, 0, 229, 0.6); }
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: rgba(57, 255, 20, 0.05);
      border-radius: 999px;
      padding: 0 16px 0 18px;
      transition: var(--transition);
      border: 2px solid rgba(57, 255, 20, 0.15);
      min-width: 220px;
    }
    .search-wrap:focus-within {
      border-color: var(--alien-2);
      background: rgba(0, 255, 200, 0.05);
      box-shadow: 0 0 35px rgba(0, 255, 200, 0.25), inset 0 0 20px rgba(0, 255, 200, 0.05);
    }
    .search-wrap input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
      padding: 10px 0;
      font-size: 14px;
      color: #fff;
    }
    .search-wrap input::placeholder {
      color: var(--muted-light);
    }
    .search-wrap button {
      padding: 8px 0 8px 10px;
      color: var(--muted);
      font-size: 15px;
      transition: var(--transition);
    }
    .search-wrap button:hover {
      color: var(--alien);
      text-shadow: 0 0 20px var(--alien), 0 0 40px var(--alien);
    }

    .mobile-toggle {
      display: none;
      width: 42px;
      height: 42px;
      border-radius: 50%;
      font-size: 20px;
      background: rgba(57, 255, 20, 0.08);
      color: #fff;
      transition: var(--transition);
      border: 1px solid rgba(57, 255, 20, 0.2);
    }
    .mobile-toggle:hover {
      background: rgba(57, 255, 20, 0.20);
      color: var(--alien);
      box-shadow: 0 0 25px rgba(57, 255, 20, 0.4);
    }

    #mobileMenu {
      display: none;
      background: rgba(4, 2, 8, 0.98);
      border-top: 1px solid rgba(57, 255, 20, 0.2);
      padding: 12px 0 20px;
      backdrop-filter: blur(20px);
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 4px;
    }
    #mobileMenu ul li a {
      display: flex;
      align-items: center;
      gap: 12px;
      padding: 12px 16px;
      border-radius: var(--radius-sm);
      font-weight: 500;
      color: #fff;
      transition: var(--transition);
    }
    #mobileMenu ul li a:hover {
      background: rgba(57, 255, 20, 0.12);
      color: var(--alien);
      text-shadow: 0 0 15px rgba(57, 255, 20, 0.8);
    }
    #mobileMenu ul li a i {
      width: 22px;
      color: var(--alien);
      filter: drop-shadow(0 0 6px rgba(57, 255, 20, 0.7));
    }

    /* ============================================================
       HERO — alien abduction
       ============================================================ */
    .hero {
      position: relative;
      display: flex;
      align-items: center;
      min-height: 540px;
      padding: 60px 0;
      border-radius: var(--radius);
      overflow: hidden;
      margin: 20px 24px 0;
      background:
        linear-gradient(135deg, rgba(8, 0, 15, 0.95) 0%, rgba(20, 5, 30, 0.92) 40%, rgba(4, 0, 8, 0.95) 100%);
      border: 1px solid rgba(57, 255, 20, 0.30);
      box-shadow:
        0 0 60px rgba(57, 255, 20, 0.15),
        0 0 120px rgba(177, 0, 255, 0.10),
        inset 0 0 80px rgba(255, 0, 229, 0.04);
    }
    .hero::before {
      content: '';
      position: absolute;
      inset: 0;
      background:
        radial-gradient(circle at 20% 30%, rgba(57, 255, 20, 0.30) 0%, transparent 45%),
        radial-gradient(circle at 80% 70%, rgba(0, 240, 255, 0.25) 0%, transparent 45%),
        radial-gradient(circle at 50% 50%, rgba(245, 255, 0, 0.12) 0%, transparent 55%),
        radial-gradient(circle at 70% 20%, rgba(177, 0, 255, 0.22) 0%, transparent 45%),
        radial-gradient(circle at 30% 80%, rgba(255, 0, 229, 0.18) 0%, transparent 45%);
      z-index: 0;
      animation: heroPulse 6s ease-in-out infinite alternate;
    }
    @keyframes heroPulse {
      0% { opacity: 0.7; transform: scale(1) rotate(0deg); }
      100% { opacity: 1; transform: scale(1.15) rotate(3deg); }
    }
    .hero::after {
      content: '';
      position: absolute;
      inset: 0;
      background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="400" height="400" viewBox="0 0 400 400"><filter id="f"><feTurbulence type="fractalNoise" baseFrequency="0.04" numOctaves="6" stitchTiles="stitch"/><feColorMatrix type="saturate" values="0"/></filter><rect width="400" height="400" filter="url(%23f)" opacity="0.06"/></svg>');
      background-size: 300px 300px;
      mix-blend-mode: overlay;
      pointer-events: none;
      opacity: 0.6;
      animation: heroNoise 0.8s steps(3) infinite;
    }
    @keyframes heroNoise {
      0% { background-position: 0 0; }
      33% { background-position: 100px 50px; }
      66% { background-position: 50px 150px; }
      100% { background-position: 0 0; }
    }
    .hero .container {
      position: relative;
      z-index: 1;
    }
    .hero .badge {
      display: inline-block;
      background: rgba(57, 255, 20, 0.18);
      color: var(--alien);
      padding: 4px 16px;
      border-radius: 999px;
      font-weight: 600;
      font-size: 13px;
      letter-spacing: 0.5px;
      margin-bottom: 16px;
      border: 1px solid rgba(57, 255, 20, 0.5);
      text-shadow: 0 0 20px rgba(57, 255, 20, 0.9), 0 0 40px rgba(57, 255, 20, 0.5);
      box-shadow: 0 0 30px rgba(57, 255, 20, 0.2), inset 0 0 20px rgba(57, 255, 20, 0.05);
      animation: badgeGlow 2s ease-in-out infinite alternate;
    }
    @keyframes badgeGlow {
      0% { box-shadow: 0 0 30px rgba(57, 255, 20, 0.2), inset 0 0 20px rgba(57, 255, 20, 0.05); }
      100% { box-shadow: 0 0 50px rgba(57, 255, 20, 0.45), inset 0 0 30px rgba(57, 255, 20, 0.10); }
    }
    .hero h1 {
      font-family: 'Playfair Display', serif;
      font-size: 56px;
      font-weight: 700;
      color: #fff;
      line-height: 1.12;
      max-width: 660px;
      margin-bottom: 16px;
      text-shadow:
        0 0 40px rgba(57, 255, 20, 0.4),
        0 0 80px rgba(177, 0, 255, 0.2),
        0 0 120px rgba(0, 240, 255, 0.1);
    }
    .hero h1 br {
      display: none;
    }
    .hero p {
      color: rgba(200, 230, 200, 0.75);
      font-size: 17px;
      max-width: 520px;
      margin-bottom: 28px;
      line-height: 1.6;
    }
    .hero .actions {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
    }

    /* ============================================================
       SECTION
       ============================================================ */
    .section {
      padding: 56px 0;
    }
    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      gap: 16px;
      margin-bottom: 32px;
      flex-wrap: wrap;
    }
    .section-header .title-group h2 {
      font-size: 28px;
      font-weight: 700;
      letter-spacing: -0.3px;
      color: #fff;
      text-shadow: 0 0 30px rgba(57, 255, 20, 0.25);
    }
    .section-header .title-group p {
      color: var(--muted);
      margin-top: 4px;
      font-size: 15px;
    }
    .section-header .view-all {
      font-weight: 600;
      color: var(--alien-2);
      display: flex;
      align-items: center;
      gap: 6px;
      font-size: 14px;
      transition: var(--transition);
      white-space: nowrap;
      text-shadow: 0 0 15px rgba(0, 255, 200, 0.4);
    }
    .section-header .view-all:hover {
      gap: 12px;
      color: var(--alien);
      text-shadow: 0 0 25px rgba(57, 255, 20, 0.9), 0 0 50px rgba(57, 255, 20, 0.4);
    }

    /* ============================================================
       CATEGORIES
       ============================================================ */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 16px;
    }
    .cat-card {
      background: var(--bg-card);
      border-radius: var(--radius);
      padding: 24px 16px;
      text-align: center;
      box-shadow: var(--shadow);
      transition: var(--transition);
      cursor: pointer;
      border: 1px solid rgba(57, 255, 20, 0.15);
      position: relative;
      overflow: hidden;
    }
    .cat-card::before {
      content: '';
      position: absolute;
      inset: 0;
      background: linear-gradient(135deg, rgba(57, 255, 20, 0.05), rgba(0, 240, 255, 0.03), rgba(177, 0, 255, 0.05));
      opacity: 0;
      transition: var(--transition);
    }
    .cat-card:hover::before {
      opacity: 1;
    }
    .cat-card:hover {
      transform: translateY(-6px) scale(1.02);
      box-shadow: var(--shadow-hover);
      border-color: var(--alien);
    }
    .cat-card .icon-wrap {
      width: 56px;
      height: 56px;
      border-radius: 50%;
      background: linear-gradient(135deg, rgba(57, 255, 20, 0.20), rgba(0, 240, 255, 0.12), rgba(177, 0, 255, 0.15));
      display: grid;
      place-items: center;
      margin: 0 auto 12px;
      font-size: 24px;
      color: var(--alien);
      transition: var(--transition);
      border: 1px solid rgba(57, 255, 20, 0.25);
      box-shadow: 0 0 20px rgba(57, 255, 20, 0.15);
      position: relative;
      z-index: 1;
    }
    .cat-card:hover .icon-wrap {
      background: linear-gradient(135deg, var(--alien), var(--alien-2), var(--accent-2));
      color: #020004;
      box-shadow: 0 0 40px rgba(57, 255, 20, 0.7), 0 0 80px rgba(0, 255, 200, 0.3);
      border-color: transparent;
      transform: scale(1.1) rotate(5deg);
    }
    .cat-card h4 {
      font-size: 15px;
      font-weight: 600;
      color: #fff;
      position: relative;
      z-index: 1;
    }
    .cat-card .count {
      font-size: 13px;
      color: var(--muted);
      margin-top: 4px;
      position: relative;
      z-index: 1;
    }

    /* ============================================================
       PRODUCTS
       ============================================================ */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 20px;
    }
    .product-card {
      background: var(--bg-card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      border: 1px solid rgba(57, 255, 20, 0.12);
      position: relative;
    }
    .product-card::after {
      content: '';
      position: absolute;
      inset: 0;
      border-radius: var(--radius);
      background: linear-gradient(135deg, transparent 40%, rgba(57, 255, 20, 0.04) 70%, rgba(0, 240, 255, 0.04) 100%);
      pointer-events: none;
      opacity: 0;
      transition: var(--transition);
    }
    .product-card:hover::after {
      opacity: 1;
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      border-color: var(--alien-2);
    }
    .product-card .img-wrap {
      position: relative;
      overflow: hidden;
      background: var(--surface);
      aspect-ratio: 1 / 1;
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: var(--transition);
      filter: brightness(0.85) contrast(1.15) saturate(0.9);
    }
    .product-card:hover .img-wrap img {
      transform: scale(1.08);
      filter: brightness(1) contrast(1.2) saturate(1.1);
    }
    .product-card .badge {
      position: absolute;
      top: 12px;
      left: 12px;
      background: linear-gradient(135deg, var(--alien), var(--alien-2), var(--accent-2));
      color: #020004;
      padding: 4px 12px;
      border-radius: 999px;
      font-size: 11px;
      font-weight: 700;
      letter-spacing: 0.5px;
      box-shadow: 0 0 25px rgba(57, 255, 20, 0.7), 0 0 50px rgba(0, 255, 200, 0.3);
    }
    .product-card .badge.sale {
      background: linear-gradient(135deg, var(--accent-3), var(--accent-5));
      color: #020004;
      box-shadow: 0 0 25px rgba(245, 255, 0, 0.6), 0 0 50px rgba(255, 77, 0, 0.3);
    }
    .product-card .wish-btn {
      position: absolute;
      top: 12px;
      right: 12px;
      width: 36px;
      height: 36px;
      border-radius: 50%;
      background: rgba(0, 0, 0, 0.65);
      display: grid;
      place-items: center;
      font-size: 16px;
      color: #fff;
      transition: var(--transition);
      backdrop-filter: blur(10px);
      border: 1px solid rgba(57, 255, 20, 0.25);
    }
    .product-card .wish-btn:hover {
      background: var(--alien);
      color: #020004;
      transform: scale(1.2);
      box-shadow: 0 0 30px rgba(57, 255, 20, 0.9);
      border-color: var(--alien);
    }
    .product-card .body {
      padding: 16px 18px 14px;
      flex: 1;
      display: flex;
      flex-direction: column;
      gap: 6px;
      position: relative;
      z-index: 1;
    }
    .product-card .body .category-tag {
      font-size: 12px;
      color: var(--alien-2);
      text-transform: uppercase;
      letter-spacing: 0.5px;
      font-weight: 600;
      opacity: 0.9;
      text-shadow: 0 0 15px rgba(0, 255, 200, 0.5);
    }
    .product-card .body h5 {
      font-size: 15px;
      font-weight: 600;
      line-height: 1.3;
      color: #fff;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
      text-shadow: 0 0 20px rgba(255, 255, 255, 0.1);
    }
    .product-card .body .price-row {
      display: flex;
      align-items: center;
      gap: 10px;
      margin-top: 4px;
    }
    .product-card .body .price {
      font-weight: 700;
      font-size: 18px;
      background: linear-gradient(90deg, var(--alien), var(--accent-3), var(--alien-2));
      background-size: 200% 100%;
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
      animation: priceShimmer 3s ease infinite;
    }
    @keyframes priceShimmer {
      0%, 100% { background-position: 0% 50%; }
      50% { background-position: 100% 50%; }
    }
    .product-card .body .old-price {
      color: var(--muted-light);
      text-decoration: line-through;
      font-size: 14px;
    }
    .product-card .body .rating {
      display: flex;
      align-items: center;
      gap: 4px;
      font-size: 13px;
      color: var(--accent-3);
      text-shadow: 0 0 12px rgba(245, 255, 0, 0.5);
    }
    .product-card .body .rating span {
      color: var(--muted);
      font-weight: 400;
      text-shadow: none;
    }
    .product-card .footer {
      padding: 0 18px 18px;
      display: flex;
      gap: 10px;
      position: relative;
      z-index: 1;
    }
    .product-card .footer .add-btn {
      flex: 1;
      padding: 10px;
      border-radius: var(--radius-sm);
      background: rgba(57, 255, 20, 0.08);
      color: #fff;
      font-weight: 600;
      font-size: 14px;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      border: 1px solid rgba(57, 255, 20, 0.20);
    }
    .product-card .footer .add-btn:hover {
      background: var(--alien);
      color: #020004;
      border-color: var(--alien);
      box-shadow: 0 0 35px rgba(57, 255, 20, 0.8), inset 0 0 20px rgba(255, 255, 255, 0.15);
      transform: scale(1.04);
    }
    .product-card .footer .add-btn.added {
      background: var(--alien-2);
      color: #020004;
      border-color: var(--alien-2);
      box-shadow: 0 0 35px rgba(0, 255, 200, 0.8);
    }

    /* ============================================================
       DEAL
       ============================================================ */
    .deal-wrap {
      display: flex;
      gap: 0;
      background: var(--bg-card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow:
        0 0 40px rgba(57, 255, 20, 0.12),
        0 0 80px rgba(177, 0, 255, 0.08),
        var(--shadow);
      border: 1px solid rgba(57, 255, 20, 0.25);
    }
    .deal-wrap .deal-img {
      flex: 0 0 48%;
      background: var(--surface);
      min-height: 320px;
      position: relative;
      overflow: hidden;
    }
    .deal-wrap .deal-img::after {
      content: '';
      position: absolute;
      inset: 0;
      background: linear-gradient(135deg, rgba(57, 255, 20, 0.20), rgba(0, 240, 255, 0.12), rgba(177, 0, 255, 0.15));
      pointer-events: none;
      mix-blend-mode: overlay;
    }
    .deal-wrap .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      filter: brightness(0.80) contrast(1.15) saturate(0.85);
    }
    .deal-wrap .deal-content {
      flex: 1;
      padding: 40px 44px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      background: linear-gradient(135deg, rgba(10, 4, 18, 0.95), rgba(20, 10, 31, 0.90));
    }
    .deal-wrap .deal-content .tag {
      display: inline-block;
      background: linear-gradient(135deg, var(--alien), var(--alien-2));
      color: #020004;
      padding: 4px 14px;
      border-radius: 999px;
      font-size: 12px;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.5px;
      align-self: flex-start;
      margin-bottom: 12px;
      box-shadow: 0 0 30px rgba(57, 255, 20, 0.5), 0 0 60px rgba(0, 255, 200, 0.25);
    }
    .deal-wrap .deal-content h3 {
      font-size: 28px;
      font-weight: 700;
      margin-bottom: 6px;
      color: #fff;
      text-shadow: 0 0 30px rgba(57, 255, 20, 0.3);
    }
    .deal-wrap .deal-content .desc {
      color: var(--muted);
      margin-bottom: 18px;
    }
    .deal-wrap .deal-content .price-big {
      font-size: 32px;
      font-weight: 800;
      background: linear-gradient(90deg, var(--alien), var(--accent-3), var(--alien-2));
      background-size: 200% 100%;
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
      animation: priceShimmer 3s ease infinite;
    }
    .deal-wrap .deal-content .price-big .old {
      font-size: 20px;
      font-weight: 400;
      color: var(--muted-light);
      text-decoration: line-through;
      margin-left: 10px;
      -webkit-text-fill-color: var(--muted-light);
    }
    .deal-wrap .deal-content .stock {
      font-size: 14px;
      color: var(--muted);
      margin: 4px 0 16px;
    }
    .deal-wrap .deal-content .stock strong {
      color: var(--alien);
      text-shadow: 0 0 20px rgba(57, 255, 20, 0.9), 0 0 40px rgba(57, 255, 20, 0.4);
    }

    .timer-grid {
      display: flex;
      gap: 12px;
      margin: 16px 0 20px;
    }
    .timer-box {
      background: rgba(57, 255, 20, 0.06);
      color: #fff;
      padding: 10px 16px;
      border-radius: var(--radius-sm);
      min-width: 68px;
      text-align: center;
      border: 1px solid rgba(57, 255, 20, 0.20);
      transition: var(--transition);
      box-shadow: inset 0 0 20px rgba(57, 255, 20, 0.05);
    }
    .timer-box:hover {
      border-color: var(--alien-2);
      box-shadow: 0 0 25px rgba(0, 255, 200, 0.25), inset 0 0 20px rgba(0, 255, 200, 0.08);
    }
    .timer-box .num {
      font-size: 26px;
      font-weight: 700;
      line-height: 1.2;
      background: linear-gradient(90deg, var(--alien), var(--alien-2));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
      filter: drop-shadow(0 0 10px rgba(57, 255, 20, 0.6));
    }
    .timer-box .label {
      font-size: 11px;
      opacity: 0.65;
      text-transform: uppercase;
      letter-spacing: 0.5px;
      color: var(--muted);
    }

    /* ============================================================
       TESTIMONIALS
       ============================================================ */
    .testimonials-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 16px;
      scroll-snap-type: x mandatory;
      -webkit-overflow-scrolling: touch;
    }
    .testimonials-scroll::-webkit-scrollbar {
      height: 4px;
    }
    .testimonials-scroll::-webkit-scrollbar-thumb {
      background: linear-gradient(90deg, var(--alien), var(--accent-2), var(--accent-4));
      border-radius: 999px;
    }
    .testimonial-card {
      flex: 0 0 340px;
      background: var(--bg-card);
      border-radius: var(--radius);
      padding: 24px 26px;
      box-shadow: var(--shadow);
      scroll-snap-align: start;
      transition: var(--transition);
      border: 1px solid rgba(57, 255, 20, 0.12);
    }
    .testimonial-card:hover {
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-4);
    }
    .testimonial-card .stars {
      color: var(--accent-3);
      font-size: 16px;
      letter-spacing: 2px;
      margin-bottom: 10px;
      text-shadow: 0 0 15px rgba(245, 255, 0, 0.7), 0 0 30px rgba(245, 255, 0, 0.3);
    }
    .testimonial-card blockquote {
      font-size: 15px;
      line-height: 1.6;
      color: var(--primary);
      margin-bottom: 14px;
      font-style: italic;
    }
    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .testimonial-card .author .avatar {
      width: 44px;
      height: 44px;
      border-radius: 50%;
      object-fit: cover;
      background: var(--surface);
      border: 2px solid rgba(57, 255, 20, 0.4);
      box-shadow: 0 0 20px rgba(57, 255, 20, 0.25);
    }
    .testimonial-card .author .name {
      font-weight: 600;
      font-size: 14px;
      color: #fff;
    }
    .testimonial-card .author .role {
      font-size: 13px;
      color: var(--muted);
    }

    /* ============================================================
       NEWSLETTER
       ============================================================ */
    .newsletter-wrap {
      background: linear-gradient(135deg, rgba(10, 4, 18, 0.95) 0%, rgba(20, 8, 35, 0.92) 100%);
      border-radius: var(--radius);
      padding: 48px 56px;
      color: #fff;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 32px;
      flex-wrap: wrap;
      border: 1px solid rgba(57, 255, 20, 0.25);
      position: relative;
      overflow: hidden;
      box-shadow: 0 0 50px rgba(57, 255, 20, 0.10), inset 0 0 60px rgba(255, 0, 229, 0.03);
    }
    .newsletter-wrap::before {
      content: '';
      position: absolute;
      top: -50%;
      right: -20%;
      width: 500px;
      height: 500px;
      background: radial-gradient(circle, rgba(57, 255, 20, 0.10) 0%, transparent 65%);
      border-radius: 50%;
      pointer-events: none;
      animation: newsletterGlow 6s ease-in-out infinite alternate;
    }
    @keyframes newsletterGlow {
      0% { transform: scale(1) translate(0, 0); opacity: 0.6; }
      100% { transform: scale(1.3) translate(-20px, 20px); opacity: 1; }
    }
    .newsletter-wrap .text h3 {
      font-size: 26px;
      font-weight: 700;
      margin-bottom: 4px;
      color: #fff;
      text-shadow: 0 0 30px rgba(57, 255, 20, 0.3);
    }
    .newsletter-wrap .text p {
      opacity: 0.70;
      font-size: 15px;
    }
    .newsletter-wrap form {
      display: flex;
      gap: 10px;
      flex-wrap: wrap;
      flex: 1;
      max-width: 480px;
    }
    .newsletter-wrap form input {
      flex: 1;
      min-width: 200px;
      padding: 14px 20px;
      border-radius: 999px;
      border: 1px solid rgba(57, 255, 20, 0.25);
      font-size: 15px;
      background: rgba(57, 255, 20, 0.05);
      color: #fff;
      transition: var(--transition);
      outline: 2px solid transparent;
    }
    .newsletter-wrap form input::placeholder {
      color: var(--muted-light);
    }
    .newsletter-wrap form input:focus {
      outline-color: var(--alien-2);
      background: rgba(0, 255, 200, 0.05);
      box-shadow: 0 0 35px rgba(0, 255, 200, 0.20);
    }
    .newsletter-wrap form .btn {
      background: var(--alien);
      color: #020004;
      border-color: var(--alien);
      padding: 14px 32px;
      box-shadow: 0 0 25px rgba(57, 255, 20, 0.5);
    }
    .newsletter-wrap form .btn:hover {
      background: var(--alien-2);
      border-color: var(--alien-2);
      box-shadow: 0 0 40px rgba(0, 255, 200, 0.7);
    }
    #newsletterMsg {
      margin-top: 12px;
      font-size: 14px;
      opacity: 0.9;
      width: 100%;
    }

    /* ============================================================
       FOOTER
       ============================================================ */
    footer {
      margin-top: 16px;
      padding: 44px 0 28px;
      border-top: 1px solid rgba(57, 255, 20, 0.15);
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 40px;
      margin-bottom: 32px;
    }
    .footer-grid .brand-col .brand {
      font-size: 20px;
      margin-bottom: 8px;
    }
    .footer-grid .brand-col p {
      color: var(--muted);
      font-size: 14px;
      max-width: 300px;
      line-height: 1.6;
    }
    .footer-grid .brand-col .socials {
      display: flex;
      gap: 10px;
      margin-top: 14px;
    }
    .footer-grid .brand-col .socials a {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      background: rgba(57, 255, 20, 0.06);
      display: grid;
      place-items: center;
      color: var(--muted);
      transition: var(--transition);
      font-size: 16px;
      border: 1px solid rgba(57, 255, 20, 0.12);
    }
    .footer-grid .brand-col .socials a:hover {
      background: linear-gradient(135deg, var(--alien), var(--alien-2), var(--accent-2));
      color: #020004;
      border-color: transparent;
      box-shadow: 0 0 35px rgba(57, 255, 20, 0.6), 0 0 60px rgba(0, 255, 200, 0.3);
      transform: translateY(-3px) scale(1.05);
    }
    .footer-grid .col h5 {
      font-weight: 700;
      font-size: 14px;
      margin-bottom: 12px;
      color: #fff;
      text-shadow: 0 0 20px rgba(57, 255, 20, 0.2);
    }
    .footer-grid .col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    .footer-grid .col ul li a {
      color: var(--muted);
      font-size: 14px;
      transition: var(--transition);
    }
    .footer-grid .col ul li a:hover {
      color: var(--alien);
      text-shadow: 0 0 20px rgba(57, 255, 20, 0.7), 0 0 40px rgba(57, 255, 20, 0.3);
    }
    .footer-bottom {
      text-align: center;
      padding-top: 20px;
      border-top: 1px solid rgba(57, 255, 20, 0.10);
      color: var(--muted-light);
      font-size: 13px;
    }

    /* ============================================================
       RESPONSIVE
       ============================================================ */
    @media (max-width: 1200px) {
      .products-grid { grid-template-columns: repeat(3, 1fr); }
      .categories-grid { grid-template-columns: repeat(3, 1fr); }
      .footer-grid { grid-template-columns: 1fr 1fr; gap: 28px; }
      .uv-orb { filter: blur(100px); }
      .saucer { transform: scale(0.8); }
    }

    @media (max-width: 992px) {
      .hero h1 { font-size: 40px; }
      .hero { min-height: 420px; margin: 16px 16px 0; padding: 40px 0; }
      .deal-wrap { flex-direction: column; }
      .deal-wrap .deal-img { flex: 0 0 240px; }
      .deal-wrap .deal-content { padding: 28px 30px; }
      .newsletter-wrap { padding: 32px 28px; flex-direction: column; text-align: center; }
      .newsletter-wrap form { max-width: 100%; }
      .search-wrap { min-width: 150px; }
      .saucer { transform: scale(0.6); }
      .alien { transform: scale(0.7); }
    }

    @media (max-width: 768px) {
      nav.main-nav { display: none; }
      .mobile-toggle { display: grid; place-items: center; }
      .products-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
      .categories-grid { grid-template-columns: repeat(2, 1fr); gap: 12px; }
      .hero h1 { font-size: 32px; }
      .hero p { font-size: 15px; }
      .section-header h2 { font-size: 22px; }
      .deal-wrap .deal-content h3 { font-size: 22px; }
      .deal-wrap .deal-content .price-big { font-size: 26px; }
      .timer-box { min-width: 56px; padding: 8px 12px; }
      .timer-box .num { font-size: 20px; }
      .footer-grid { grid-template-columns: 1fr; gap: 20px; }
      .header-inner { flex-wrap: nowrap; }
      .brand { font-size: 18px; }
      .brand i { font-size: 20px; }
      .search-wrap { min-width: 120px; padding: 0 10px 0 14px; }
      .search-wrap input { font-size: 13px; padding: 8px 0; }
      .header-actions .icon-btn { width: 36px; height: 36px; font-size: 15px; }
      .cart-count { width: 18px; height: 18px; font-size: 10px; }
      .testimonial-card { flex: 0 0 280px; }
      .hero .actions .btn { padding: 10px 20px; font-size: 14px; }
      .section { padding: 36px 0; }
      .uv-orb-1, .uv-orb-2, .uv-orb-3, .uv-orb-4, .uv-orb-5 { filter: blur(80px); }
      .saucer { transform: scale(0.5); }
      .alien { transform: scale(0.5); }
      .ufo-2 { display: none; }
    }

    @media (max-width: 480px) {
      .products-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
      .categories-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
      .hero { margin: 10px 10px 0; min-height: 340px; padding: 28px 0; border-radius: var(--radius-sm); }
      .hero h1 { font-size: 26px; }
      .container { padding: 0 14px; }
      .deal-wrap .deal-content { padding: 20px 18px; }
      .deal-wrap .deal-img { flex: 0 0 180px; }
      .newsletter-wrap { padding: 24px 18px; }
      .newsletter-wrap .text h3 { font-size: 20px; }
      .product-card .body { padding: 12px 12px 8px; }
      .product-card .body h5 { font-size: 13px; }
      .product-card .body .price { font-size: 15px; }
      .product-card .footer { padding: 0 12px 12px; }
      .product-card .footer .add-btn { font-size: 12px; padding: 8px; }
      .timer-box { min-width: 46px; padding: 6px 8px; }
      .timer-box .num { font-size: 16px; }
      .timer-box .label { font-size: 9px; }
      .cat-card { padding: 16px 10px; }
      .cat-card .icon-wrap { width: 44px; height: 44px; font-size: 18px; }
      .cat-card h4 { font-size: 13px; }
      .saucer { transform: scale(0.35); }
      .alien { transform: scale(0.4); }
      .ufo-3 { display: none; }
    }

    /* ============================================================
       SCROLLBAR
       ============================================================ */
    ::-webkit-scrollbar {
      width: 8px;
      height: 8px;
    }
    ::-webkit-scrollbar-track {
      background: #020004;
    }
    ::-webkit-scrollbar-thumb {
      background: linear-gradient(180deg, var(--alien), var(--accent-2), var(--accent-4));
      border-radius: 999px;
      box-shadow: 0 0 15px rgba(57, 255, 20, 0.5);
    }
    ::-webkit-scrollbar-thumb:hover {
      background: linear-gradient(180deg, var(--alien-2), var(--accent-3), var(--alien));
    }

    /* ============================================================
       SELECTION
       ============================================================ */
    ::selection {
      background: var(--alien);
      color: #020004;
      text-shadow: none;
    }

    /* Body breathing glow */
    @keyframes bodyGlow {
      0%, 100% { filter: brightness(1); }
      50% { filter: brightness(1.06); }
    }
    body {
      animation: bodyGlow 7s ease-in-out infinite;
    }
  </style>
</head>

<body>

  <!-- ===== ALIEN COSMIC BACKGROUND ===== -->
  <div class="alien-bg" aria-hidden="true"></div>

  <!-- UV glow orbs -->
  <div class="uv-orb uv-orb-1" aria-hidden="true"></div>
  <div class="uv-orb uv-orb-2" aria-hidden="true"></div>
  <div class="uv-orb uv-orb-3" aria-hidden="true"></div>
  <div class="uv-orb uv-orb-4" aria-hidden="true"></div>
  <div class="uv-orb uv-orb-5" aria-hidden="true"></div>

  <!-- ===== UFO & ALIEN VISUAL LAYER ===== -->
  <div class="ufo-layer" aria-hidden="true">

    <!-- Cosmic rings -->
    <div class="cosmic-ring ring-1"></div>
    <div class="cosmic-ring ring-2"></div>

    <!-- UFO 1 — large saucer -->
    <div class="ufo ufo-1">
      <div class="saucer">
        <div class="dome"></div>
        <div class="body"></div>
      </div>
      <div class="beam"></div>
    </div>

    <!-- UFO 2 — medium saucer -->
    <div class="ufo ufo-2">
      <div class="saucer">
        <div class="dome"></div>
        <div class="body"></div>
      </div>
    </div>

    <!-- UFO 3 — small saucer -->
    <div class="ufo ufo-3">
      <div class="saucer">
        <div class="dome"></div>
        <div class="body"></div>
      </div>
    </div>

    <!-- Alien entities -->
    <div class="alien alien-1">
      <div class="head"></div>
      <div class="body"></div>
    </div>
    <div class="alien alien-2">
      <div class="head"></div>
      <div class="body"></div>
    </div>
    <div class="alien alien-3">
      <div class="head"></div>
      <div class="body"></div>
    </div>

  </div>

  <!-- ===== HEADER ===== -->
  <header>
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:12px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu">
          <em class="fas fa-bars"></em>
        </button>
        <a class="brand" href="#">
          <em class="fas fa-store-alt"></em>
          <span>Nexus<span class="accent">Shop</span></span>
        </a>
      </div>

      <nav class="main-nav" id="mainNav" aria-label="Main navigation">
        <ul>
          <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
          <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
        </ul>
      </nav>

      <div style="display:flex;align-items:center;gap:10px;">
        <div class="search-wrap" role="search">
          <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search" />
          <button id="searchBtn" aria-label="Submit search"><i class="fas fa-search"></i></button>
        </div>

        <div class="header-actions">
          <button class="icon-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
          <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
          <div class="cart-wrap">
            <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Cart">
              <i class="fas fa-shopping-bag"></i>
            </button>
            <span class="cart-count" id="cartCount">0</span>
          </div>
        </div>
      </div>
    </div>

    <!-- Mobile Menu -->
    <div id="mobileMenu">
      <div class="container">
        <ul>
          <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
          <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
          <li><a href="#"><i class="far fa-user"></i> Account</a></li>
          <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
        </ul>
      </div>
    </div>
  </header>

  <!-- ===== MAIN ===== -->
  <main>

    <!-- HERO -->
    <section class="hero" aria-label="Hero banner">
      <div class="container">
        <div class="badge"><i class="fas fa-sparkles"></i> ALIEN COLLECTION 2026</div>
        <h1>Discover Premium <br>Essentials</h1>
        <p>Curated fashion, tech & accessories with free shipping on your first order. Limited-time deals await.</p>
        <div class="actions">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
          <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Explore Deals</button>
        </div>
      </div>
    </section>

    <!-- CATEGORIES -->
    <section class="section" id="categories" aria-labelledby="cat-title">
      <div class="container">
        <div class="section-header">
          <div class="title-group">
            <h2 id="cat-title">Browse Categories</h2>
            <p>Find exactly what you're looking for</p>
          </div>
          <a href="#" class="view-all">All Categories <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="categories-grid" id="categoriesGrid" aria-live="polite"></div>
      </div>
    </section>

    <!-- PRODUCTS -->
    <section class="section" id="products" aria-labelledby="prod-title">
      <div class="container">
        <div class="section-header">
          <div class="title-group">
            <h2 id="prod-title">Trending Now</h2>
            <p>What's hot — popular picks from our community</p>
          </div>
          <a href="#" class="view-all">View All <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="products-grid" id="productsGrid" aria-live="polite"></div>
      </div>
    </section>

    <!-- DEAL -->
    <section class="section" id="deals" aria-labelledby="deals-title">
      <div class="container">
        <div class="section-header">
          <div class="title-group">
            <h2 id="deals-title">⚡ Flash Deal</h2>
            <p>Grab it before it's gone — limited stock</p>
          </div>
        </div>
        <div class="deal-wrap">
          <div class="deal-img">
            <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
          </div>
          <div class="deal-content">
            <span class="tag"><i class="fas fa-bolt"></i> Limited Offer</span>
            <h3>MacBook Air M2</h3>
            <p class="desc">Thin, light, and incredibly powerful — the M2 chip redefines performance.</p>
            <div>
              <span class="price-big">$999 <span class="old">$1,199</span></span>
            </div>
            <p class="stock">Only <strong>12</strong> items left — hurry!</p>
            <div class="timer-grid" id="dealTimer">
              <div class="timer-box">
                <div class="num" id="dealDays">0</div>
                <div class="label">Days</div>
              </div>
              <div class="timer-box">
                <div class="num" id="dealHours">00</div>
                <div class="label">Hours</div>
              </div>
              <div class="timer-box">
                <div class="num" id="dealMinutes">00</div>
                <div class="label">Mins</div>
              </div>
              <div class="timer-box">
                <div class="num" id="dealSeconds">00</div>
                <div class="label">Secs</div>
              </div>
            </div>
            <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to Cart</button>
          </div>
        </div>
      </div>
    </section>

    <!-- TESTIMONIALS -->
    <section class="section" id="testimonials" aria-labelledby="test-title">
      <div class="container">
        <div class="section-header">
          <div class="title-group">
            <h2 id="test-title">What Our Customers Say</h2>
            <p>Real reviews from real people</p>
          </div>
        </div>
        <div class="testimonials-scroll" id="testimonialsList"></div>
      </div>
    </section>

    <!-- NEWSLETTER -->
    <section class="section" aria-labelledby="news-title">
      <div class="container">
        <div class="newsletter-wrap">
          <div class="text">
            <h3 id="news-title">Stay in the Loop</h3>
            <p>Get exclusive offers, early access & new arrivals</p>
          </div>
          <form id="newsletterForm" onsubmit="return false;">
            <input type="email" id="newsletterEmail" placeholder="Enter your email" aria-label="Email" required />
            <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
            <div id="newsletterMsg"></div>
          </form>
        </div>
      </div>
    </section>

  </main>

  <!-- ===== FOOTER ===== -->
  <footer>
    <div class="container">
      <div class="footer-grid">
        <div class="brand-col">
          <div class="brand">
            <i class="fas fa-store-alt"></i>
            <span>Nexus<span class="accent">Shop</span></span>
          </div>
          <p>Modern e‑commerce demo built with care. Quality products, seamless experience.</p>
          <div class="socials">
            <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
            <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
            <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
            <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
          </div>
        </div>
        <div class="col">
          <h5>Company</h5>
          <ul>
            <li><a href="#">About</a></li>
            <li><a href="#">Careers</a></li>
            <li><a href="#">Press</a></li>
            <li><a href="#">Blog</a></li>
          </ul>
        </div>
        <div class="col">
          <h5>Support</h5>
          <ul>
            <li><a href="#">Help Center</a></li>
            <li><a href="#">Shipping</a></li>
            <li><a href="#">Returns</a></li>
            <li><a href="#">Contact</a></li>
          </ul>
        </div>
        <div class="col">
          <h5>Legal</h5>
          <ul>
            <li><a href="#">Privacy</a></li>
            <li><a href="#">Terms</a></li>
            <li><a href="#">Cookies</a></li>
          </ul>
        </div>
      </div>
      <div class="footer-bottom">
        &copy; <span id="year"></span> NexusShop. All rights reserved.
      </div>
    </div>
  </footer>

  <!-- ===== SCRIPT ===== -->
  <script>
    // ============================================================
    // DATA
    // ============================================================
    const CATEGORIES = [
      { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 42 },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 39 }
    ];

    const PRODUCTS = [
      { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New',
        img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
        category: 'Smartphones' },
      { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '',
        img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
        category: 'Laptops' },
      { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale',
        img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
        category: 'Accessories' },
      { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '',
        img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
        category: 'Footwear' },
      { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, badge: 'New',
        img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
        category: 'Gadgets' },
      { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, badge: '',
        img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
        category: 'Accessories' },
      { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'Sale',
        img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
        category: 'Accessories' },
      { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '',
        img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
        category: 'Gadgets' }
    ];

    const TESTIMONIALS = [{
      name: 'Ava Martin',
      role: 'Verified Buyer',
      avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
      text: 'Fast shipping and excellent support. The product exceeded my expectations!',
      stars: 5
    }, {
      name: 'Michael Lee',
      role: 'Frequent Shopper',
      avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80',
      text: 'Great selection and smooth checkout. Will definitely shop again.',
      stars: 4
    }, {
      name: 'Sophia Chen',
      role: 'Designer',
      avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80',
      text: 'Love the quality and the packaging. Everything arrived in perfect condition.',
      stars: 5
    }, {
      name: 'James Wilson',
      role: 'Tech Enthusiast',
      avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
      text: 'Amazing prices on electronics. The M2 MacBook deal was unbeatable.',
      stars: 5
    }];

    // ============================================================
    // STATE
    // ============================================================
    let cartCount = 0;

    // ============================================================
    // DOM REFS
    // ============================================================
    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');
    const cartCountEl = document.getElementById('cartCount');
    const searchInput = document.getElementById('searchInput');
    const searchBtn = document.getElementById('searchBtn');
    const mobileToggle = document.getElementById('mobileToggle');
    const mobileMenu = document.getElementById('mobileMenu');
    const newsletterForm = document.getElementById('newsletterForm');
    const newsletterEmail = document.getElementById('newsletterEmail');
    const newsletterMsg = document.getElementById('newsletterMsg');
    const testimonialsList = document.getElementById('testimonialsList');

    // ============================================================
    // RENDER FUNCTIONS
    // ============================================================
    function renderCategories() {
      categoriesGrid.innerHTML = '';
      CATEGORIES.forEach(cat => {
        const el = document.createElement('div');
        el.className = 'cat-card';
        el.innerHTML = `
          <div class="icon-wrap"><i class="fas ${cat.icon}"></i></div>
          <h4>${cat.name}</h4>
          <div class="count">${cat.count} items</div>
        `;
        el.addEventListener('click', () => {
          searchInput.value = cat.name;
          filterProducts(cat.name);
          document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        categoriesGrid.appendChild(el);
      });
    }

    function renderProducts(list) {
      productsGrid.innerHTML = '';
      if (!list.length) {
        productsGrid.innerHTML =
          `<p style="grid-column:1/-1;text-align:center;padding:40px;color:var(--muted);">No products found.</p>`;
        return;
      }
      list.forEach(p => {
        const el = document.createElement('article');
        el.className = 'product-card';
        const badgeClass = p.badge === 'Sale' ? 'sale' : '';
        const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
        const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : '';
        const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
        el.innerHTML = `
          <div class="img-wrap">
            <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
            ${badgeHtml}
            <button class="wish-btn" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
          </div>
          <div class="body">
            <div class="category-tag">${p.category}</div>
            <h5>${escapeHtml(p.title)}</h5>
            <div class="price-row">
              <span class="price">$${p.price.toLocaleString()}</span>
              ${oldPriceHtml}
            </div>
            <div class="rating">
              ${stars} <span>(${p.reviews})</span>
            </div>
          </div>
          <div class="footer">
            <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
          </div>
        `;
        productsGrid.appendChild(el);
      });

      // Add to cart listeners
      productsGrid.querySelectorAll('.add-btn').forEach(btn => {
        btn.addEventListener('click', function(e) {
          e.stopPropagation();
          const id = Number(this.dataset.id);
          addToCart(id, this);
        });
      });
    }

    function renderTestimonials() {
      testimonialsList.innerHTML = '';
      TESTIMONIALS.forEach(t => {
        const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
        const el = document.createElement('div');
        el.className = 'testimonial-card';
        el.innerHTML = `
          <div class="stars">${stars}</div>
          <blockquote>“${escapeHtml(t.text)}”</blockquote>
          <div class="author">
            <img class="avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy">
            <div>
              <div class="name">${escapeHtml(t.name)}</div>
              <div class="role">${escapeHtml(t.role)}</div>
            </div>
          </div>
        `;
        testimonialsList.appendChild(el);
      });
    }

    // ============================================================
    // UTILITY FUNCTIONS
    // ============================================================
    function escapeHtml(text) {
      return String(text).replace(/[&<>"']/g, s => ({
        '&': '&amp;',
        '<': '&lt;',
        '>': '&gt;',
        '"': '&quot;',
        "'": '&#39;'
      } [s]));
    }

    function updateCartCount() {
      cartCountEl.textContent = cartCount;
      cartCountEl.style.transform = 'scale(1.5)';
      setTimeout(() => cartCountEl.style.transform = 'scale(1)', 250);
    }

    function addToCart(productId, btnEl) {
      const p = PRODUCTS.find(x => x.id === productId);
      if (!p) return;
      cartCount++;
      updateCartCount();

      if (btnEl) {
        const orig = btnEl.innerHTML;
        btnEl.innerHTML = '<i class="fas fa-check"></i> Added';
        btnEl.classList.add('added');
        setTimeout(() => {
          btnEl.innerHTML = orig;
          btnEl.classList.remove('added');
        }, 1500);
      }
      const cartBtn = document.getElementById('cartBtn');
      cartBtn.style.color = 'var(--alien)';
      cartBtn.style.textShadow = '0 0 25px var(--alien), 0 0 50px var(--alien)';
      setTimeout(() => {
        cartBtn.style.color = '';
        cartBtn.style.textShadow = '';
      }, 500);
    }

    function filterProducts(query) {
      const q = String(query || '').trim().toLowerCase();
      if (!q) {
        renderProducts(PRODUCTS);
        return;
      }
      const filtered = PRODUCTS.filter(p =>
        p.title.toLowerCase().includes(q) ||
        p.category.toLowerCase().includes(q)
      );
      renderProducts(filtered);
    }

    // ============================================================
    // DEAL TIMER
    // ============================================================
    (function setupDealTimer() {
      const now = new Date();
      const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);

      function tick() {
        const diff = target - new Date();
        if (diff <= 0) {
          document.getElementById('dealDays').textContent = '0';
          document.getElementById('dealHours').textContent = '00';
          document.getElementById('dealMinutes').textContent = '00';
          document.getElementById('dealSeconds').textContent = '00';
          return;
        }
        const days = Math.floor(diff / (24 * 3600 * 1000));
        const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
        const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
        const secs = Math.floor((diff % (60 * 1000)) / 1000);
        document.getElementById('dealDays').textContent = days;
        document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
        document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
        document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
      }
      tick();
      setInterval(tick, 1000);
    })();

    // ============================================================
    // EVENT BINDINGS
    // ============================================================

    // Search
    searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
    searchInput.addEventListener('keydown', (e) => {
      if (e.key === 'Enter') filterProducts(e.target.value);
    });

    // Mobile menu
    mobileToggle.addEventListener('click', () => {
      const isOpen = mobileMenu.style.display === 'block';
      mobileMenu.style.display = isOpen ? 'none' : 'block';
      mobileToggle.innerHTML = isOpen ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
    });

    // Close mobile menu on link click
    mobileMenu.querySelectorAll('a').forEach(link => {
      link.addEventListener('click', () => {
        mobileMenu.style.display = 'none';
        mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
      });
    });

    // Hero buttons
    document.getElementById('shopNow').addEventListener('click', () => {
      document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
    });
    document.getElementById('exploreDeals').addEventListener('click', () => {
      document.getElementById('deals').scrollIntoView({ behavior: 'smooth', block: 'start' });
    });

    // Deal buy
    document.getElementById('buyDeal').addEventListener('click', function() {
      cartCount++;
      updateCartCount();
      const orig = this.innerHTML;
      this.innerHTML = '<i class="fas fa-check"></i> Added!';
      this.style.background = 'var(--alien-2)';
      this.style.color = '#020004';
      this.style.boxShadow = '0 0 40px rgba(0, 255, 200, 0.8), 0 0 80px rgba(0, 255, 200, 0.4)';
      setTimeout(() => {
        this.innerHTML = orig;
        this.style.background = '';
        this.style.color = '';
        this.style.boxShadow = '';
      }, 1600);
    });

    // Newsletter
    newsletterForm.addEventListener('submit', (e) => {
      e.preventDefault();
      const email = newsletterEmail.value.trim();
      if (!email || !email.includes('@')) {
        newsletterMsg.textContent = 'Please enter a valid email address.';
        newsletterMsg.style.color = '#ff6b9d';
        newsletterMsg.style.display = 'block';
        return;
      }
      newsletterMsg.textContent = '🎉 Thanks for subscribing!';
      newsletterMsg.style.color = 'var(--alien)';
      newsletterMsg.style.display = 'block';
      newsletterEmail.value = '';
      setTimeout(() => {
        newsletterMsg.style.display = 'none';
      }, 3500);
    });

    // Cart button click feedback
    document.getElementById('cartBtn').addEventListener('click', () => {
      alert(`🛒 Your cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`);
    });

    // Year in footer
    document.getElementById('year').textContent = new Date().getFullYear();

    // ============================================================
    // INIT
    // ============================================================
    renderCategories();
    renderProducts(PRODUCTS);
    renderTestimonials();
    updateCartCount();

    // Close mobile menu on resize to desktop
    window.addEventListener('resize', () => {
      if (window.innerWidth > 768) {
        mobileMenu.style.display = 'none';
        mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
      }
    });

    console.log('👽 NexusShop — ALIEN PSY CORE UV loaded. They are among us.');
  </script>

</body>
</html>
