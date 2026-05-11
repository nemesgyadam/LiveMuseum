@echo off
REM Video optimization for web playback - reduces lag significantly
REM Converts to 720p H.264 with faststart flag for instant streaming

setlocal enabledelayedexpansion

set INPUT_DIR=Portraits
set OUTPUT_DIR=Portraits_optimized

if not exist "%OUTPUT_DIR%" mkdir "%OUTPUT_DIR%"

echo ========================================
echo Video Optimization for Web Playback
echo ========================================
echo.
echo Input:  %INPUT_DIR%
echo Output: %OUTPUT_DIR%
echo.
echo Settings:
echo - Resolution: 720p (1280x720)
echo - Codec: H.264 (libx264)
echo - Bitrate: 2.5 Mbps
echo - Audio: AAC 128k
echo - Faststart: enabled (instant streaming)
echo.
echo ========================================
echo.

for %%f in ("%INPUT_DIR%\*.mp4") do (
    echo Processing: %%~nxf
    ffmpeg -i "%%f" ^
        -vf "scale=-2:720" ^
        -c:v libx264 ^
        -preset medium ^
        -crf 23 ^
        -b:v 2500k ^
        -maxrate 3000k ^
        -bufsize 5000k ^
        -c:a aac ^
        -b:a 128k ^
        -movflags +faststart ^
        -y "%OUTPUT_DIR%\%%~nxf"
    echo Done: %%~nxf
    echo.
)

echo ========================================
echo All videos optimized!
echo ========================================
echo.
echo Next steps:
echo 1. Check the %OUTPUT_DIR% folder
echo 2. Update ai_gallery.html to use "Portraits_optimized/" instead of "Portraits/"
echo 3. Reload the page
echo.
pause
