import 'dart:developer';
import 'package:flutter/foundation.dart';

class ProjectProvider extends ChangeNotifier {
  String _currentSearchResult = '';
  String get currentSearchResult => _currentSearchResult;
  List<String> get myTitles =>
      (searchedTitles.isNotEmpty || _currentSearchResult != '')
          ? searchedTitles
          : defTitles;
  List<String> searchedTitles = [];
  List<String> defTitles = [
    "Exploring the Wonders of Machine Learning",
    "Mastering Time Management for Success",
    "The Future of Artificial Intelligence",
    "How to Achieve Financial Independence",
    "The Art of Minimalist Living",
    "Unlocking Creativity in the Workplace",
    "Building a Successful Remote Team",
    "Top 10 Strategies for Personal Growth",
    "The Power of Effective Communication",
    "Harnessing the Power of Social Media Marketing",
    "Leadership Lessons from Successful Entrepreneurs",
    "The Role of Technology in Modern Education",
    "Sustainable Living: A Guide to Eco-Friendly Choices",
    "Mastering Public Speaking: Tips and Tricks",
    "How to Build Strong Personal Relationships",
    "The Importance of Mental Health in the Workplace",
    "The Rise of Digital Nomadism",
    "Creating a Healthy Work-Life Balance",
    "The Evolution of E-commerce and Online Shopping",
    "Breaking Through Creative Blocks: Methods for Innovation",
  ];

  void setSearchResult({required String searchResult}) {
    searchedTitles =
        defTitles.where((title) => title.contains(searchResult)).toList();
    _currentSearchResult = searchResult;
    log(searchResult);
    log(_currentSearchResult);
    notifyListeners();
  }
}
