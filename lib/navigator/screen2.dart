import 'package:first/navigator/screen1.dart';
import 'package:first/navigator/screen3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Screen2());
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: screen2(title: 'login'),
    );
  }
}
class screen2 extends StatefulWidget {
  String title = "loginfile";
  screen2({required this.title});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(80),
              child: Text("Screen 2",style: TextStyle(
                  fontSize: 22
              ),),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.green,minimumSize: Size(160, 40)),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                            return screen1(title: "login");
                          }),);
                        },
                        child: Text("Screen1",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18))),
                  ),
                  Container(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.green,minimumSize: Size(160, 40)),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                            return screen3(title: "login");
                          }),);
                        },
                        child: Text("Screen3",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18))),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
