#!/usr/bin/env bash
cd "$(dirname "$0")" || exit 1

if ! command -v node >/dev/null 2>&1; then
  echo "[HATA] Node.js kurulu degil. https://nodejs.org adresinden LTS surumunu kur ve tekrar dene."
  exit 1
fi

if [ ! -d node_modules ]; then
  echo "Ilk kurulum yapiliyor, birkac dakika surebilir..."
  npm install || { echo "[HATA] Kurulum basarisiz. Internet baglantini kontrol et."; exit 1; }
fi

echo "Study Quest aciliyor..."
npm start
