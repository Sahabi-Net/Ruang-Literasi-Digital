class ArtikelLiterasi {
  final String id;
  final String title;
  final String subtitle;
  final String category;
  final String readTime;
  final String assetPath;
  final String level;
  bool isFavorite;

  ArtikelLiterasi({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.category,
    required this.readTime,
    required this.assetPath,
    required this.level,
    this.isFavorite = false,
  });
}