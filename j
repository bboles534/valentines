<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Valentine’s?</title>

    <style>
         :root {
            --bg1: #fff0f6;
            --bg2: #ffe3ec;
            --card: #ffffffcc;
            --text: #2b2b2b;
            --accent: #ff3b7a;
            --accent2: #7c3aed;
            --shadow: 0 18px 50px rgba(0, 0, 0, .12);
            --radius: 22px;
        }
        
        * {
            box-sizing: border-box;
        }
        
        body {
            margin: 0;
            min-height: 100vh;
            display: grid;
            place-items: center;
            font-family: ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Helvetica, Arial;
            color: var(--text);
            background: radial-gradient(1100px 700px at 20% 10%, var(--bg2), transparent 60%), radial-gradient(900px 600px at 80% 90%, #e9d5ff, transparent 55%), linear-gradient(140deg, var(--bg1), #ffffff);
            overflow: hidden;
        }
        /* floating hearts */
        
        .hearts {
            position: fixed;
            inset: 0;
            pointer-events: none;
            opacity: .55;
        }
        
        .heart {
            position: absolute;
            width: 18px;
            height: 18px;
            background: #ff3b7a;
            transform: rotate(45deg);
            border-radius: 4px;
            animation: floatUp linear infinite;
        }
        
        .heart::before,
        .heart::after {
            content: "";
            position: absolute;
            width: 18px;
            height: 18px;
            background: inherit;
            border-radius: 50%;
        }
        
        .heart::before {
            left: -9px;
            top: 0;
        }
        
        .heart::after {
            top: -9px;
            left: 0;
        }
        
        @keyframes floatUp {
            from {
                transform: translateY(20vh) rotate(45deg);
                opacity: 0;
            }
            10% {
                opacity: .9;
            }
            to {
                transform: translateY(-120vh) rotate(45deg);
                opacity: 0;
            }
        }
        
        .card {
            width: min(720px, 92vw);
            background: var(--card);
            border: 1px solid rgba(255, 59, 122, .18);
            border-radius: var(--radius);
            box-shadow: var(--shadow);
            padding: clamp(22px, 4vw, 36px);
            backdrop-filter: blur(10px);
            position: relative;
            z-index: 2;
        }
        
        .badge {
            display: inline-flex;
            align-items: center;
            gap: .5rem;
            padding: .45rem .75rem;
            border-radius: 999px;
            background: rgba(255, 59, 122, .12);
            border: 1px solid rgba(255, 59, 122, .22);
            font-weight: 600;
            font-size: .95rem;
        }
        
        h1 {
            margin: 14px 0 10px;
            font-size: clamp(1.8rem, 3.2vw, 2.6rem);
            line-height: 1.08;
        }
        
        p {
            margin: 0 0 18px;
            font-size: clamp(1rem, 1.6vw, 1.1rem);
            line-height: 1.55;
            color: rgba(43, 43, 43, .9);
        }
        
        .details {
            display: grid;
            grid-template-columns: 1fr;
            gap: 12px;
            margin: 16px 0 22px;
        }
        
        .chip {
            border-radius: 14px;
            padding: 12px 14px;
            background: rgba(124, 58, 237, .08);
            border: 1px solid rgba(124, 58, 237, .16);
            display: flex;
            gap: 10px;
            align-items: flex-start;
        }
        
        .dot {
            width: 10px;
            height: 10px;
            border-radius: 999px;
            background: linear-gradient(135deg, var(--accent), var(--accent2));
            margin-top: 7px;
        }
        
        .buttons {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
            align-items: center;
            margin-top: 10px;
        }
        
        button {
            border: 0;
            border-radius: 999px;
            padding: 12px 18px;
            font-size: 1.02rem;
            font-weight: 700;
            cursor: pointer;
            transition: transform .12s ease, box-shadow .2s ease, background .2s ease;
            box-shadow: 0 10px 26px rgba(0, 0, 0, .10);
            touch-action: manipulation;
        }
        
        .yes {
            background: linear-gradient(135deg, var(--accent), #ff7aa8);
            color: white;
        }
        
        .no {
            background: rgba(0, 0, 0, .06);
            border: 1px solid rgba(0, 0, 0, .12);
            box-shadow: none;
            position: fixed;
            z-index: 9999;
            left: 0;
            top: 0;
            transform: translate3d(0, 0, 0);
            will-change: transform;
        }
        
        .message {
            margin-top: 16px;
            padding: 14px 16px;
            border-radius: 16px;
            border: 1px dashed rgba(255, 59, 122, .4);
            background: rgba(255, 59, 122, .06);
            display: none;
        }
        
        .message strong {
            color: var(--accent);
        }
        
        .footer {
            margin-top: 18px;
            font-size: .92rem;
            color: rgba(43, 43, 43, .72);
        }
        
        @media (min-width: 640px) {
            .details {
                grid-template-columns: 1fr 1fr;
            }
        }
    </style>
</head>

<body>

    <div class="hearts" aria-hidden="true">
        <div class="heart" style="left:10%; animation-duration: 9s;  animation-delay: -2s;"></div>
        <div class="heart" style="left:22%; animation-duration: 12s; animation-delay: -7s; opacity:.4;"></div>
        <div class="heart" style="left:35%; animation-duration: 10s; animation-delay: -4s;"></div>
        <div class="heart" style="left:48%; animation-duration: 14s; animation-delay: -9s; opacity:.35;"></div>
        <div class="heart" style="left:62%; animation-duration: 11s; animation-delay: -5s;"></div>
        <div class="heart" style="left:76%; animation-duration: 13s; animation-delay: -3s; opacity:.42;"></div>
        <div class="heart" style="left:88%; animation-duration: 10s; animation-delay: -6s;"></div>
    </div>

    <main class="card">
        <div class="badge">💌 For <span id="herName">Jennah Fahmy</span></div>

        <h1>Will you be my Valentine’s date?</h1>

        <p>
            Hey <span id="nameInline">Jennah Fahmy</span>, I’d love to spend Valentine’s Day with you — a day full of laughs, fun, and adventure… with the prettiest girl ever 💕
        </p>

        <section class="details">
            <div class="chip">
                <div class="dot"></div>
                <div>
                    <b>Plan</b>
                    <span id="plan">A day full of fun and adventure</span>
                </div>
            </div>

            <div class="chip">
                <div class="dot"></div>
                <div>
                    <b>When</b>
                    <span id="when">Feb 15 💘</span>
                </div>
            </div>

            <div class="chip">
                <div class="dot"></div>
                <div>
                    <b>Where</b>
                    <span id="where">A day full of fun and adventure 😄</span>
                </div>
            </div>

            <div class="chip">
                <div class="dot"></div>
                <div>
                    <b>Dress vibe</b>
                    <span id="dress">Whatever makes you feel beautiful ✨</span>
                </div>
            </div>
        </section>

        <div class="buttons">
            <button class="yes" id="yesBtn">Yes 💖</button>
        </div>

        <div class="message" id="msg"></div>

        <div class="footer">
            — with love, <span id="myName">Beshoy</span> 💕
        </div>
    </main>

    <button class="no" id="noBtn">No 😢</button>

    <script>
        const HER_NAME = "Jennah Fahmy";
        const YOUR_NAME = "Beshoy";

        document.getElementById("herName").textContent = HER_NAME;
        document.getElementById("nameInline").textContent = HER_NAME;
        document.getElementById("myName").textContent = YOUR_NAME;

        const msg = document.getElementById("msg");
        const noBtn = document.getElementById("noBtn");
        const yesBtn = document.getElementById("yesBtn");

        let lastMoveAt = 0;

        // Move NO button smoothly anywhere on screen
        function moveNoButtonRandom() {
            const w = noBtn.offsetWidth;
            const h = noBtn.offsetHeight;
            const margin = 12;

            const maxX = window.innerWidth - w - margin;
            const maxY = window.innerHeight - h - margin;

            const randomX = Math.random() * maxX;
            const randomY = Math.random() * maxY;

            noBtn.style.transform = `translate3d(${randomX}px, ${randomY}px, 0)`;
        }

        // Place NO button next to YES at the start
        function placeNoNextToYes() {
            const yesRect = yesBtn.getBoundingClientRect();
            const spacing = 12;

            const startX = yesRect.right + spacing;
            const startY = yesRect.top;

            noBtn.style.transform = `translate3d(${startX}px, ${startY}px, 0)`;
        }

        // Throttle to avoid lag
        function runAway() {
            const now = performance.now();
            if (now - lastMoveAt < 80) return;
            lastMoveAt = now;

            requestAnimationFrame(moveNoButtonRandom);
        }

        // YES click
        yesBtn.addEventListener("click", () => {
            msg.style.display = "block";
            msg.innerHTML = `YAYYY 😭💖 <br>
        You just made my whole day, <strong>${HER_NAME}</strong>! <br>
        I can’t wait to spend Valentine’s with you 🥰`;

            noBtn.style.display = "none";
        });

        // NO runs away
        noBtn.addEventListener("pointerenter", runAway);
        noBtn.addEventListener("pointerdown", runAway);
        noBtn.addEventListener("click", runAway);

        // Start position
        window.addEventListener("load", () => {
            requestAnimationFrame(() => {
                placeNoNextToYes();
            });
        });

        // If screen resizes, place it near YES again
        window.addEventListener("resize", () => {
            requestAnimationFrame(() => {
                placeNoNextToYes();
            });
        });
    </script>

</body>

</html>