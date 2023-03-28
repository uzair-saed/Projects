import 'package:first/Login/signupdemo.dart';
import 'package:first/future.dart';
import 'package:first/new/mainfile.dart';
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
      home: future()
    );
  }
}
class logindemo extends StatefulWidget {
  String title = "loginfile";
  logindemo({required this.title});

  @override
  State<logindemo> createState() => _logindemoState();
}

class _logindemoState extends State<logindemo> {
  @override

  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();

  int index=0;
  bool passwordVisible=true;

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              width: 600,
              child: Column(
                children: [
                  Text("Login Screen",style:
                  TextStyle(
                    fontSize: 28,fontWeight: FontWeight.bold,color: Colors.green
                  ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextField(
                    controller: name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person, color: Colors.green),
                      label: Text("Username"),
                      hintText: 'max',
                    ),
                    textAlign: TextAlign.start,
                    cursorColor: Colors.green,
                  ),
                  SizedBox(
                    width: 100,
                    height: 20,
                  ),
                  TextField(
                    obscureText: passwordVisible,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock, color: Colors.green),
                      hintText: "Password",
                      labelText: "Password",
                      suffixIcon: IconButton(
                        icon: Icon(passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(
                                () {
                              passwordVisible = !passwordVisible;
                            },
                          );
                        },
                      ),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,minimumSize: Size(160, 45)),
                          onPressed: (){
                            // String tempname=name.text;
                            // String temppass=password.text;

                            setState(() {
                              for(int i = 0; i<signup.mydatalist.length; i++){
                                signup.mydatalist[i].username == name.text;
                                signup.mydatalist[i].password == password.text;
                                Navigator.push(context, MaterialPageRoute(builder: (ctx)=>mainfile(title: 'sdd',)));
                              }
                              // if(tempname == mydatalist[index].username.toString() ||
                              //     temppass == mydatalist[index].password.toString()){
                              //   Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                              //     return mainfile(title: "login");
                              //   }),);
                              // }else{
                              //   print("Login failed");
                              // }
                            });
                          }, child: Text("login",
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18))),

                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepOrange,minimumSize: Size(160, 45)),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                              return signup(title: "login");
                            }),);
                          }, child: Text("Signup",
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18))),
                    ],
                  ),
                  // ElevatedButton(
                  //     style: ElevatedButton.styleFrom(backgroundColor: Colors.green,minimumSize: Size(160, 45)),
                  //     onPressed: (){
                  //   // String tempname=name.text;
                  //   // String temppass=password.text;
                  //   Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  //     return mainfile(title: "login");
                  //   }),);
                  //   // setState(() {
                  //   //   if(tempname==mydatalist[index].username){
                  //   //     print("ok Test1");
                  //   //   }
                  //   //   else{
                  //   //     print("fail Test1");
                  //   //   }
                  //   //   if(temppass==mydatalist[index].password){
                  //   //     print("ok Test2");
                  //   //   }
                  //   //   else{
                  //   //     print("fail Test2");
                  //   //   }
                  //   //   name.clear();
                  //   //   password.clear();
                  //   //
                  //   //   mainfile(title: "login");
                  //   // });
                  // }, child: Text("login",
                  //   style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18))),
                  SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}