

import 'package:flutter/material.dart';

class NotifierViewModel with ChangeNotifier{

  static final NotifierViewModel instance = NotifierViewModel();

  int count = 0;

  void countUp() {
    count++;
    notifyListeners();
  }

}