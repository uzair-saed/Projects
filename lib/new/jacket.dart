import 'package:flutter/material.dart';
import 'package:first/products.dart';


void main(){
  runApp(Jacket());
}

class Jacket extends StatelessWidget {
  const Jacket({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: jacket(title: 'Ecommerce.com'),
    );
  }
}

class jacket extends StatefulWidget {
  String title = "Customer DATA";
  jacket({required this.title});

  @override
  State<jacket> createState() => _jacketState();
}

class _jacketState extends State<jacket> {
  List <Product> myproductList=[
    Product(
        name: "Jacket",
        time: "99.99",
        url: "https://static-01.daraz.pk/p/5a2449195e82e3c7b1a5f0a9870dbd18.jpg"
    ),
    Product(
        name: "Sleveless",
        time: "40.99",
        url: "https://cdn.shopify.com/s/files/1/0264/3440/4461/products/OLIVE_PUFFER_1_512x768.jpg?v=1655719164"
    ),
    Product(
        name: "Puffer",
        time: "30.24",
        url: "https://cdn.shopify.com/s/files/1/0144/7827/8739/products/DSC06266_1600x.jpg?v=1669643112"
    ),
    Product(
        name: "Leather",
        time: "89.76",
        url: "https://cdn.shopify.com/s/files/1/0535/0506/5136/products/Category5.jpg?v=1661855936"
    ),
  ];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
        ),
        itemCount: myproductList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                border: Border.fromBorderSide(BorderSide(width: 0.5)),
                  borderRadius: new BorderRadius.circular(20.0)

              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    myproductList[index].url,
                    height: 150,
                    width:400,
                    fit: BoxFit.fitHeight,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    myproductList[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                  ),
                  Text(myproductList[index].time),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}