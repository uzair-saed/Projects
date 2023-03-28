import 'package:flutter/material.dart';

void main() {
  runApp(cal());
}
class cal extends StatefulWidget {
  const cal({Key? key}) : super(key: key);

  @override
  State<cal> createState() => _calState();
}

class _calState extends State<cal> {

  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  double? index;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(4,28, 16, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(4,30, 16, 1),
          title: Text("SIMPLE CALCULATOR"),
        ),
        body: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 5,
                child: TextField(
                  controller: num1,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),

                    prefixIconColor: Color.fromARGB(255, 221, 218, 37),
                    label: Text("Number 1"),
                    hintText: "Enter your number",
                  ),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.phone,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Card(
                elevation: 5,
                child: TextField(
                  controller: num2,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),

                    prefixIconColor: Colors.blue,
                    label: Text("Number 2"),
                    hintText: "Enter your number",
                  ),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.phone,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white,minimumSize: Size(80, 40)),
                      onPressed: () {
                        setState(() {
                          index =
                              double.parse(num1.text) + double.parse(num2.text);
                        });
                      },
                      child: Text("+",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold))),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white,minimumSize: Size(80, 40)),
                      onPressed: () {
                        setState(() {
                          index =
                              double.parse(num1.text) - double.parse(num2.text);
                        });
                      },
                      child: Text("-",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold))),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white,minimumSize: Size(80, 40)),
                      onPressed: () {
                        setState(() {
                          index =
                              double.parse(num1.text) * double.parse(num2.text);
                        });
                      },
                      child: Text("*",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold))),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white,minimumSize: Size(80, 40)),
                    onPressed: () {
                        setState(() {
                          index =
                              double.parse(num1.text) / double.parse(num2.text);
                        });
                      },
                      child: Text("/",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              SizedBox(
                height: 45,
              ),
              Center(
                  child: Text("$index",style:
                  TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold))),

              SizedBox(
                height: 45,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey,minimumSize: Size(100, 40)),
                onPressed: () {
                  setState(() {
                    num1.clear();
                    num2.clear();
                    index=0;
                  });
                },
                child: Text("RESET",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
