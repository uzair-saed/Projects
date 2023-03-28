import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SearchImage());
}

class SearchImage extends StatefulWidget {
  const SearchImage({Key? key}) : super(key: key);

  @override
  State<SearchImage> createState() => _SearchImageState();
}

class _SearchImageState extends State<SearchImage> {
  TextEditingController search = TextEditingController();

  List<String> cars = [
    "assets/images/car1.jpg",
    "assets/images/car2.jpg",
  ];
  List<String> bikes = [
    "assets/images/bike.jpg",
    "assets/images/bike2.jpg",
  ];
  List<String> myimages = ["assets/images/blank.png"];

  get school => null;
  void searchimage() {
    setState(() {
      String input = search.text;
      if (input.toLowerCase() == "bike".toLowerCase()) {
        int a = Random().nextInt(bikes.length);
        myimages[0] = cars[a];
      } else if (input.toLowerCase() == "car".toLowerCase()) {
        int a = Random().nextInt(cars.length);
        myimages[0] = cars[a];
      } else {
        myimages[0] = "assets/images/no.jpg";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Search Image"),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.cyanAccent,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(myimages[0]),
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
              SizedBox(
                height: 10,
              ),
              Container(
                width: 1100,
                child: Card(
                  elevation: 10,
                  child: TextField(
                    // obscureText: true,
                    controller: search,
                    maxLength: 20,

                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintStyle: TextStyle(
                          color: Colors.blueGrey,
                          backgroundColor: Colors.white),
                      prefixIcon: Icon(
                        Icons.car_crash,
                        color: Colors.red,
                      ),
                      label: Text(
                        "Search",
                        style: TextStyle(color: Colors.yellowAccent),
                      ),
                      hintText: 'Ex: cat,bike,car',
                    ),
                    style: TextStyle(
                      color: Colors.deepPurple,
                    ),
                    textAlign: TextAlign.center,
                    // textInputAction: TextInputAction.done,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: searchimage, child: Text("Search"))
            ],
          ),
        ),
      ),
    );
  }
}