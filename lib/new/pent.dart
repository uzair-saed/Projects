import 'package:flutter/material.dart';
import 'package:first/products.dart';


void main(){
  runApp(Pent());
}

class Pent extends StatelessWidget {
  const Pent({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: pent(title: 'Ecommerce.com'),
    );
  }
}

class pent extends StatefulWidget {
  String title = "Customer DATA";
  pent({required this.title});

  @override
  State<pent> createState() => _pentState();
}

class _pentState extends State<pent> {
  List <Product> myproductList=[
    Product(
        name: "Chinos",
        time: "9.99",
        url: "https://static-01.daraz.pk/p/c0b31fc6a05ef8dc2782c0a448ca2530.jpg"
    ),
    Product(
        name: "Cotton",
        time: "4.99",
        url: "https://static-01.daraz.pk/p/f2cd33567ffd254642a0edc5c31f9cfe.jpg"
    ),
    Product(
        name: "Denim",
        time: "22.24",
        url: "https://cdn.shopify.com/s/files/1/0553/3774/6621/products/MD2075-BLU_2_800x.jpg?v=1666789439"
    ),
    Product(
        name: "Trouser",
        time: "89.76",
        url: "https://cdn.shopify.com/s/files/1/0363/0700/9667/products/navy-pleat.jpg?v=1607076292"
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