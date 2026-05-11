@echo off
cd /d "%~dp0"
echo Starting Living Canvas server on http://localhost:8080 ...
start "" http://localhost:8080/ai_gallery.html
python -m http.server 8080
