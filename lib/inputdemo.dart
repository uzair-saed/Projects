import 'package:flutter/material.dart';

void main() {
  runApp(const inputdemo());
}

class inputdemo extends StatefulWidget {
  const inputdemo({Key? key}) : super(key: key);

  @override
  State<inputdemo> createState() => _inputdemoState();
}

class _inputdemoState extends State<inputdemo> {

  // TextEditingController emailcontroller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
    appBar: AppBar(
        title: const Text("MY NEW APP")
    ),
      body: Center(
        child: Column(
            children:[

              Container(
        width: 450,
        child: const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.person, color: Colors.green),
            label: Text("NAME*"),
            hintText: 'Ahmed',
          ),
          textAlign: TextAlign.start,
          cursorColor: Colors.green,
          keyboardType: TextInputType.number,
        ),
      ),
              Container(
                width: 450,

                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                    ),
                    prefixIcon: Icon(Icons.person, color: Colors.green),
                    label: Text("Password*"),
                    hintText: 'ali123',
                  ),
                  textAlign: TextAlign.start,
                  cursorColor: Colors.green,
                  keyboardType: TextInputType.number,
                ),
              ),
        ]
    ),
      ),
    ),
    );
  }
}
