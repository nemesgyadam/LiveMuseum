Set-Location $PSScriptRoot
Write-Host "Starting Living Canvas server on http://localhost:8080 ..."
Start-Process "http://localhost:8080/ai_gallery.html"
python -m http.server 8080
