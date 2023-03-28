import 'package:flutter/material.dart';
import 'package:first/products.dart';

void main(){
  runApp(ecocard());
}
class ecocard extends StatefulWidget {
  const ecocard({Key? key}) : super(key: key);

  @override
  State<ecocard> createState() => _ecocardState();
}

class _ecocardState extends State<ecocard> {

  List<Product> products=[
    Product(
        name: "Marker",
        price: 100,
        description: "",
        url: "car1.jpg",

    ),
    Product(name: "Car",
        price: 200,
        description: "",
        url: "more.png"
    ),
    Product(
      name: "Marker",
      price: 100,
      description: "",
      url: "car2.jpg",

    ),
    Product(name: "Car",
        price: 200,
        description: "",
        url: "dwnld.png"
    ),
  ];
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
         appBar: AppBar(
           title: Text("Demo"),
         ),
         backgroundColor: Colors.black,
      body: GridView.builder(itemBuilder: (context, index) {
        return Container(
          color: Colors.white,
        );
      },
      itemCount: products.length,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 200,
            crossAxisCount: 11,
          mainAxisSpacing: 11
        ),)
      )
    );
  }
}
