import '../models/artikel_literasi.dart';

class DataDummy {
  static const List<String> categories = [
    'Semua',
    'Keamanan Digital',
    'Anti Hoaks',
    'Etika Media Sosial',
    'Jejak Digital',
    'Favorit',
  ];

  static List<ArtikelLiterasi> getArticles() {
    return [
      ArtikelLiterasi(
        id: '1',
        title: 'Mengenali Modus Phishing & Social Engineering',
        subtitle: 'Pelajari cara membedakan tautan resmi dengan jebakan pencurian data pribadi di pesan singkat.',
        category: 'Keamanan Digital',
        readTime: '5 Menit Baca',
        level: 'Dasar',
        assetPath: 'assets/images/phising.jpg',
        isFavorite: true,
      ),
      ArtikelLiterasi(
        id: '2',
        title: 'Teknik Saring Sebelum Sharing: Cek Fakta Cepat',
        subtitle: 'Langkah praktis memverifikasi kebenaran berita viral dan gambar manipulasi sebelum disebarkan.',
        category: 'Anti Hoaks',
        readTime: '4 Menit Baca',
        level: 'Dasar',
        assetPath: 'assets/images/saring.jpg',
      ),
      ArtikelLiterasi(
        id: '3',
        title: 'Netiket & Empati di Ruang Komentar Publik',
        subtitle: 'Membangun diskusi sehat dan menghindari cyberbullying saat berinteraksi di media sosial.',
        category: 'Etika Media Sosial',
        readTime: '6 Menit Baca',
        level: 'Menengah',
        assetPath: 'assets/images/etika.jpg',
      ),
      ArtikelLiterasi(
        id: '4',
        title: 'Mengelola Jejak Digital untuk Masa Depan Karier',
        subtitle: 'Segala hal yang kamu unggah bersifat permanen. Atur privasi akun dan reputasi onlinemu.',
        category: 'Jejak Digital',
        readTime: '7 Menit Baca',
        level: 'Menengah',
        assetPath: 'assets/images/jejak_digital.webp',
      ),
      ArtikelLiterasi(
        id: '5',
        title: 'Pentingnya Autentikasi Dua Faktor (2FA)',
        subtitle: 'Tambahkan lapisan pelindung ekstra pada akun email dan perbankan digitalmu dalam 2 menit.',
        category: 'Keamanan Digital',
        readTime: '3 Menit Baca',
        level: 'Dasar',
        assetPath: 'assets/images/keamanan_2fa.jpg',
      ),
      ArtikelLiterasi(
        id: '6',
        title: 'Mengenali Deepfake & Konten Buatan AI',
        subtitle: 'Ciri-ciri visual dan audio untuk mendeteksi konten sintetis yang berpotensi menyesatkan.',
        category: 'Anti Hoaks',
        readTime: '8 Menit Baca',
        level: 'Lanjutan',
        assetPath: 'assets/images/deepfak.jpg',
      ),
      ArtikelLiterasi(
        id: '7',
        title: 'Bijak Bermedia Sosial',
        subtitle: 'Gunakan media sosial secara positif, produktif, dan bertanggung jawab.',
        category: 'Etika Media Sosial',
        readTime: '4 Menit Baca',
        level: 'Dasar',
        assetPath: 'assets/images/bijak.jpeg',
      ),
      ArtikelLiterasi(
        id: '8',
        title: 'Informasi',
        subtitle: 'Kenali dampak aktivitas online terhadap reputasi dan kehidupan sehari-hari.',
        category: 'Jejak Digital',
        readTime: '5 Menit Baca',
        level: 'Dasar',
        assetPath: 'assets/images/JD_hari.jpg',
      ),
    ];
  }
}