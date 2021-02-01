import 'package:flutter/cupertino.dart';

class Counter extends ChangeNotifier{
  int counter=0;

  int get getCounter{
    return counter;
  }
  int get getCount{
    return counter;
  }

  void incrementMethod(){
    counter+=1;
    notifyListeners();
  }

  void decrementMethod(){
    counter-=1;
    notifyListeners();
  }
}