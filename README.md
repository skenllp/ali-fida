# Ali Shuhail & Fida Becker — Wedding Invitation

Sunday, 1 November 2026 · 5:00 PM onwards · Barhoom Palace, Karulai, Nilambur, Malappuram

Cinematic invitation: cover → book-opening film → hero → scrolling sections. Plain HTML/CSS/JS, no build step.

## Run locally
Video needs a real web server (not `file://`):

    npx http-server . -p 8080      # then open http://localhost:8080
    # or: python3 -m http.server 8080  (works, but video seeking is limited)

## Before you publish (WhatsApp preview)
Share tags need the live address:

    ./set-domain.sh https://your-domain.com

(Windows: find/replace `https://YOUR-DOMAIN.com` in `index.html`.)
After deploying, refresh WhatsApp's cache by sharing the link once, or test at https://developers.facebook.com/tools/debug/

## Deploy (any static host)
- **Netlify:** drag-and-drop this folder at app.netlify.com/drop.
- **Cloudflare Pages / Vercel / GitHub Pages:** publish the folder root, no build command.
- Serve over HTTPS. Keep `assets/video/invitation-reveal.mp4` as-is (it is `faststart` encoded for instant playback).

## Structure
- `index.html` — all sections and metadata
- `css/style.css`, `css/scenes.css` — theme tokens at top of `style.css` (burgundy/gold)
- `js/main.js` — cover → film → hero flow, countdown, music; `js/particles.js` — Thank You finale
- `assets/video/invitation-reveal.mp4` — supplied Firefly film (unmodified)
- `assets/images/cover|hero` — first / last frame of the film
- `og.jpg` — 1200×630 share image · `favicon.svg`, `apple-touch-icon.png`

## Still needed / optional
- Real domain (see above).
- Couple photos: add `assets/images/gallery/groom.jpg` / `bride.jpg` and uncomment the marked `<img>` in `#couple`.
- Music: `assets/audio/music.mp3` was kept from the original project — replace if you prefer another track.
- Company logos (TP / CONFRA) were not supplied; names appear as text.
