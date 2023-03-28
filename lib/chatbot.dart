import 'package:flutter/material.dart';
import 'package:first/products.dart';


void main(){
  runApp(Chatbot());
}

class Chatbot extends StatelessWidget {
  const Chatbot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: chatbot(title: 'Ecommerce.com'),
    );
  }
}

class chatbot extends StatefulWidget {
  String title = "Customer DATA";
  chatbot({required this.title});

  @override
  State<chatbot> createState() => _chatbotState();
}

class _chatbotState extends State<chatbot> {
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
        name: "Liwis",
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
                border: Border.fromBorderSide(BorderSide(width: 0.5)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    myproductList[index].url,
                    height: 150,
                    width:400,
                    fit: BoxFit.cover,
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