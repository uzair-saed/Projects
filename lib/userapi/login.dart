import 'dart:convert';
import 'package:first/mylist.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() async {
  runApp(MaterialApp(home: Http()));
  // http.Response response =
  // await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
  // if (response.statusCode == 200) {
  //   List myJsonData = jsonDecode(response.body);
  //   for (int i = 0; i < myJsonData.length; i++) {
  //     print("\n");
  //     print(
  //             "\t${myJsonData[i]["id"]}\n"
  //             "${myJsonData[i]["name"]}\n"
  //             "${myJsonData[i]["username"]}\n"
  //                 "${myJsonData[i]["email"]}\n"
  //                 "${myJsonData[i]["address"]}");
  //     print("***********************");
  //   }
  // }
}
class Http extends StatefulWidget {

  @override
  State<Http> createState() => _HttpState();
}

class _HttpState extends State<Http> {
  @override

  TextEditingController nameof = TextEditingController();
  TextEditingController emailof = TextEditingController();

  List user=[];

  int index=0;

  List<Mylist> mylist=[];

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
      appBar: AppBar(
        title: Text("Title Here"),
      ),
      body: ListView.builder(
        itemCount: user.length,
        itemBuilder: (_, index) {
          return ListTile(
            leading: Text("${user[index]["postId"]} "),
            title: Text("${user[index]["id"]} "),
            subtitle: Text("${user[index]["body"]}"),
          );
        }),

    );
  }
}