import 'package:first/listchat.dart';
import 'package:flutter/material.dart';
import 'package:first/chatbot.dart';

void main(){
  runApp(apbar());
}
class apbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
       length: 3,
       child: Scaffold(
      appBar: AppBar(
        title: Text("ChatBot"),
        bottom: TabBar(
          unselectedLabelColor: Colors.black12,
          onTap: (index){
            print(index);
          },
          tabs: [
            Tab(
              icon: Icon(Icons.chat),
              text: "Chats",
            ),
            Tab(
              icon: Icon(Icons.group),
              text: "Groups",
            ),
            Tab(
              icon: Icon(Icons.call),
              text: "Calls",
            ),
          ],
        ),
      ),
      body: TabBarView(
        children: [
          Center(
            child: chatbot(title: "Ecommerce.com"),
          ),
          Center(
            child: listchat(title: "Ecommerce.com",),
          ),
          Center(
            child: Text("index 3"),
          ),
        ],
      ),
      ),
     ),
    );
  }
}
