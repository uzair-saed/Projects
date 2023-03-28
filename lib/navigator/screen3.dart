import 'package:first/navigator/screen1.dart';
import 'package:first/navigator/screen2.dart';
import 'package:first/navigator/screen4.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Screen3());
}

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: screen3(title: 'login'),
    );
  }
}
class screen3 extends StatefulWidget {
  String title = "loginfile";
  screen3({required this.title});

  @override
  State<screen3> createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(80),
              child: Text("Screen 3",style: TextStyle(
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
                            return screen2(title: "login");
                          }),);
                        },
                        child: Text("Screen2",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18))),
                  ),
                  Container(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.green,minimumSize: Size(160, 40)),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                            return screen4(title: "login");
                          }),);
                        },
                        child: Text("Screen4",
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
