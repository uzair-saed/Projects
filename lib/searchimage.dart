import 'package:flutter/material.dart';

void main() {
  runApp(searchimage());
}
class searchimage extends StatefulWidget {
  const searchimage({Key? key}) : super(key: key);

  @override
  State<searchimage> createState() => _searchimageState();
}

class _searchimageState extends State<searchimage> {
  TextEditingController searchcontroller =TextEditingController();
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
      "key":0,
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
          backgroundColor: Color(0xffb0b0b0),
          appBar: AppBar(
              title: Text("SELECT IMAGE")
          ),
        body: Column(
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

                  Column (
                      children:List.generate(question["options"].length,
                              (indx) => ElevatedButton(
                                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green,minimumSize: Size(250, 40)),
                                  onPressed: (){
                                setState(() {
                                  counter+=1;
                                  if(counter<first.length){
                                    textin=" ${question["ques"]}";
                                    if(question["key"]==counter){
                                      score+=1;
                                    }
                                    else if(question["key"]!=counter){
                                      wrong++;
                                    }
                                  }
                                  else if(counter==3){
                                    counter=0;
                                  }
                                });
                              },
                              child: Text("${question["options"][indx]}")))),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red,minimumSize: Size(150, 40)),
                    child: Text("RESET"),

                    onPressed: () {
                      score=0;
                      wrong=0;
                      setState(() {
                        counter = 0;
                      });
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //THE POINTS HERE
                  Text("Right= $score",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  Text("Wrong= $wrong",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          );
  }
}
