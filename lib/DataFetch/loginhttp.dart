import 'dart:convert';
import 'package:first/DataFetch/comments.dart';
import 'package:first/DataFetch/jsonlist.dart';
import 'package:first/DataFetch/userpost.dart';
import 'package:first/mylist.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() async {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Http()));

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

  List userlogin=[];

  int index=0;
  List<Jsonlist> myjsonlist=[];
  List<Mylist> mylist=[];

  void getData() async {
    http.Response response =
    await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    if (response.statusCode == 200) {
      setState(() {
        userlogin = jsonDecode(response.body);
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
        title: Text("Login Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: nameof,
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
                  controller: emailof,
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
                Container(
                  child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,minimumSize: Size(160, 45)),
                        onPressed: () {

                          for(int i=0 ; i < userlogin.length ; i++){
                            if (userlogin[i]["username"]==nameof.text) {
                              if(userlogin[i]["email"]==emailof.text) {

                                String tempusername = nameof.toString();
                                String tempemail = emailof.toString();



                                nameof.clear();
                                emailof.clear();

                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        userpost()));
                              }
                            }
                          }

                        }, child: Text("login",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18))
                    ),

                ),
                Text((""))
              ],
            ),

      // ListView.builder(
      //     itemCount: user.length,
      //     itemBuilder: (_ , index){
      //   return ListTile(
      //     leading: Text("${user[index]["id"]}"),
      //     title: Text("${user[index]["username"]}"),
      //     subtitle: Text("${user[index]["email"]}"),
      //   );
      // }
      // ),

    );
  }
}

//
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Comment Viewer',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   final TextEditingController _usernameController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   String _comments = "";
//
//   Future<void> _getComments() async {
//     final response = await http.get(
//       Uri.parse('https://jsonplaceholder.typicode.com/comments/${_usernameController.text}'),
//       headers: <String, String>{
//         'Authorization': 'Basic ${base64Encode(utf8.encode('${_usernameController.text}:${_passwordController.text}'))}',
//       },
//     );
//
//     if (response.statusCode == 200) {
//       setState(() {
//         _comments = response.body;
//       });
//     } else {
//       throw Exception('Failed to get comments');
//     }
//     for(int i=0 ; i < userlogin.length ; i++){
//       if (userlogin[i]["username"]==nameof.text) {
//         if(userlogin[i]["email"]==emailof.text) {
//
//         }
//       }
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Comment Viewer'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             TextField(
//               controller: _usernameController,
//               decoration: InputDecoration(
//                 labelText: 'Username',
//               ),
//             ),
//             TextField(
//               controller: _passwordController,
//               obscureText: true,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//               ),
//             ),
//             SizedBox(height: 16.0),
//             ElevatedButton(
//               onPressed: () => _getComments(),
//               child: Text('View Comments'),
//             ),
//             SizedBox(height: 16.0),
//             Text('Comments:', style: TextStyle(fontWeight: FontWeight.bold)),
//             SizedBox(height: 8.0),
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Text(_comments),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'API Example',
//       home: LoginPage(),
//     );
//   }
// }
//
// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   final TextEditingController _usernameController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   String _userId = '';
//   List<dynamic> _comments = [];
//
//   Future<void> _login() async {
//     final response = await http.post(Uri.parse('https://jsonplaceholder.typicode.com/users'),
//         body: {'username': _usernameController.text, 'password': _passwordController.text});
//     final responseBody = json.decode(response.body);
//     if (responseBody['status'] == 'success') {
//       setState(() {
//         _userId = responseBody['user_id'];
//       });
//       await _getComments();
//     } else {
//       showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: Text('Error'),
//             content: Text('Invalid username or password.'),
//             actions: <Widget>[
//               TextButton(
//                 child: Text('OK'),
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//               ),
//             ],
//           );
//         },
//       );
//     }
//   }
//
//   Future<void> _getComments() async {
//     final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/comments$_userId'));
//     final responseBody = json.decode(response.body);
//     setState(() {
//       _comments = responseBody['comments'];
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('API Example'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               'Username',
//               style: TextStyle(
//                 fontSize: 16.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             TextField(
//               controller: _usernameController,
//               decoration: InputDecoration(
//                 hintText: 'Enter your username',
//               ),
//             ),
//             SizedBox(height: 16.0),
//             Text(
//               'Password',
//               style: TextStyle(
//                 fontSize: 16.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             TextField(
//               controller: _passwordController,
//               obscureText: true,
//               decoration: InputDecoration(
//                 hintText: 'Enter your password',
//               ),
//             ),
//             SizedBox(height: 16.0),
//             Center(
//               child: ElevatedButton(
//                 child: Text('Login'),
//                 onPressed: _login,
//               ),
//             ),
//             SizedBox(height: 16.0),
//             Text(
//               'Comments:',
//               style: TextStyle(
//                 fontSize: 16.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: _comments.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return ListTile(
//                     title: Text(_comments[index]['postId']),
//                     subtitle: Text(_comments[index]['body']),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
