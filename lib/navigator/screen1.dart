import 'package:first/navigator/screen2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Screen1());
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: screen1(title: 'login'),
    );
  }
}
class screen1 extends StatefulWidget {
  String title = "loginfile";
  screen1({required this.title});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(80),
              child: Text("Screen 1",style: TextStyle(
                fontSize: 22
              ),),
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
            )
          ],
        ),
      ),
    );
  }
}
