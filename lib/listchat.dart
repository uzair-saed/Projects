import 'package:flutter/material.dart';
import 'package:first/products.dart';


void main() {
  runApp(const Listchat());
}

class Listchat extends StatelessWidget {
  const Listchat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: listchat(title: 'Ecommerce.com'),
    );
  }
}

class listchat extends StatefulWidget {
  String title = "Customer DATA";
  listchat({required this.title});

  @override
  State<listchat> createState() => _listchatState();
}

class _listchatState extends State<listchat> {
  List <Product> myproductList=[
    Product(
        name: "John",
        time: "23.03",
        url: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Pierre-Person.jpg/800px-Pierre-Person.jpg"
    ),
    Product(
        name: "Musk",
        time: "23.03",
        url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBLq94jSrrW2e3_jpucwE90GNFv5c1qUqdWw&usqp=CAU"
    ),
    Product(
        name: "Tom",
        time: "23.03",
        url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoKJPxxwPeNvISnBbZsZHe887Ws0FnrL7o0w&usqp=CAU"
    ),
    Product(
        name: "liwis",
        time: "23.03",
        url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQv0xQRyf9xBk771WCHKkKLglstduee4J28VQ&usqp=CAU"
    ),
    Product(
      name: "Marker",
      time: "21:21",
      url: "https://m.media-amazon.com/images/I/41JSrvYetLL._AC_.jpg",
    ),
    Product(name: "Car",
      time: "22:22",
      url: "https://stimg.cardekho.com/images/carexteriorimages/930x620/Lamborghini/Urus/4418/Lamborghini-Urus-V8/1621927166506/front-left-side-47.jpg",
    ),
    Product(name: "Bike",
      time: "16:21",
      url: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Yamaha_YBR125_%28Fuel_Injection_-_EU_Spec%29.JPG/1200px-Yamaha_YBR125_%28Fuel_Injection_-_EU_Spec%29.JPG",
    ),
    Product(name: "Shopping Bag",
      time: "01:21",
      url: "https://cdn.shopify.com/s/files/1/2531/5420/products/WhatsAppImage2022-03-22at11.27.02AM_1_1200x.jpg?v=1647951557"
    ),
    Product(name: "Watch",
      time: "00:21",
      url: "https://cdn.shopify.com/s/files/1/0003/5815/4293/products/Lala360sainless2_1200x.png?v=1658699137",
    ),
    Product(name: "LED",
      time: "12:00",
      url: "https://miro.medium.com/max/1200/1*xjGs6ZfOyN2NkAlNp00eHg.jpeg",
    ),
  ];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: myproductList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading:
            Container(
            alignment: Alignment.topCenter,
            width: 40,
            height: 400,
            decoration: BoxDecoration(
              border: Border.fromBorderSide(BorderSide(width: 0.5)),
                shape:BoxShape.circle,
                image: DecorationImage(image: NetworkImage("${myproductList[index].url}"),
                ),
            ),
          ),
            title: Text(myproductList[index].name),
            subtitle: Text(myproductList[index].time),
            trailing: IconButton(
              icon: Icon(Icons.call,color: Colors.green,),
              onPressed: () {
              },
            ),
          );
        },
      )
    );
  }
}