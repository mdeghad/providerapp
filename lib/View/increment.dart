import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'file:///C:/Users/user1/AndroidStudioProjects/providerexample/lib/Model/count.dart';
import 'file:///C:/Users/user1/AndroidStudioProjects/providerexample/lib/Model/provider.dart';

class IncrementExample extends StatelessWidget{


  void _incrementCounter(BuildContext context) {
    Provider.of<Counter>(context, listen: false).incrementMethod();
  }

  void _decrementCounter(BuildContext context) {
    Provider.of<Counter>(context, listen: false).decrementMethod();
  }
  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<Counter>(context).getCounter;
   // var count=Provider.of<Count>(context).getCount;
return Scaffold(
  appBar: AppBar(title:Text("Provider Demo")),
  body: Center(
   child:Column(
     crossAxisAlignment: CrossAxisAlignment.center,
     mainAxisAlignment: MainAxisAlignment.center,
     children:[
       Container(
         padding: const EdgeInsets.all(10),
         child:
         Text("Value"+""+" $counter",style: TextStyle(fontSize: 20),),

       ),

Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children:[
  Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.all(10),
    child:
      RaisedButton(
        child: Text("Increment",),
        onPressed:()=> _incrementCounter(context),
      ),
  ),
  Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.all(10),
    child:
      RaisedButton(
        child: Text("Decrement"),
        onPressed: (){
          _decrementCounter(context);
        },
      ),
  )
  ])
    ],
  )
    )
    );



  }

}