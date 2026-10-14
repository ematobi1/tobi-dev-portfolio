# Tobi Dev Portfolio

Static developer portfolio for Emmanuel Tobi, built with plain HTML/CSS/JS and bundled with [Vite](https://vitejs.dev/). Animated background via [particles.js](https://github.com/VincentGarreau/particles.js/).

## Run locally

```bash
npm install
npm run dev      # dev server at http://localhost:5173
npm run build    # production build into dist/
npm run preview  # serve the production build
```

## Deploy

- **Netlify:** `netlify.toml` builds with `npm run build` and publishes `dist/`.
- **GitHub Pages:** `npm run deploy` builds and pushes `dist/` to the `gh-pages` branch.

## Structure

```
index.html        page markup
assets/style.css  styles
assets/script.js  particles.js configuration
images/           project screenshots
```
