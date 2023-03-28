import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart'as engwords;

void main() {
  runApp(MaterialApp(home: TextDemo()));
}

class TextDemo extends StatefulWidget {
  const TextDemo({Key? key}) : super(key: key);

  @override
  State<TextDemo> createState() => _TextDemoState();
}

class _TextDemoState extends State<TextDemo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: engwords.all.length,itemBuilder: (context, index){
        return Container(
          height: 70,
          alignment: Alignment.center,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          color: Colors.green,
          child: Text(engwords.all[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        );
      }),
    );
  }
}

class TextDemo2 extends StatefulWidget {
  const TextDemo2({Key? key}) : super(key: key);

  @override
  State<TextDemo2> createState() => _TextDemo2State();
}

class _TextDemo2State extends State<TextDemo2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: engwords.nouns.length,itemBuilder: (context, index){
        return Container(
          height: 70,
          alignment: Alignment.center,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          color: Colors.yellowAccent,
          child: Text(engwords.nouns[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        );
      }),
    );
  }
}

class TextDemo3 extends StatefulWidget {
  const TextDemo3({Key? key}) : super(key: key);

  @override
  State<TextDemo3> createState() => _TextDemo3State();
}

class _TextDemo3State extends State<TextDemo3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: engwords.adjectives.length,itemBuilder: (context, index){
        return Container(
          height: 70,
          alignment: Alignment.center,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          color: Colors.purple,
          child: Text(engwords.adjectives[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        );
      }),
    );
  }
}

