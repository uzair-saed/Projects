import 'package:flutter/material.dart';
import 'package:first/products.dart';


void main(){
  runApp(Shirt());
}

class Shirt extends StatelessWidget {
  const Shirt({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: shirt(title: 'Ecommerce.com'),
    );
  }
}

class shirt extends StatefulWidget {
  String title = "Customer DATA";
  shirt({required this.title});

  @override
  State<shirt> createState() => _shirtState();
}

class _shirtState extends State<shirt> {
  List <Product> myproductList=[
    Product(
        name: "black shirt",
        time: "9.99",
        url: "https://cdn.shopify.com/s/files/1/0646/2563/9639/products/Classic-Black-Satin-Shirt-Brumano-Pakistan-6.jpg?v=1656323884"
    ),
    Product(
        name: "t-shirt",
        time: "4.99",
        url: "https://i.insider.com/5e46ff1d3b62b74e484ce965?width=1000&format=jpeg&auto=webp"
    ),
    Product(
        name: "Polo",
        time: "22.24",
        url: "https://www.polojeans.pk/wp-content/uploads/2021/06/10.jpg"
    ),
    Product(
        name: "Printed",
        time: "89.76",
        url: "https://cdn.shopify.com/s/files/1/0535/0506/5136/products/Category5.jpg?v=1661855936https://cdn.shopify.com/s/files/1/0535/0506/5136/products/Category5.jpg?v=1661855936https://cdn.shopify.com/s/files/1/0535/0506/5136/products/Category5.jpg?v=1661855936https://cdn.shopify.com/s/files/1/0646/2563/9639/products/Black-Blue-Viscose-Printed-Half-Sleeve-Shirt-Brumano-Pakistan-2_1800x1800.jpg?v=1656324029"
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