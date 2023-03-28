import 'package:flutter/material.dart';

void main() {
  runApp(bank());
}
class bank extends StatefulWidget {
  const bank({Key? key}) : super(key: key);

  @override
  State<bank> createState() => _bankState();
}

class _bankState extends State<bank> {
  TextEditingController withdrawcontroller = TextEditingController();
  TextEditingController Depositcontroller = TextEditingController();
  bool Withdraw = false;
  bool deposit = false;
  bool result = false;
  double currentbalance = 0;
  String? showmessage;

  // List bnk=[
  //   // 1
  //   Container(
  //     alignment: Alignment.topCenter,
  //     child: Text("0.00",
  //       style: const TextStyle(
  //         fontWeight: FontWeight.bold,
  //         fontSize: 55,
  //         color: Colors.deepOrange,
  //       ),
  //     ),
  //   ),
  //   // 2
  //   Container(
  //     alignment: Alignment.topCenter,
  //     width: 400,
  //     child: const TextField(
  //       decoration: InputDecoration(
  //         border: OutlineInputBorder(),
  //         prefixIcon: Icon(Icons.money, color: Colors.deepOrange),
  //         label: Text("AMOUNT"),
  //         hintText: '1000',
  //       ),
  //       textAlign: TextAlign.center,
  //       cursorColor: Colors.deepOrange,
  //       keyboardType: TextInputType.number,
  //     ),
  //   ),
  //   // 3
  //   Container(
  //     alignment: Alignment.topCenter,
  //     width: 400,
  //     child: const TextField(
  //       decoration: InputDecoration(
  //         border: OutlineInputBorder(),
  //         prefixIcon: Icon(Icons.money, color: Colors.deepOrange),
  //         label: Text("AMOUNT"),
  //         hintText: '1000',
  //       ),
  //       textAlign: TextAlign.center,
  //       cursorColor: Colors.deepOrange,
  //       keyboardType: TextInputType.number,
  //     ),
  //   ),
  // ];

  int counter=0;
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("HBL",
              style: TextStyle(
              fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white
            )
          ),
          backgroundColor: Colors.green,
        ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _body(),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange,minimumSize: Size(150, 40)),
                          onPressed: () {
                            setState(() {
                              Withdraw = true;
                              deposit = false;
                            });
                          },
                          child: Text("Withdraw")),

                      ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange,minimumSize: Size(150, 40)),
                          onPressed: () {
                            setState(() {
                              Withdraw = false;
                              deposit = true;
                            });

                            currentbalance += double.parse(Depositcontroller.text);
                          },
                          child: Text("Deposit")),
                      ],
                  ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange,minimumSize: Size(150, 40)),
                              onPressed: () {
                                setState(() {
                                  Withdraw = false;
                                  deposit = false;
                                });
                              },
                              child: Text("Show Balance")),
                        ],
                      ),
                    ],
              ),
            ),
          )
      ),
    );
  }
  Widget _body() {
    if (Withdraw) {
      return Padding(
        padding: EdgeInsets.all(8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
          Card(
            elevation: 5,
            child: TextField(
              controller: withdrawcontroller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefix: Icon(
                  Icons.money,
                  color: Colors.deepOrange,
                ),
                prefixIconColor: Colors.blue,
                label: Text("Withdraw"),
                hintText: "1000",
              ),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrangeAccent,minimumSize: Size(150, 40)),
              onPressed: () {
                setState(() {
                  if (withdrawcontroller.text.isEmpty) {
                    return;
                  }
                  if (currentbalance - double.parse(withdrawcontroller.text) >= 0) {
                    currentbalance -= double.parse(withdrawcontroller.text);
                  }
                  withdrawcontroller.text = "";
                });
              },
              child: Text("Conform")),
        ]),
      );
    }
    if (deposit) {
      return Padding(
        padding: EdgeInsets.all(8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Card(
            elevation: 5,
            child: TextField(
              controller: Depositcontroller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefix: Icon(
                  Icons.money,
                  color: Colors.deepOrange,
                ),
                prefixIconColor: Colors.blue,
                label: Text("Deposit"),
                hintText: "1000",
              ),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrangeAccent,minimumSize: Size(150, 40)),
              onPressed: () {
                if (Depositcontroller.text.isEmpty) {
                  return;
                }
                setState(() {
                  currentbalance += double.parse(Depositcontroller.text);
                  Depositcontroller.text = "";
                });
              },
              child: Text("Conform")),
        ]),
      );
    } else {
      return Container(
        alignment: Alignment.center,
        height: 150,
        child: Text(
          "Rs: $currentbalance",
          style: TextStyle(fontSize: 42,color: Colors.deepOrange,fontWeight: FontWeight.bold),
        ),
      );
    }
  }
}
