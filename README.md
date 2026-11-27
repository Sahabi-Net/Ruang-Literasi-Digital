#  Ruang Literasi Digital

**Ruang Literasi Digital** adalah aplikasi pembelajaran satu layar (*single screen*) bertema *education* berbasis Flutter yang dirancang untuk memenuhi tugas Ujian Tengah Semester (UTS) mata kuliah **Pemrograman Mobile II**.

Aplikasi ini membantu pengguna memahami literasi digital melalui modul bacaan ringkas seputar keamanan digital, cek fakta hoaks, etika bermedia sosial, dan pengelolaan jejak digital.

---

##  Fitur Utama

- **Pencarian Topik (*Search*):** Mencari modul pembelajaran secara *real-time* berdasarkan judul atau kata kunci tertentu.
- **Filter Kategori:** Menyaring daftar materi berdasarkan kategori (*Semua*, *Keamanan Digital*, *Anti Hoaks*, *Etika Media Sosial*, dan lainnya).
- **Simpan Materi (*Bookmark / Favorite*):** Menandai materi penting agar mudah ditemukan kembali, lengkap dengan indikator jumlah materi tersimpan di bagian *header*.
- **Informasi Modul Terstruktur:** Setiap *card* kategori menampilkan tingkat kesulitan (*Dasar*, *Menengah*, *Lanjutan*), kategori, ringkasan singkat, dan estimasi waktu baca.

---

##  Arsitektur & Teknologi

Aplikasi ini dibangun dengan menerapkan konsep **Separation of Concerns** agar kode lebih rapi, modular, dan mudah dipelihara:

- **Framework:** Flutter (Dart)
- **State Management:** `Provider` (mengelola *state* pencarian, *filter* kategori, dan status favorit secara terpusat)
- **Sumber Data:** Data dummy lokal & aset gambar lokal (`assets/images/`)

### Struktur Folder

```text
lib/
├── main.dart                         # Entry point aplikasi & konfigurasi Provider
├── models/
│   └── artikel_literasi.dart         # Model data modul literasi digital
├── providers/
│   └── literasi_provider.dart        # Logika state management (search, filter, favorite)
├── screens/
│   └── home_screen.dart              # Tampilan utama (Single Screen)
└── widgets/
    ├── featured_banner_card.dart     # Komponen banner utama di bagian atas
    └── article_card_item.dart        # Komponen kartu item materi pembelajaran
