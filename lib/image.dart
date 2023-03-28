import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(image());
}

class image extends StatefulWidget {
  const image({Key? key}) : super(key: key);

  @override
  State<image> createState() => _imageState();
}

class _imageState extends State<image> {
  List lst = [
    "im1.jpg", "im2.jpg", "im3.jpg", "im4.jpg", "im5.jpg"];
  List<Widget> containers = [];
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                  shape:BoxShape.circle,
                  image: DecorationImage(image: AssetImage(lst[_counter]),
                  )
              ),
            ),
            RichText(
              text: TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    setState(() {
                      _counter = 0;
                    });

                    print("you tap on CAR button");
                  },
                text: "CAR",
                style: TextStyle(color: Colors.black, fontSize: 20),
                children: [],
              ),
            ),
            RichText(
              text: TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    setState(() {
                      _counter = 1;
                    });

                    print("you tap on FOX button");
                  },
                text: "FOX",
                style: TextStyle(color: Colors.black, fontSize: 20),
                children: [],
              ),
            ),
            RichText(
              text: TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    setState(() {
                      _counter = 2;
                    });

                    print("you tap on DOG button");
                  },
                text: "DOG",
                style: TextStyle(color: Colors.black, fontSize: 20),
                children: [],
              ),
            ),
            RichText(
              text: TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    setState(() {
                      _counter = 3;
                    });

                    print("you tap on CAT button");
                  },
                text: "CAT",
                style: TextStyle(color: Colors.black, fontSize: 20),
                children: [],
              ),
            ),
            RichText(
              text: TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    setState(() {
                      _counter = 4;
                    });

                    print("you tap on BIKE button");
                  },
                text: "BIKE",
                style: TextStyle(color: Colors.black, fontSize: 20),
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}