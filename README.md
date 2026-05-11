# LiveMuseum — NEXUS

An immersive 3D AI art gallery experience running entirely in the browser.

## Live Demo

Hosted on GitHub Pages: [Open Gallery](https://YOUR_USERNAME.github.io/LiveMuseum/)

## How to Run Locally

Open `ai_gallery.html` in a browser — no build step required.

> Videos must be served over HTTP (not `file://`). Use `start.bat` or `start.ps1` for a local server.

## Structure

```
ai_gallery.html          # Main app (single file)
Portraits_optimized/     # Compressed MP4 video assets (~31 MB)
optimize_videos.bat      # Script to re-generate optimized videos from Portraits/
```

## Deployment

Static site — deploy to GitHub Pages, Netlify, or any static host.
