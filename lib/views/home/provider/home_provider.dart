import 'package:flutter/cupertino.dart';

class CounterProvider with ChangeNotifier {
  int i = 0;
  void increment()
  {
    i++;
    notifyListeners();
  }

  void decrement()
  {
    i--;
    notifyListeners();
  }
  void twoX()
  {
    i=i*2;
    notifyListeners();
  }
  void threeX()
  {
    i=i*3;
    notifyListeners();
  }
  void fiveX()
  {
    i=i*5;
    notifyListeners();
  }
  void clear()
  {
    i=0;
    notifyListeners();
  }

}