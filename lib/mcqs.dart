import 'package:flutter/material.dart';

void main() {
  runApp(mcqs());
}
class mcqs extends StatefulWidget {
  const mcqs({Key? key}) : super(key: key);

  @override
  State<mcqs> createState() => _mcqsState();
}

class _mcqsState extends State<mcqs> {
  List qlist=[
    {
      "question":"",
      "options":[],
      "key":"",
      "score":null
    },
    {
      "question":"",
      "options":[],
      "key":"",
      "score":null
    },
    {
      "question":"",
      "options":[],
      "key":"",
      "score":null
    },
    // {
    //   "question":"",
    //   "options":[],
    // }
  ];
  int index=0;
  String? textin;
  // int score=0;
  // int wrong=0;


  @override
  Widget build(BuildContext context) {
    // Map question=qlist[index];
    // textin="${question["question"]}";
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black45,
        appBar: AppBar(
          backgroundColor: Colors.black,
            title: Text("Quiz App"),
        ),
        body: Center(
          child: Column(
          children: [
              //OLD QUIZZ START...................
              // child: Column(
              //   children: [
              //     SizedBox(
              //       height: 20,
              //     ),
              //     Container(
              //       // width: 1000,
              //       height: 50,
              //       decoration: BoxDecoration(
              //         color: Colors.deepOrange,
              //       ),
              //       alignment: Alignment.center,
              //       child: Text(
              //         "${qlist[index]["question"]}",
              //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              //       ),
              //     ),
              //     SizedBox(
              //       height: 20,
              //     ),
              //
              //     Column (
              //         children:List.generate(question["options"].length,
              //                 (indx) => ElevatedButton(
              //                     style: ElevatedButton.styleFrom(backgroundColor: Colors.green,minimumSize: Size(250, 40)),
              //                     onPressed: (){
              //                   setState(() {
              //                     index+=1;
              //                     if(index<qlist.length){
              //                       textin=" ${question["question"]}";
              //                       if(question["key"]==indx){
              //                         score+=1;
              //                       }
              //                       else if(question["key"]!=indx){
              //                         wrong++;
              //                       }
              //                     }
              //                     // if(index==4){
              //                     //   index=0;
              //                     //   if(index==0){
              //                     //     score=0;
              //                     //   }
              //                     // }
              //                   });
              //                 },
              //                 child: Text("${question["options"][indx]}")))),
              //     SizedBox(
              //       height: 20,
              //       width: 20,
              //     ),
              //     ElevatedButton(
              //       style: ElevatedButton.styleFrom(backgroundColor: Colors.red,minimumSize: Size(150, 40)),
              //       child: Text("RESET"),
              //
              //       onPressed: () {
              //         score=0;
              //         wrong=0;
              //         setState(() {
              //           index = 0;
              //         });
              //       },
              //     ),
              //     SizedBox(
              //       height: 20,
              //     ),
              //
              //     //THE POINTS HERE
              //     Text("Right= $score",
              //       style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              //     ),
              //     Text("Wrong= $wrong",
              //       style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              //     ),
              //   ],
              // ),
            Container(
          alignment: Alignment.center,
          width: 450,
          height: 100,
          child:TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              // prefixIcon: Icon(Icons.question_answer_sharp, color: Colors.black),
              label: Text("Question:"),
              hintText: 'eg:What is your Name?',
            ),
            textAlign: TextAlign.start,
            cursorColor: Colors.green,
            keyboardType: TextInputType.text,
          ),
          ),

            Container(
              alignment: Alignment.center,
              width: 250,
              height: 40,
              child:TextField(
                // style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  // filled: true,
                  // fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  // prefixIcon: Icon(Icons.question_answer_sharp, color: Colors.black),
                  label: Text("Option:1"),
                  hintText: 'eg:Uzair',
                ),
                textAlign: TextAlign.start,
                cursorColor: Colors.green,
                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),

            Container(
              alignment: Alignment.center,
              width: 250,
              height: 40,
              child:TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // prefixIcon: Icon(Icons.question_answer_sharp, color: Colors.black),
                  label: Text("Option:2"),
                  hintText: 'eg:Meer',
                ),
                textAlign: TextAlign.start,
                cursorColor: Colors.green,
                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),


            Container(
              alignment: Alignment.center,
              width: 250,
              height: 40,
              child:TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // prefixIcon: Icon(Icons.question_answer_sharp, color: Colors.black),
                  label: Text("Option:3"),
                  hintText: 'eg:Basit',
                ),
                textAlign: TextAlign.start,
                cursorColor: Colors.green,
                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),

            Container(
              alignment: Alignment.center,
              width: 250,
              height: 40,
              child:TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // prefixIcon: Icon(Icons.question_answer_sharp, color: Colors.black),
                  label: Text("Option:4"),
                  hintText: 'eg:Zakir',
                ),
                textAlign: TextAlign.start,
                cursorColor: Colors.green,
                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(
              height: 20,
              width: 10,
            ),

            Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black38,minimumSize: Size(130, 40)),
                child: Text("SUBMIT"),
                onPressed: (

                    ) {
                  setState(() {
                  });
                },
              ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black38,minimumSize: Size(130, 40)),
                  child: Text("SHOW"),
                  onPressed: () {
                    setState(() {
                    });
                  },
                ),
              ],
            ),
          )

          ],
        ),
      ),
    ),
    );
  }
}