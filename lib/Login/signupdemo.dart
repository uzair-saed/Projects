import 'package:first/Login/logindemo.dart';
import 'package:flutter/material.dart';
import 'package:first/Login/loginlist.dart';

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
  int _value=0;

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
                  Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: _value,
                          onChanged: (value){
                            signup.mydatalist[index].gender="Male";
                        setState(() {
                          _value = value!;
                        });
                      }),
                      SizedBox(width: 20),
                      Text("Male",style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 2,
                          groupValue: _value,
                          onChanged: (value){
                            signup.mydatalist[index].gender="Female";
                            setState(() {
                              _value = value!;
                            });
                          }),
                      SizedBox(width: 20),
                      Text("Female",style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.green,minimumSize: Size(160, 45)),
                      onPressed: (){
                    String tempname=name.text;
                    String tempemail=email.text;
                    String temppass=password.text;
                    String tempgen=_value.toString();

                    signup.mydatalist.add(
                        Loginlist(
                            username: tempname,
                            email: tempemail,
                            password: temppass,
                            gender: tempgen
                        )
                    );
                    name.clear();
                    email.clear();
                    password.clear();
                    setState(() {
                      print("${signup.mydatalist[index].username +"\n"
                          +signup.mydatalist[index].email+"\n"
                          +signup.mydatalist[index].password+"\n"
                          +signup.mydatalist[index].gender}");
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
                  // Switch(
                  //   value: state,
                  //   onChanged: (bool state) {
                  //     setState(() {
                  //       print(state);
                  //     });
                  //   },
                  // ),
                ],
              ),
            ),
          ],
        ),
    ),
    );
  }
}