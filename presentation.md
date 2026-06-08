---
marp: true
title: "LNbitsBox"
description: "A fast, demo-led intro to LNbitsBox as a self-hosted Lightning appliance"
theme: default
paginate: true
paginate-position: bottom-left
footer: ""
color: #f5ecff
style: |
  :root {
    --accent: #b53cff;
    --accent-soft: #d9a7ff;
    --btc: #f7931a;
    --panel: #160c24;
    --panel-2: #211334;
    --text: #f5ecff;
    --muted: #cdb8df;
  }

  section {
    position: relative;
    font-family: 'Avenir Next', 'Segoe UI', sans-serif;
    background:
      linear-gradient(135deg, #140a22 0%, #0e0718 54%, #060309 100%);
    color: var(--text);
    padding: 54px 60px 46px 60px;
  }

  section::before {
    content: "";
    position: absolute;
    right: 28px;
    bottom: -62px;
    width: 216px;
    height: 216px;
    background: url('./images/lnbits_logo.png') center / contain no-repeat;
    opacity: 0.18;
    pointer-events: none;
  }

  section::after {
    content: "";
    position: absolute;
    inset: 16px;
    border: 1px solid rgba(181, 60, 255, 0.22);
    border-radius: 18px;
    pointer-events: none;
  }

  footer {
    display: none;
  }

  h1, h2, h3 {
    color: #ffffff;
    letter-spacing: 0.02em;
    margin-bottom: 0.22em;
  }

  h1 {
    font-size: 1.7em;
    max-width: 900px;
  }

  h2 {
    font-size: 1.34em;
    display: inline-block;
  }

  h3 {
    font-size: 0.78em;
    color: var(--accent-soft);
    text-transform: uppercase;
    letter-spacing: 0.08em;
    margin-top: 0.3em;
  }

  p, li, td, th, blockquote {
    font-size: 0.74em;
    line-height: 1.28;
  }

  ul {
    margin-top: 0.45em;
    padding-left: 1.1em;
  }

  li {
    margin: 0.16em 0;
  }

  li::marker {
    color: var(--btc);
  }

  strong {
    color: var(--accent-soft);
  }

  code {
    color: #fff3dd;
    background: rgba(247, 147, 26, 0.14);
    border: 1px solid rgba(247, 147, 26, 0.35);
    border-radius: 7px;
    padding: 0.08em 0.3em;
  }

  blockquote {
    margin: 0.8em 0 0 0;
    padding: 0.55em 1.8em 0.55em 0.9em;
    border-left: 4px solid var(--btc);
    background: linear-gradient(90deg, rgba(247, 147, 26, 0.10), rgba(181, 60, 255, 0.08));
    color: var(--muted);
    display: inline-block;
    width: fit-content;
    max-width: 100%;
  }

  h2::after {
    content: "";
    display: block;
    width: 100%;
    height: 3px;
    margin-top: 10px;
    border-radius: 999px;
    background: linear-gradient(90deg, var(--btc), var(--accent));
  }

  .eyebrow {
    color: var(--btc);
    font-size: 0.7em;
    font-weight: 700;
    letter-spacing: 0.09em;
    margin: 0 0 0.55em;
    text-transform: uppercase;
  }

  .lead {
    color: #ffffff;
    font-size: 0.92em;
    line-height: 1.24;
    max-width: 900px;
  }

  .muted {
    color: var(--muted);
  }

  .split {
    display: grid;
    grid-template-columns: minmax(0, 1.03fr) minmax(300px, 0.97fr);
    gap: 30px;
    align-items: start;
  }

  .flow {
    display: grid;
    grid-template-columns: repeat(4, minmax(0, 1fr));
    gap: 12px;
    margin-top: 1em;
  }

  .flow.three {
    grid-template-columns: repeat(3, minmax(0, 1fr));
  }

  .flow.vertical {
    grid-template-columns: 1fr;
    gap: 10px;
    margin-top: 0;
  }

  .step, .column, .service {
    background: linear-gradient(180deg, rgba(33, 19, 52, 0.96), rgba(18, 8, 31, 0.96));
    border: 1px solid rgba(255, 255, 255, 0.14);
    border-radius: 8px;
    padding: 16px;
    min-height: 98px;
    box-shadow: 0 18px 42px rgba(0, 0, 0, 0.24);
  }

  .step {
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    font-weight: 700;
    color: #ffffff;
    position: relative;
  }

  .step:not(:last-child)::after {
    content: "->";
    position: absolute;
    right: -20px;
    color: var(--btc);
    font-weight: 800;
  }

  .flow.vertical .step:not(:last-child)::after {
    content: "v";
    right: auto;
    bottom: -18px;
  }

  .column h3, .service h3 {
    margin-top: 0;
  }

  .column p, .service p {
    color: var(--muted);
    margin: 0;
    font-size: 0.67em;
  }

  .service-grid {
    display: grid;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    gap: 10px;
    margin-top: 0.7em;
  }

  .service {
    min-height: 74px;
    padding: 12px 14px;
  }

  .service h3 {
    font-size: 0.62em;
  }

  .site {
    color: #fff3dd;
    font-size: 1.08em;
    font-weight: 800;
  }

  .demo-list {
    counter-reset: demo;
    list-style: none;
    margin: 1em 0 0;
    padding: 0;
  }

  .demo-list li {
    counter-increment: demo;
    display: flex;
    gap: 14px;
    align-items: center;
    margin: 0 0 12px;
    padding: 14px 16px;
    background: var(--panel);
    border: 1px solid rgba(255, 255, 255, 0.14);
    border-radius: 8px;
    color: #ffffff;
    font-weight: 700;
  }

  .demo-list li::before {
    content: counter(demo);
    display: inline-flex;
    align-items: center;
    justify-content: center;
    width: 32px;
    height: 32px;
    border-radius: 50%;
    background: var(--btc);
    color: #140a22;
    flex: 0 0 32px;
  }

  .box-photo {
    width: 100%;
    max-height: 410px;
    object-fit: cover;
    border-radius: 8px;
    border: 1px solid rgba(247, 147, 26, 0.45);
    box-shadow: 0 18px 48px rgba(0, 0, 0, 0.35);
  }

  section.center-slide {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    text-align: center;
  }

  section.center-slide h1 {
    font-size: 3em;
    margin: 0;
    max-width: none;
  }

  .final-logo {
    display: block;
    width: 220px;
    height: auto;
    margin: 0 auto 28px;
  }

  .hero-logo {
    display: block;
    width: min(560px, 78vw);
    height: auto;
    margin: 0 auto;
  }
---

<!-- _class: center-slide -->
<img class="hero-logo" src="./images/lnbitsbox-logo.svg" alt="LNbitsBox logo">

---

## What Is LNbitsBox?

**LNbitsBox is a self-hosted Lightning appliance.**

<div class="split">
<div>

A Linux appliance that boots into a working LNbits server, with the critical parts already wired together.

- First-run setup wizard
- LNbits with Phoenixd, Ark(ade) or Spark Lightning funding sources
- Tor hidden service
- Clearnet URL
- Admin control panel
- Wi-Fi config
- OTA updates
- Manual and rolling encrypted backup and recovery
- Local HTTPS with installable CA

</div>
</div>

---

## Why?

**Because sovereign self-hosting can be easy.**

LNbitsBox gives you a fully self-contained Lightning appliance that is easy to set up, use, and maintain.

<div class="flow three">
  <div class="column">
    <h3>Personal node</h3>
    <p>Run your own LNbits instance at home with no cloud account required for the core experience.</p>
  </div>
  <div class="column">
    <h3>Workshop device</h3>
    <p>Use it in a classroom, hackerspace, event booth, or hands-on Bitcoin workshop.</p>
  </div>
  <div class="column">
    <h3>Merchant / project box</h3>
    <p>Prototype payments, private reachability, tunnels, updates, and recovery flows in the real world.</p>
  </div>
</div>

- Tor support for private reachability
- Admin panel for status, services, Wi-Fi, updates, and tunnels
- Built for demos: reset, reconfigure, update, recover

---

## Why NixOS?

**Because hardware for money should be reproducible**

<div class="split">
<div>

NixOS makes the whole appliance declarative: services, ports, files, packages and update flow.

- Same config builds the same system image
- Easier OTA updates
- Rollback-friendly when updates go wrong
- Services are explicit: LNbits, funding sources, Caddy, Tor, admin app
- Great fit for appliances: define the state and ship it

</div>
</div>

---

<!-- _class: center-slide -->
# Demo

---

<!-- _class: center-slide -->
<img class="final-logo" src="./images/lnbits_logo.png" alt="LNbits logo">

# LNbitsBox.com
