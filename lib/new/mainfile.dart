import 'package:first/Login/logindemo.dart';
import 'package:first/customer.dart';
import 'package:first/editprofile.dart';
import 'package:first/listchat.dart';
import 'package:first/new/Category.dart';
import 'package:first/new/all.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(const Mainfile());
}
class Mainfile extends StatelessWidget {
  const Mainfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: mainfile(title: 'login'),
    );
  }
}
class mainfile extends StatefulWidget {
  String title = "login";
  mainfile({required this.title});

  @override
  State<mainfile> createState() => _mainfileState();
}

class _mainfileState extends State<mainfile> {
  @override



  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          drawer: Drawer(
              backgroundColor: Color.fromRGBO(4, 28, 16, 1),
              child: ListView(
                children: [
                  DrawerHeader(
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),

                    child: Container(
                      width: 45,
                      height: 50,
                      decoration: const BoxDecoration(
                          shape:BoxShape.circle,
                          color: Colors.white,
                          image: DecorationImage(image: AssetImage("car1.jpg"))
                      ),
                    ),
                  ),
                  ListTile(
                      leading: const Icon(Icons.home,color: Colors.black),
                      title: const Text("Home",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                      onTap:(){
                        Navigator.pop(context);
                        // setState(() {
                        //   this.index=0;
                        // });
                      }
                  ),
                  ListTile(
                      leading: const Icon(Icons.shop,color: Colors.black),
                      title: const Text("Products",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                      onTap:(){
                        Navigator.pop(context);
                        // setState(() {
                        //   this.index=1;
                        // });
                      }
                  ),
                   ListTile(
                      leading: Icon(Icons.people,color: Colors.black),
                      title: Text("Customer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                      onTap:(){
                        Navigator.pop(context);
                        Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => customer(title: "customer")),
                        );
                      }
                  ),
                  ListTile(
                    leading: Icon(Icons.phone,color: Colors.black),
                    title: Text("Edit Profile",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                        return editprofile(title: "login");
                      }),);
                    },
                  ),
                   ListTile(
                    leading: Icon(Icons.logout,color: Colors.black),
                    title: Text("Logout",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                        return logindemo(title: "login");
                      }),);
                    },
                  ),
                ],
              )
          ),
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(4, 28, 16, 1),
            title: Text("Ecom APP",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 24)),
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              onTap: (index){
                print(index);
              },
              tabs: const [
                Tab(
                  icon: Icon(Icons.shop,
                  color: Colors.green),
                  child: Text("Products",style: TextStyle(color: Colors.white70),),
                ),
                Tab(
                  icon: Icon(Icons.person,
                      color: Colors.green),
                  child: Text("Customer",style: TextStyle(color: Colors.white70),),
                ),
                // Tab(
                //   icon: Icon(Icons.more),
                //   text: "Edit",
                // ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: appbar(),
              ),
              Center(
                child: listchat(title: "Ecommerce.com"),
              ),
              // Center(
              //   child: editprofile(title: "login")
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class appbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: TabBar(
            unselectedLabelColor: Colors.black38,
              onTap: (index){
                print(index);
              },
              tabs: const [
                Tab(
                  icon: Icon(Icons.production_quantity_limits,color: Colors.blueGrey,),
                  child: Text("All Products",style: TextStyle(color: Colors.blueGrey),),
                ),
                Tab(
                  icon: Icon(Icons.category_rounded,color: Colors.blueGrey,),
                  child: Text("Categories",style: TextStyle(color: Colors.blueGrey),),
                ),
              ],
            ),
          body: TabBarView(
            children: [
              Center(
                child: all(title: "Ecommerce.com")
              ),
              Center(
                child: category(title: "Ecommerce.com"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
