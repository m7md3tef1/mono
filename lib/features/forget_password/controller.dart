import 'package:flutter/material.dart';

class value extends ChangeNotifier{
   var val;
   getVal(currentIndex) {
     val = currentIndex;
     notifyListeners();
   }
}