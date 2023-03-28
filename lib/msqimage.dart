import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List questions =[{
    "question":" QUESTION NO1   what is your Name ?",
    "options":["karan","Ajeet","roshan","javad"],
    "key":0,
    "score":null,
  },
    {
      "question":" QUESTION NO2  who are you ? ",
      "options":["Malhi","Deewan","Memon","Somoro"],
      "key":0,
      "Score":null,
    },
    {
      "question":"QUESTION NO3 Where are you from ? ",
      "options":["Thar","Karachi","Hyd","Jamshoro"],
      "key":0,
      "score":null,
    },
    {
      "question":" QUESTION NO4    what is your job ? ",
      "options":["manger","doctor",],
      "key":0,
      "score":null,
    },
  ];
  int index=0;
  String? textin;
  int right=0;

  @override
  Widget build(BuildContext context) {
    Map question=questions[index];
    textin="${question["question"]}";
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text(" Quaiz app"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body:Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [

              Container(
                color: Colors.red,
                child: Text(

                  ("$textin"),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column (
                  children:List.generate(question["options"].length,
                          (indx) => ElevatedButton(
                              onPressed: (){
                        setState(() {
                          index+=1;
                          if(index<questions.length){
                            textin=" ${question["question"]}";
                            if(question["key"]==indx){
                              right+=1;
                            }
                          }
                          else if(index==questions.length-1){

                            textin="Right=$right\n Wrong=${index-right}";
                            indx=0;
                          }
                        });
                      },
                          child: Text("${question["options"][indx]}")))),

              // ElevatedButton(onPressed: (){
              //   setState(() {
              //     index+=1;
              //   });
              // }, child: Text('${question["options"][0]}')),
              // SizedBox(
              //   height: 10,
              // ),
              // ElevatedButton(onPressed: (){
              //   setState(() {
              //     index+=1;
              //   });
              // }, child: Text('${question["options"][1]}')),
              //
              // SizedBox(
              //   height: 10,
              // ),
              // ElevatedButton(onPressed: (){
              //   setState(() {
              //     index+=1;
              //   });
              // }, child: Text('${question["options"][2]}')),
              // SizedBox(
              //   height: 10,
              // ),
              // ElevatedButton(onPressed: (){
              //   setState(() {
              //     index+=1;
              //   });
              // }, child: Text('${question["options"][3]}')),

            ],
          ),
        ),
      ),
    );
  }
}