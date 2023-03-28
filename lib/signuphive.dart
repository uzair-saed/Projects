import 'package:first/Login/logindemo.dart';
import 'package:flutter/material.dart';
import 'package:first/Login/loginlist.dart';
import 'package:hive/hive.dart';

void main() {
  runApp(Signup());
}

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: signup(title: 'login'),
    );
  }
}
class signup extends StatefulWidget {
  String title = "loginfile";
  signup({required this.title});
  static List<Loginlist> mydatalist=[];


  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override

  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController email =TextEditingController();

  int index=0;
  bool state =false;

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
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
                  Text("Registeration",style:
                  TextStyle(
                      fontSize: 28,fontWeight: FontWeight.bold,color: Colors.green
                  ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextField(
                    readOnly: false,
                    controller: name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person, color: Colors.green),
                      label: Text("Username"),
                      hintText: 'max123',
                    ),
                    textAlign: TextAlign.start,
                    cursorColor: Colors.green,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: email,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person, color: Colors.green),
                      label: Text("Email"),
                      hintText: 'uzair@xyz.com',
                    ),
                    textAlign: TextAlign.start,
                    cursorColor: Colors.green,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: password,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock, color: Colors.green),
                      label: Text("Password"),
                    ),
                    textAlign: TextAlign.start,
                    cursorColor: Colors.green,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.green,minimumSize: Size(160, 45)),
                      onPressed: () async {

                        var box = await Hive.openBox("MyData");
                        await box.put("login", [name , password]);
                        print("${box.get("login")}");

                        setState(() {
                          name.clear();
                          email.clear();
                          password.clear();
                        });
                      },
                      child: Text("Signup",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                  SizedBox(
                    height: 40,
                  ),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                      return logindemo(title: "login");
                    }),);
                  }, child: Text("Click here to Login",style: TextStyle(color: Colors.black),)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}