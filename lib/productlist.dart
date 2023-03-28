// import 'package:flutter/material.dart';
// import 'package:first/products.dart';
//
// void main(){
//   runApp(productlist());
// }
//
// class productlist extends StatelessWidget {
//
//   List<Product> listofProducts=[
//     Product(
//         name: "name",
//         description: "description",
//         url: "car1.jpg")
//   ];
//   int counter=0;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           appBar: AppBar(
//             title: Text("Demo"),
//           ),
//           backgroundColor: Colors.black26,
//           body: GridView(
//         //Outside Container(s) Spaceing
//         padding: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 5),
//         gridDelegate:
//         SliverGridDelegateWithMaxCrossAxisExtent(
//           //Space between containers
//           maxCrossAxisExtent: 300 ,
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10
//         ),
//         children: listofProducts.map((Product) =>
//
//             Container(
//               height: 90,
//           width: 90,
//           color: Colors.black38,
//           child: Column(
//
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Image(
//                 height: 150,
//                 width: 600,
//                 image: AssetImage("${Product.url}"),
//               ),
//               Text("Name: ${Product.name}",
//                 style:
//                 TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 16),
//               ),
//               Text("des: ${Product.description}",
//                 style:
//                 TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 16),
//               ),
//
//             ],
//           ),
//         ),).toList(),
//       ),
//       )
//     );
//   }
// }
