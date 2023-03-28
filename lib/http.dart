import 'dart:convert';
import 'dart:io';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;

void main() async {

  var box = await Hive.openBox("BBSHRRDB");
  await box.put("Students", ["Uzair","Saeed","119"]);
  await box.put("Owner", "Azam");
  await box.put("Labs", true);
  print(box.get("Students"));

  // runApp(const MyApp());
  // http.Response response =
  // await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
  // if (response.statusCode == 200) {
  //   List myJsonData = jsonDecode(response.body);
  //   for (int i = 0; i < myJsonData.length; i++);
  //   // {
  //   //   print("----------------------------");
  //   //   print("Id: ${myJsonData[i]["id"]}\n"
  //   //       "Name: ${myJsonData[i]["name"]}\n"
  //   //       "Username: ${myJsonData[i]["username"]}");
  //   // }
  //
  //
  //   //_______________________________________________
  //
  //   print("which index data want see?");
  //   int userinput = int.parse(stdin.readLineSync()!);
  //     print("----------------------------");
  //     print("Id: ${myJsonData[userinput-1]["id"]}\n"
  //         "Name: ${myJsonData[userinput-1]["name"]}\n"
  //         "Username: ${myJsonData[userinput-1]["username"]}");
  // }
}

