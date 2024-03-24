import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mainViewModelProvider = ChangeNotifierProvider((ref) => MainViewModel());

class MainViewModel extends ChangeNotifier {
  int _counter = 0;

  get counter => _counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }
}
