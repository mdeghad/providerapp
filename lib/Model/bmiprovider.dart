import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:providerexample/View/BmiCalci.dart';

class BMIModel extends ChangeNotifier{
  double height;
double weight;
  double result1=0;
 String status="";


String get getstatus{
   return status;
 }
  double get getHeight{
    return height;
  }

  double get getWeight{
    return weight;
  }

  double get  getResult{
    return result1;
}



void BMICalculation(double heigh1,double weight1){
  height = (heigh1)/100;
      print("height$height");
      weight = weight1 ;
  double square = height * height;
  result1= weight / square;

    if (result1 < 18.5) {
      status = "underweight";
      // print( "UnderWeight");
    }
    else if (result1 <= 25) {
      status = "Helthy weight";
      print("");
    }
    else if (result1<= 30) {
      status = "OverWeight";
    }
    else if (result1 > 35) {
      status = "OverWeight";
    }
  notifyListeners();
  }


}
