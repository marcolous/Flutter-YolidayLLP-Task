import 'dart:developer';
import 'package:flutter/foundation.dart';

class ProjectProvider extends ChangeNotifier {
  String _currentSearchResult = '';
  String get currentSearchResult => _currentSearchResult;

  void setSearchResult({required String searchResult}) {
    _currentSearchResult = searchResult;
    log(_currentSearchResult);
    notifyListeners();
  }
}
