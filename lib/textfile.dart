import 'package:first/Text.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart'as engwords;


void main(){
  runApp(const Mainfile());
}
class Mainfile extends StatelessWidget {
  const Mainfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: mainfile(title: 'login'),
    );
  }
}
class mainfile extends StatefulWidget {
  String title = "login";
  mainfile({required this.title});

  @override
  State<mainfile> createState() => _mainfileState();
}

class _mainfileState extends State<mainfile> {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Demo Ecom"),
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              onTap: (index){
                print(index);
              },
              tabs: const [
                Tab(
                  icon: Icon(Icons.abc),
                  text: "All Words",
                ),
                Tab(
                  icon: Icon(Icons.abc),
                  text: "Nouns",
                ),
                Tab(
                  icon: Icon(Icons.abc),
                  text: "Adjectives",
                ),
              ],
            ),
          ),
          body:
          TabBarView(
            children: [
              Center(
                child: TextDemo()
                ),
              Center(
                child: TextDemo2()
              ),
              Center(
                child: TextDemo3()
              ),
            ],
          ),
        ),
      ),
    );
  }
}