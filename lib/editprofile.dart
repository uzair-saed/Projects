import 'package:first/Login/loginlist.dart';
import 'package:first/new/mainfile.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Editprofile());
}

class Editprofile extends StatelessWidget {
  Editprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: editprofile(title: 'login'),
    );
  }
}
class editprofile extends StatefulWidget {
  String title = "loginfile";
  editprofile({required this.title});
  
  @override
  State<editprofile> createState() => _editprofileState();
}

class _editprofileState extends State<editprofile> {
  @override

  List<Loginlist> datalist=[
    Loginlist(
        username: "uzair",
        email: "uzair123@.com",
        password: "123",
        gender: 'male')
  ];

  bool isreadonly=true;
  int index=0;
  TextEditingController text1 = TextEditingController();
  TextEditingController text2 = TextEditingController();
  TextEditingController text3 = TextEditingController();

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Edit Profile"),
            actions:[
              IconButton(
                icon: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
                onPressed: () {
                  text1.text = datalist[index].username;
                  text2.text = datalist[index].email;
                  text3.text = datalist[index].password;
                  },
              )
            ],
          ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),

              TextField(
                readOnly: isreadonly,
                controller: text1,
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.person, color: Colors.green),
              hintText: "max",
              labelText: "Username",
              ),
            ),
              SizedBox(
                height: 30,
              ),
              TextField(
                readOnly: isreadonly,
                controller: text2,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.mail, color: Colors.green),
                  hintText: "max@yahoo.com",
                  labelText: "Email",
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                readOnly: isreadonly,
                controller: text3,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock, color: Colors.green),
                  hintText: "h***lo",
                  labelText: "Password",
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,minimumSize: Size(160, 45)),
                      onPressed: (){
                    setState(() {
                      isreadonly=false;
                    });
                  }, child: Text("Edit")),

                  SizedBox(
                    width: 20,
                  ),

                  ElevatedButton(style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,minimumSize: Size(160, 45)),
                      onPressed: (){
                    setState(() {
                      datalist[index].username=text1.text;
                      datalist[index].email=text2.text;
                      datalist[index].password=text3.text;
                      isreadonly=true;
                      print("${datalist[index].username}\n${datalist[index].email}\n${datalist[index].password}");
                    });
                  }, child: Text("Update")),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,minimumSize: Size(160, 45)),
                  onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                    return mainfile(title: "login");
                  }),);
              },
                  child: Text("Cancel")),
            ],
          ),
        ),
      )
    );
  }
}
