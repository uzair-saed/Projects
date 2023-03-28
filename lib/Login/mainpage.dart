import 'package:first/Login/logindemo.dart';
import 'package:first/Login/loginlist.dart';
import 'package:first/new/mainfile.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(mainpage());
}
class mainpage extends StatefulWidget {

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  @override
  List namepg=[
    "login","Logout"
  ];
  List<Widget> listOfWidgets = [
    logindemo(title: "login"),
    mainfile(title: "login")
  ];
  List<Loginlist> mydatalist=[
    Loginlist(username: "uzair", password: "123")
  ];
  int index=0;
  bool state=true;

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Center(
              child: Container(
                height: 695,
                child: listOfWidgets[index],
              ),
            ),
            // Container(
            // child: ElevatedButton(
            //     style: ElevatedButton.styleFrom(backgroundColor: Colors.green,minimumSize: Size(160, 40)),
            //     onPressed: (){
            //       setState(() {
            //
            //         if(index==0){
            //           index=1;
            //         }
            //         else{
            //           index=0;
            //         }
            //       });
            //     }, child: Text("${namepg[index]}",
            //     style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18))),
            // // Switch(
            // //   value: state,
            // //   onChanged: (value) {
            // //     setState(() {
            // //       state = value;
            // //       if(index == 0){
            // //         index = 1;
            // //       }else {
            // //         index = 0;
            // //       }
            // //     });
            // //   },
            // // ),
            // ),
          ],
        ),
      ),
    );
  }
}
