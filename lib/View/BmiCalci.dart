import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerexample/Model/bmiprovider.dart';

class BMICalci extends StatelessWidget{
final heightController=TextEditingController();
final weightController=TextEditingController();
BMIModel bmiModel=new BMIModel();

  void getData(BuildContext context){
    var mheigh=double.parse(heightController.text);
    var mweight=double.parse(weightController.text);
    Provider.of<BMIModel>(context, listen: false).BMICalculation(mheigh,mweight);

  }

  @override
  Widget build(BuildContext context) {
    var result=Provider.of<BMIModel>(context).getResult;
    var status=Provider.of<BMIModel>(context).getstatus;

    return Scaffold(
      appBar: AppBar(title: Text("BMI"),),
      body: Container(
        child:

        Column(

        children: <Widget>[

        Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[



    ]),


    new TextField(

    cursorColor: Colors.indigoAccent,
    keyboardType: TextInputType.number,
    decoration: new InputDecoration(
    contentPadding: EdgeInsets.all(5),
    border: InputBorder.none,
    hintText:"Enter your weight in kg"),
    controller: weightController,
    style: TextStyle(color: Colors.black),

    ),

    new TextField(

    controller: heightController,
    keyboardType: TextInputType.number,
    style: TextStyle(color: Colors.black),
    decoration: new InputDecoration(
    contentPadding: EdgeInsets.all(5),
    hintText: 'Enter Your Height in Cm',
    border: InputBorder.none,

    ),
    ),

    MaterialButton(
    minWidth: 350,
    onPressed: () {

      getData(context);

    },
      textColor: Colors.white,
      child:
      Text('Calculate BMI', style: TextStyle(fontSize: 15),textAlign: TextAlign.center,),
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
      side: BorderSide(color: Colors.indigoAccent)
      ),
      color: Colors.indigoAccent,

      ),

      Text(result.toString(),style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),
      Text(("Your BMI is"+" "+status.toString()),style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),

    ]
    )
    )
    );
  }


}

