import 'package:flutter/material.dart';

void main() {
  runApp(Photo());
}

class Photo extends StatelessWidget {
  const Photo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: customer(title: 'Ecommerce.com'),
    );
  }
}

class customer extends StatefulWidget {
  String title = "Product Details";
  customer({required this.title});

  @override
  State<customer> createState() => _customerState();
}

class _customerState extends State<customer> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        title: Text(widget.title),
        // actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black26,
      body: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            width: 400,
            height: 400,
            decoration: BoxDecoration(
                shape:BoxShape.circle,
                image: DecorationImage(image: AssetImage(""),
                )
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            width: 200,
            height: 200,
            child: Text("car1.jpg"),
            ),
          Container(
          ),
        ],
      )
    );
  }
}
