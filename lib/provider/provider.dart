import 'package:flutter/material.dart';

class Myscreencounterprovider with ChangeNotifier{
  int _count = 0;
  int get count => _count;

  
  void incrementCounter() {
  
      
      _count++;
      notifyListeners();
    }
  

    void decrementCounter() {
      
      _count--;
      notifyListeners();
    }
  }
