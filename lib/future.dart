import 'dart:async';
import 'dart:convert';

import 'package:first/Login/logindemo.dart';
import 'package:flutter/material.dart';

void main(){
  //runApp(MaterialApp(home: future()));

  String personData = '[{"name" : "Ali" , "age" : 24 , "hobbies" : [] } , {"name" : "waqar" , "age" : 22 , "hobbies" : [] }]';
  Map myJsonData = jsonDecode(personData);
  print(myJsonData["name"]);
}

class future extends StatefulWidget {
  const future({Key? key}) : super(key: key);

  @override
  State<future> createState() => _futureState();
}
class _futureState extends State<future> {
  @override

  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(
          builder: (context)=> logindemo(title: "")));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          child: Text("Splash",style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 34,
            color: Colors.white
          ),),
        ),
      ),
    );
  }
}







// Future<void> main() async{
//   runApp(MaterialApp(home: futree(),));
//   String data= await getdata();
//
//   print(data);
// }
// Future getdata(){
//   return Future.delayed(Duration(seconds: 5),() => "TextDemo()"
//   );
// }