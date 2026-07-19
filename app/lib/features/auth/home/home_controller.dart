import 'package:flutter/foundation.dart';

class HomeController extends ChangeNotifier {
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  Future<void> loadFeed() async {
    _isLoading = true;
    notifyListeners();

    // سيتم ربط API وقاعدة البيانات لاحقًا
    await Future.delayed(const Duration(seconds: 2));

    _isLoading = false;
    notifyListeners();
  }

  Future<void> refreshFeed() async {
    await loadFeed();
  }
}
