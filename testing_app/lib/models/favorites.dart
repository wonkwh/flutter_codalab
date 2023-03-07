import 'package:flutter/material.dart';

class Favorites extends ChangeNotifier {
  final List<int> _favoriteItem = [];
  List<int> get items => _favoriteItem;

  void add(int itemNo) {
    _favoriteItem.add(itemNo);
    notifyListeners();
  }

  void remove(int itemNo) {
    _favoriteItem.remove(itemNo);
    notifyListeners();
  }
}
