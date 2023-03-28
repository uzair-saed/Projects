import 'dart:convert';
import 'package:first/mylist.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() async {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: comments()));
}

class comments extends StatefulWidget {
  const comments({Key? key}) : super(key: key);

  @override
  State<comments> createState() => _commentsState();
}

class _commentsState extends State<comments> {
  @override

  List user=[];

  void getData() async {
    http.Response response =
    await http.get(Uri.parse("https://jsonplaceholder.typicode.com/comments"));
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
        title: Text("Comments"),
      ),
      body: ListView.builder(
          itemCount: user.length,
          itemBuilder: (_, index) {
            return ListTile(
              leading: Text("${user[index]["postId"]}"),
              title: Text("${user[index]["id"]} "),
              subtitle: Text("${user[index]["body"]}"),
            );
          }),
    );
  }
}
