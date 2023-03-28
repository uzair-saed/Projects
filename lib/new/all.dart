import 'package:flutter/material.dart';
import 'dart:math';


void main(){
  runApp(All());
}
class Product {
  String name;
  String time;
  String url;
  String prop;

  Product({
    required this.name,
    required this.time,
    required this.url,
    required this.prop
  });
}


class All extends StatelessWidget {
  const All({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: all(title: 'Ecommerce.com'),
    );
  }
}

class all extends StatefulWidget {
  String title = "Customer DATA";
  all({required this.title});

  @override
  State<all> createState() => _allState();
}

class _allState extends State<all> {
  List myproductList=[
    Product(
        name: "black shirt",
        time: "9.99",
        url: "https://cdn.shopify.com/s/files/1/0646/2563/9639/products/Classic-Black-Satin-Shirt-Brumano-Pakistan-6.jpg?v=1656323884",
        prop: "shirt"
    ),
    Product(
        name: "t-shirt",
        time: "4.99",
        url: "https://i.insider.com/5e46ff1d3b62b74e484ce965?width=1000&format=jpeg&auto=webp",
        prop: "shirt"
    ),
    Product(
        name: "Polo",
        time: "22.24",
        url: "https://www.polojeans.pk/wp-content/uploads/2021/06/10.jpg",
        prop: "shirt"
    ),
    Product(
        name: "Printed",
        time: "89.76",
        url: "https://cdn.shopify.com/s/files/1/0646/2563/9639/products/Black-Blue-Viscose-Printed-Half-Sleeve-Shirt-Brumano-Pakistan-2_1800x1800.jpg?v=1656324029",
        prop: "Shirt"
    ),
    Product(
        name: "Chinos",
        time: "9.99",
        url: "https://static-01.daraz.pk/p/c0b31fc6a05ef8dc2782c0a448ca2530.jpg",
        prop: "Pent"
    ),
    Product(
        name: "Cotton",
        time: "4.99",
        url: "https://static-01.daraz.pk/p/f2cd33567ffd254642a0edc5c31f9cfe.jpg",
        prop: "Pent"
    ),
    Product(
        name: "Denim",
        time: "22.24",
        url: "https://cdn.shopify.com/s/files/1/0553/3774/6621/products/MD2075-BLU_2_800x.jpg?v=1666789439",
        prop: "Pent"
    ),
    Product(
        name: "Trouser",
        time: "89.76",
        url: "https://cdn.shopify.com/s/files/1/0363/0700/9667/products/navy-pleat.jpg?v=1607076292",
        prop: "Pent"
    ),
    Product(
        name: "Jacket",
        time: "99.99",
        url: "https://static-01.daraz.pk/p/5a2449195e82e3c7b1a5f0a9870dbd18.jpg",
        prop: "Jacket"
    ),
    Product(
        name: "Sleveless",
        time: "40.99",
        url: "https://cdn.shopify.com/s/files/1/0264/3440/4461/products/OLIVE_PUFFER_1_512x768.jpg?v=1655719164",
        prop: "Jacket"
    ),
    Product(
        name: "Puffer",
        time: "30.24",
        url: "https://cdn.shopify.com/s/files/1/0144/7827/8739/products/DSC06266_1600x.jpg?v=1669643112",
        prop: "Jacket"
    ),
    Product(
        name: "Leather",
        time: "89.76",
        url: "https://cdn.shopify.com/s/files/1/0535/0506/5136/products/Category5.jpg?v=1661855936",
        prop: "Jacket"
    ),
  ];

  var random = new Random();
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
        ),
        itemCount: myproductList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(4, 28, 16, 1),
                  borderRadius: new BorderRadius.circular(10.0)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    myproductList[index].url,
                    height: 210,
                    width:220,
                    fit: BoxFit.fitHeight,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    myproductList[index].name,
                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.white),
                  ),
                  Text(myproductList[index].time,
                    style: TextStyle(color: Colors.purpleAccent,fontWeight: FontWeight.bold),),

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}