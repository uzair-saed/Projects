import 'dart:convert';
import 'package:first/DataFetch/comments.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() async {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: userpost()));
}

class userpost extends StatefulWidget {
  const userpost({Key? key}) : super(key: key);

  @override
  State<userpost> createState() => _userpostState();
}

class _userpostState extends State<userpost> {
  @override

  List user=[];

  void getData() async {
    http.Response response =
    await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    if (response.statusCode == 200) {
      setState(() {
        user = jsonDecode(response.body);
      });
    }
  }

  void initState() {
    super.initState();
    getData();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Posts"),
      ),
      body: ListView.builder(
          itemCount: user.length,
          itemBuilder: (_, index) => ListTile(
              onLongPress: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) =>
                        comments()));
              },
              leading: Text("${user[index]["postId"]}"),
              title: Text("${user[index]["id"]} "),
              subtitle: Text("${user[index]["body"]}"),
            ),
    )
    );
  }
}
