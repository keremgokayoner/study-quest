# Study Quest 🎮📚

**TR:** Ders çalışmayı oyuna çeviren, ertelemeyi azaltan, kişiselleştirilebilir masaüstü çalışma planlayıcı. İsteğe bağlı Gemini destekli AI yoldaşı (Bolt) içerir.
**EN:** A gamified, procrastination-fighting study planner for the desktop, with an optional Gemini-powered AI companion (Bolt).

> Durum / Status: erken sürüm (v0.x). Hata bildirimleri ve katkılar çok değerli. / Early version; feedback and contributions welcome.

## Özellikler / Features

- 🧭 **Kurulum sihirbazı:** amacına (okul düzeni, sınav, alışkanlık, yeni beceri…), engellerine ve ritmine göre ilk haftalık planı kurar.
- 🗓️ **Kendi haftalık planın:** elle düzenle, günleri kopyala, hazır şablon seç ya da AI'a yazdır. Dinlenme günleri seriyi bozmaz.
- ⏳ **Erteleme engelleyici (cezasız):** "Şimdi yap" kartı, 2 dakika kuralı, "Eğer… o zaman…" başlama planları, Erteleme Kurtarıcı (AI küçük adımlara böler), günlük söz, hatırlatıcılar.
- 🎮 **Oyunlaştırma:** XP, seviyeler, seri + Seri Dondurma, günlük sandık, konfeti ve sesler, maskot Bolt.
- ⏱️ **Odak:** 45+5+10 dk bloklar, Derin Odak bonusu, Lo-Fi.
- 🃏 **Aralıklı tekrar (Leitner)**, 📄 **PDF analizi** (özet + kart + test), 🎙️ **Feynman anlatımı** (ses → AI değerlendirmesi), 📝 **deneme/net takibi**.
- 🌍 **Türkçe & English**, açık/koyu/otomatik tema.
- 🔒 **Gizlilik:** Sunucu yok. Veriler bilgisayarında; AI anahtarı yalnızca sende ve işletim sistemi şifrelemesiyle saklanır.

## Hızlı başlat / Quick start

Node.js 18+ gerekir / requires Node.js 18+.

```bash
git clone <bu-deponun-adresi>
cd study-quest
npm install
npm run dev        # geliştirme / development
npm start          # derleyip çalıştır / build and run
```

Windows'ta `Baslat.bat`, macOS/Linux'ta `./baslat.sh` ilk kurulumu kendisi yapıp uygulamayı açar.

## Kurulum dosyası üretme / Building installers

```bash
npm run dist       # release/ klasörüne .exe, .dmg veya .AppImage
```

GitHub'da `v1.0.0` gibi bir etiket (tag) itersen `.github/workflows/release.yml` üç işletim sistemi için kurulum dosyalarını derleyip Release'e ekler. Uygulamalar **imzasızdır**; Windows SmartScreen / macOS Gatekeeper uyarı gösterebilir. Kod imzalama için kendi sertifikalarını ekle. Uygulama simgesi için `build/icon.png` (512×512) ekleyebilirsin.

## AI (isteğe bağlı) / AI (optional)

Her kullanıcı kendi **ücretsiz Gemini API anahtarını** Ayarlar'a girer ([aistudio.google.com/apikey](https://aistudio.google.com/apikey)). Anahtar olmadan da plan, odak, kartlar, erteleme akışı ve oyunlaştırma çalışır. Model adı Ayarlar'dan değiştirilebilir (Google modelleri sık yenilenir); yoğunlukta otomatik yeniden deneme ve yedek modele geçiş vardır.

⚠️ Google'ın ücretsiz katmanında girdiler model geliştirmede kullanılabilir; kişisel/gizli bilgi yükleme. / On Google's free tier inputs may be used to improve models; don't upload sensitive data.

## Diller / Languages

Arayüz ve Bolt Türkçe ve İngilizce destekler. Yeni dil eklemek için `src/i18n/en.js` dosyasını kopyala (örn. `de.js`), değerleri çevir, sonra `src/i18n/index.js` içinde `import de from './de'`, `DICTS = { en, de }` ve `LANGS` listesine `{ id: 'de', name: 'Deutsch', flag: '🇩🇪', ai: 'Deutsch' }` ekle. Çevirisi eksik anahtarlar Türkçe görünür.

## Proje yapısı / Structure

```
electron/        ana süreç (pencere, ayarlar, Gemini istekleri) / main process
src/pages/       ekranlar / screens
src/components/  maskot, halka, modallar… / UI parts
src/logic/       seri, plan üretici, efektler / game & planning logic
src/services/    AIService (Gemini) / AI layer
src/i18n/        diller / translations
src/store/       Zustand durumu / state
```

## Katkı / Contributing

[CONTRIBUTING.md](CONTRIBUTING.md) dosyasına bak. / See CONTRIBUTING.md.

## Lisans / License

[MIT](LICENSE)
