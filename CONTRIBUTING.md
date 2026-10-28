# Katkıda bulunmak / Contributing

**TR** — Katkılar çok değerli! Hata bildirmek, çeviri eklemek ya da özellik önermek için bir *issue* açabilirsin.

1. Depoyu fork'la ve `npm install` çalıştır.
2. `npm run dev` ile uygulamayı aç.
3. Değişikliğini küçük ve odaklı tut; `npm run build` hatasız geçmeli.
4. Pull request aç ve ne değiştiğini kısaca yaz.

**Yeni dil eklemek** en kolay katkıdır: `src/i18n/en.js` dosyasını kopyalayıp çevir, `src/i18n/index.js` içine kaydet (README'de adımlar var). Çeviri anahtarları Türkçe kaynak metinlerdir; kod içinde `t('Türkçe metin')` kullan, `t(...)` dışında arayüz metni bırakma.

**EN** — Contributions are welcome! Open an issue to report a bug, add a translation or suggest a feature. Fork, `npm install`, `npm run dev`, keep changes small, make sure `npm run build` passes, then open a PR. Adding a language is the easiest contribution: copy `src/i18n/en.js`, translate the values and register it in `src/i18n/index.js`. Keys are the Turkish source strings; always wrap UI text in `t('...')`.

## Tasarım ilkeleri / Design principles
- **Ceza yok, sürtünme var:** Erteleme azaltılırken XP cezası verilmez; küçük başlangıç adımları ve yumuşak taahhüt kullanılır.
- **Renkler tek anlam taşır:** mavi = odak, yeşil = ilerleme, turuncu = enerji/seri, altın = ödül, mor = AI, kırmızı = sadece risk. Metin kontrastı ≥ 4.5:1.
- **Veri kullanıcıda kalır:** Sunucu yok; AI anahtarı kullanıcının kendisine aittir.
