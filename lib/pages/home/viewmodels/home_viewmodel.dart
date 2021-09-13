import 'package:flutter/foundation.dart';

class HomeViewModel extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  set setCurrentIndex(int newValue) {
    _currentIndex = newValue;
    notifyListeners();
  }
}
