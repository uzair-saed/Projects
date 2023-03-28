import 'package:flutter/material.dart';

void main() {
  runApp(imgselct());
}
class imgselct extends StatefulWidget {
  const imgselct({Key? key}) : super(key: key);


  @override
  State<imgselct> createState() => _imgselctState();
}
class _imgselctState extends State<imgselct> {


  List first=[
    {
      "ques":"assets/car1.jpg",
      "options":["Car", "Bike" , "Aeroplane"],
      "key":0,
      "score":null
    },
    {
      "ques":"assets/bike.jpg",
      "options":["Car", "Bike" , "Aeroplane"],
      "key":1,
      "score":null
    },
    {
      "ques":"assets/im3.jpg",
      "options":["Dog", "Fox" , "Cat"],
      "key":0,
      "score":null
    },
    {
      "ques":"",
      "options":[],
      "score":null
    }
  ];
  int counter = 0;
  int score=0;
  int wrong=0;
  String? textin;

  @override
  Widget build(BuildContext context) {
    Map question=first[counter];
    textin="${question["ques"]}";
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text("SELECT IMAGE")
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                width: 300,
                height: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // color: Colors.black12,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("${first[counter]["ques"]}",),
                  ),
                ),
                child: const Text(
                  '',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                  selectionColor: Colors.green,
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    ElevatedButton(
                        onPressed:(){
                          setState(() {
                            counter+=1;
                            if(counter<first.length){
                              textin=" ${question["ques"]}";
                              if(question["key"]==counter){
                                score++;
                              }
                              else if(question["key"]!=counter){
                                wrong++;
                              }
                            }
                            else if(counter==2){
                              counter=0;
                            }
                          });
                        },
                        child: Text("${question["options"][counter]}")),
                   ElevatedButton(
                       onPressed:() {
                         score=0;
                         wrong=0;
                         setState(() {
                           counter=0;
                         });
                         },
                       child: const Text("RESET")),
                    Text("RIGHT: $score\nWRONG: $wrong")
                  ],
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
