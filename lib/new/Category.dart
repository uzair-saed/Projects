import 'package:first/new/Pent.dart';
import 'package:first/new/jacket.dart';
import 'package:first/new/shirt.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Category());
}

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: category(title: 'Ecommerce.com'),
    );
  }
}

class category extends StatefulWidget {
  String title = "Customer DATA";
  category({required this.title});

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {

  List<Widget> listOfWidgets = [
    Jacket(),
    Pent(),
    Shirt()
  ];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.red,
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: TabBar(
            unselectedLabelColor: Colors.black38,
            onTap: (index){
              print(index);
            },
            tabs: [
              Tab(
                icon: Icon(Icons.production_quantity_limits,color: Colors.green,size: 12,),
                child: Text("Shirts",style: TextStyle(color: Colors.green,fontSize: 12),),
              ),
              Tab(
                icon: Icon(Icons.category,color: Colors.green,size: 12,),
                child: Text("Pents",style: TextStyle(color: Colors.green,fontSize: 12),),
              ),
              Tab(
                icon: Icon(Icons.production_quantity_limits,color: Colors.green,size: 12,),
                child: Text("Jackets",style: TextStyle(color: Colors.green,fontSize: 12),),
              ),
            ],
          ),
          body: TabBarView(
            children: [
              Center(
                  child: shirt(title: "Ecommerce.com")
              ),
              Center(
                child: pent(title: "Ecommerce.com"),
              ),
              Center(
                child: jacket(title: "Ecommerce.com"),
              )
            ],
          ),
        ),
      ),
    );
    
    
    
    // return Scaffold(
    //   body: Center(
    //       child: listOfWidgets[index]
    //   ),
    // );
  }
}

class Jacket extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: jacket(title: "Ecommerce.com"),
      ),
    );
  }
}

class Shirt extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: shirt(title: "Ecommerce.com"),
      ),
    );
  }
}

class Pent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: pent(title: "Ecommerce.com"),
      ),
    );
  }
}