import 'package:flutter/cupertino.dart';

class Count extends ChangeNotifier{
  int count=0;

  int get getCount{
    return count;
  }

  void decrementMethod(){
    count-=1;
    notifyListeners();
  }
}