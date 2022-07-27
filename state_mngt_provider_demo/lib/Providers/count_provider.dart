import 'package:flutter/material.dart';

class Counter with ChangeNotifier{
  int _count = 0;

  int get cout => _count;

  void add(){
    _count++;
    notifyListeners();
  }

  void remove(){
    _count++;
    notifyListeners();
  }

  void reset(){
    _count = 0;
    notifyListeners();
  }
}