import 'package:flutter/material.dart';

class IndexProv extends ChangeNotifier {
  int pageIndex = 0;

  getIndex(currentIndex) {
    pageIndex = currentIndex;
    notifyListeners();
  }
}
