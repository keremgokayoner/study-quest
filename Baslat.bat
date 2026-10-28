@echo off
chcp 65001 >nul
cd /d "%~dp0"
title Study Quest

where node >nul 2>nul
if errorlevel 1 (
  echo [HATA] Node.js kurulu degil.
  echo Lutfen https://nodejs.org adresinden "LTS" surumunu kurup bu dosyayi tekrar calistir.
  pause
  exit /b 1
)

if not exist node_modules (
  echo Ilk kurulum yapiliyor, bu birkac dakika surebilir...
  call npm install
  if errorlevel 1 (
    echo [HATA] Kurulum basarisiz oldu. Internet baglantini kontrol et.
    pause
    exit /b 1
  )
)

echo Study Quest aciliyor...
call npm start
if errorlevel 1 pause
