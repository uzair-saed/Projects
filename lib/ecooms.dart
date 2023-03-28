// import 'package:first/customer.dart';
// import 'package:first/products.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Ecommerce.com',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: ecommerce(title: 'Ecommerce.com'),
//     );
//   }
// }
//
// class ecommerce extends StatefulWidget {
//   String title = "Ecommerce app";
//   ecommerce({required this.title});
//
//   @override
//   State<ecommerce> createState() => _ecommerceState();
// }
//
// class _ecommerceState extends State<ecommerce> {
//   int index=0;
//   List<Widget> listOfWidgets = [
//     Text("Home", style: TextStyle(fontSize: 30)),
//     MyProducts(),
//     ContactUs()
//   ];
//   List title =[
//     "Ecommerce.com",
//     "Products",
//     "Customer"
//   ];
//
//   TextEditingController productname = TextEditingController();
//   TextEditingController productdescription = TextEditingController();
//   TextEditingController producturl = TextEditingController();
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.black,
//         selectedFontSize: 18,
//         selectedItemColor: Colors.yellow,
//         unselectedItemColor: Colors.white,
//         elevation: 30,
//         type: BottomNavigationBarType.fixed,
//         currentIndex: index,
//         onTap: (index){
//           setState(() {
//             this.index=index;
//           });
//         },
//         items: const [
//           BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//             label: "Home"
//           ),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.shop),
//           label: "Products"
//           ),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.people),
//               label: "Customer")
//         ],
//       ),
//       drawer: Drawer(
//         backgroundColor: Colors.yellow,
//           child: ListView(
//             children: [
//               DrawerHeader(
//                 decoration: BoxDecoration(
//                     color: Colors.black,
//                 ),
//
//                 child: Container(
//                   width: 45,
//                   height: 50,
//                   decoration: BoxDecoration(
//                     shape:BoxShape.circle,
//                     color: Colors.white,
//                       image: DecorationImage(image: AssetImage("car1.jpg"))
//                   ),
//                 ),
//               ),
//               ListTile(
//                   leading: Icon(Icons.home,color: Colors.black),
//                   title: Text("Home",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
//                   onTap:(){
//                     Navigator.pop(context);
//                     setState(() {
//                       this.index=0;
//                     });
//                   }
//               ),
//               ListTile(
//                 leading: Icon(Icons.shop,color: Colors.black),
//                 title: Text("Products",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
//                   onTap:(){
//                     Navigator.pop(context);
//                     setState(() {
//                       this.index=1;
//                     });
//                   }
//                   ),
//               ListTile(
//                   leading: Icon(Icons.people,color: Colors.black),
//                   title: Text("Customer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
//                   onTap:(){
//                     Navigator.pop(context);
//                     Navigator.push(context,
//                       MaterialPageRoute(builder: (ctx) => customer(title: "customer")),
//                     );
//                   }
//               ),
//               ListTile(
//                 leading: Icon(Icons.phone,color: Colors.black),
//                 title: Text("Contact Us",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
//               ),
//             ],
//           )
//       ),
//       appBar: AppBar(
//         title: Text("${title[index]}",
//             style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.yellow)),
//         backgroundColor: Colors.black,
//         elevation: 10,
//       ),
//       body: Center(child: listOfWidgets[index]),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//     );
//   }
// }
// class MyProducts extends StatefulWidget {
//   @override
//   State<MyProducts> createState() => MyProductsState();
// }
//
// class MyProductsState extends State<MyProducts> {
//   @override
//
//   TextEditingController productname = TextEditingController();
//   TextEditingController productdescription = TextEditingController();
//   TextEditingController producturl = TextEditingController();
//   TextEditingController productprice = TextEditingController();
//
//
//   void showModelBottomSheetFloatingActionButton() {
//     productname.clear();
//     productdescription.clear();
//     producturl.clear();
//     productprice.clear();
//
//     // showModalBottomSheet(
//     //   context: context,
//     //   builder: (ctx) => Container(
//     //     child: Column(
//     //       children: [
//     //         TextField(
//     //           controller: productname,
//     //           decoration: InputDecoration(labelText: "Product Name"),
//     //         ),
//     //         TextField(
//     //           controller: productdescription,
//     //           decoration: InputDecoration(
//     //             labelText: "Product Description",
//     //           ),
//     //         ),
//     //         TextField(
//     //           controller: productprice,
//     //           decoration: InputDecoration(
//     //             labelText: "Product Price",
//     //           ),
//     //         ),
//     //         TextField(
//     //           controller: producturl,
//     //           decoration: InputDecoration(labelText: "Product Price"),
//     //         ),
//     //         ElevatedButton(
//     //           onPressed: () {
//     //             String temptitle = productname.text;
//     //             String tempdescripton = productdescription.text;
//     //             String tempurl = producturl.text;
//     //             int tempprice = productprice.text as int,
//     //
//     //             setState(() {
//     //               myproductList.add(
//     //                 Product(name: temptitle, description: tempdescripton, url: tempurl, price: tempprice)
//     //               );
//     //             });
//     //             productname.clear();
//     //             productdescription.clear();
//     //             producturl.clear();
//     //
//     //             Navigator.of(context).pop();
//     //           },
//     //           child: Text("Submit"),
//     //         )
//     //       ],
//     //     ),
//     //   ),
//     // );
//   }
//
//   List<Product> myproductList = [
//     Product(
//         name: "Marker",
//         description: "This is a permanent Marker",
//         url: "https://m.media-amazon.com/images/I/41JSrvYetLL._AC_.jpg",
//         price: 100
//     ),
//     Product(name: "Car",
//         description: "Honda RS Turbo",
//         url: "https://stimg.cardekho.com/images/carexteriorimages/930x620/Lamborghini/Urus/4418/Lamborghini-Urus-V8/1621927166506/front-left-side-47.jpg",
//         price: 200
//     ),
//     Product(name: "Bike",
//         description: "Yamaha YBR",
//         url: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Yamaha_YBR125_%28Fuel_Injection_-_EU_Spec%29.JPG/1200px-Yamaha_YBR125_%28Fuel_Injection_-_EU_Spec%29.JPG",
//         price: 300
//     ),
//     Product(name: "Shopping Bag",
//         description: "2 Sets of Bag",
//         url: "data:image/jpeg;base64,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",
//         price: 200
//     ),
//     Product(name: "Watch",
//         description: "MEN Watch",
//         url: "https://cdn.shopify.com/s/files/1/0003/5815/4293/products/Lala360sainless2_1200x.png?v=1658699137",
//         price: 200
//     ),
//     Product(name: "LED",
//         description: "48inch SONY",
//         url: "https://miro.medium.com/max/1200/1*xjGs6ZfOyN2NkAlNp00eHg.jpeg",
//         price: 200
//     ),
//   ];
//
//
//
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemBuilder: (ctn, index) => ListTile(
//
//         onLongPress: (){
//           productname.text = myproductList[index].name;
//           productdescription.text = myproductList[index].description;
//           producturl.text=myproductList[index].url;
//           productprice.text=myproductList[index].price.toString();
//
//           showModalBottomSheet(
//               context: context,
//               builder: (ctx) {
//                 return Container(
//                   padding: EdgeInsets.only(top: 10),
//                   color: Colors.black,
//                   child: Column(
//                     children: [
//                       Text("DATA UPDATE" ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
//                       Card(
//                           margin: EdgeInsets.all(10),
//                           elevation: 10,
//                           color: Colors.white,
//                           child: Padding(
//                             padding: const EdgeInsets.all(10),
//                             child: TextField(
//                               controller: productname,
//                               decoration: InputDecoration(
//                                 border: OutlineInputBorder(),
//                                 label: Text("Product Name"),
//                               ),
//                             ),
//                           )),
//                       Card(
//                           margin: EdgeInsets.all(10),
//                           elevation: 10,
//                           color: Colors.white,
//                           child: Padding(
//                             padding: const EdgeInsets.all(10),
//                             child: TextField(
//                               controller: productdescription,
//                               decoration: InputDecoration(
//                                 border: OutlineInputBorder(),
//                                 alignLabelWithHint: true,
//                                 label: Text("Product Description"),
//                               ),
//                             ),
//                           )),
//                       Card(
//                           margin: EdgeInsets.all(10),
//                           elevation: 10,
//                           color: Colors.white,
//                           child: Padding(
//                             padding: const EdgeInsets.all(10),
//                             child: TextField(
//                               controller: productprice,
//                               decoration: InputDecoration(
//                                 border: OutlineInputBorder(),
//                                 alignLabelWithHint: true,
//                                 label: Text("Product Price"),
//                               ),
//                             ),
//                           )),
//                       Card(
//                           margin: EdgeInsets.all(10),
//                           elevation: 10,
//                           color: Colors.white,
//                           child: Padding(
//                             padding: const EdgeInsets.all(10),
//                             child: TextField(
//                               controller: producturl,
//                               decoration: InputDecoration(
//                                 border: OutlineInputBorder(),
//                                 label: Text("Product Url"),
//                               ),
//                             ),
//                           )),
//                       Container(
//                         width: 200,
//                         child: ElevatedButton(
//                             onPressed: () {
//                               setState(() {
//
//                                 myproductList[index].name = productname.text;
//                                 myproductList[index].description = productdescription.text;
//                                 myproductList[index].url = producturl.text;
//                                 myproductList[index].price=productprice.text as int;
//
//
//                                 producturl.clear();
//                                 productname.clear();
//                                 productdescription.clear();
//                                 productprice.clear();
//                                 Navigator.of(context).pop();
//                               });
//                             },
//                             style: ElevatedButton.styleFrom(backgroundColor: Colors.white,minimumSize: Size(150, 40)),
//                             child: Text("UPDATE",
//                                 style:
//                                 TextStyle(fontWeight: FontWeight.bold,
//                                     color: Colors.black))),
//                       )
//                     ],
//                   ),
//                 );
//               },
//               );
//         },
//         leading:
//         Container(
//           width: 100,
//           height: 100,
//           child:
//           Image.network(myproductList[index].url.toString()),
//         ),
//         title:
//         Text("${myproductList[index].name.toString()}"),
//         subtitle: Text(
//             "${myproductList[index].description.toString()}+${myproductList[index].price}"),
//         trailing: IconButton(
//           icon: Icon(Icons.delete,color: Colors.red,),
//           onPressed: () {
//             showDialog(
//               context: context,
//               builder: (BuildContext context) {
//                 return AlertDialog(
//                   title: Text("Alert",style: TextStyle(
//                       color: Colors.red,fontWeight: FontWeight.bold),),
//                   content: Text("Are You Sure?"),
//                   actions: [
//                     TextButton(
//                       child: Text("YES"),
//                       onPressed: (){
//                         Navigator.of(context).pop();
//                         final snackBar=SnackBar(content: Text("${myproductList[index].name} has been Deleted.",
//                           style: TextStyle(color: Colors.black),),
//                           backgroundColor: Colors.yellow,
//                           action: SnackBarAction(
//                             label: "Hide",
//                             onPressed: (){
//                             },
//                           ),
//                         );
//                         ScaffoldMessenger.of(context).showSnackBar(snackBar);
//                       setState(() {
//                         myproductList.removeAt(index);
//                       });
//                       }
//                     ),
//                     TextButton(
//                         child: Text("NO"),
//                         onPressed: (){
//                           Navigator.of(context).pop();
//                         }
//                     ),
//                   ],
//                 );
//               },
//             );
//           },
//         ),
//       ),
//       itemCount: myproductList.length,
//     );
//   }
// }
//
// class ContactUs extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Container(
//         child: customer(title: "Ecommerce.com"),
//       ),
//     );
//   }
// }