import 'package:flutter/material.dart';
import '../data/data_dummy.dart';
import '../models/artikel_literasi.dart';

class LiteracyProvider extends ChangeNotifier {
  final List<ArtikelLiterasi> _allArticles = DataDummy.getArticles();
  String _selectedCategory = 'Semua';
  String _searchQuery = '';

  String get selectedCategory => _selectedCategory;
  String get searchQuery => _searchQuery;
  List<String> get categories => DataDummy.categories;

  int get favoriteCount => _allArticles.where((item) => item.isFavorite).length;

  List<ArtikelLiterasi> get filteredArticles {
    return _allArticles.where((article) {
      
      // Filter berdasarkan kategori
      final bool matchesCategory;
      if (_selectedCategory == 'Semua') {
        matchesCategory = true;
      } else if (_selectedCategory == 'Favorit') {
        matchesCategory = article.isFavorite;
      } else {
        matchesCategory = article.category == _selectedCategory;
      }

      // Filter berdasarkan kata kunci pencarian
      final query = _searchQuery.toLowerCase().trim();
      final matchesSearch = query.isEmpty ||
          article.title.toLowerCase().contains(query) ||
          article.subtitle.toLowerCase().contains(query) ||
          article.category.toLowerCase().contains(query);

      return matchesCategory && matchesSearch;
    }).toList();
  }

  void setCategory(String category) {
    _selectedCategory = category;
    notifyListeners();
  }

  void setSearchQuery(String query) {
    _searchQuery = query;
    notifyListeners();
  }

  void toggleFavorite(String articleId) {
    final index = _allArticles.indexWhere((item) => item.id == articleId);
    if (index != -1) {
      _allArticles[index].isFavorite = !_allArticles[index].isFavorite;
      notifyListeners();
    }
  }
}