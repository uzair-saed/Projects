import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

void main() async {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: messagedemo()));
}
class messagedemo extends StatefulWidget {
  const messagedemo({Key? key}) : super(key: key);

  @override
  State<messagedemo> createState() => _messagedemoState();
}

class _messagedemoState extends State<messagedemo> {
  @override

  TextEditingController mytext = TextEditingController();
  List mymsglist = [];
  int index =0;


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
            padding: EdgeInsets.all(15),
            color: Colors.green,
            alignment: Alignment.topCenter,
            child: Text("Your Messages here",
              style: TextStyle(color: Colors.black),),
          ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
            alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: mytext,
                      decoration: InputDecoration(
                        hintText: "Text Here",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      mymsglist.add(mytext);
                      setState(() {
                        print("${mymsglist[index]}");
                        mytext.clear();
                      });
                    },
                    icon: Icon(Icons.send,color: Colors.green,),
                  ),
                ],
              )
          )
        ],
      ),
    );
  }
}
