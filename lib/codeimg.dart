import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(codeimg());
}

class codeimg extends StatefulWidget {
  const codeimg({Key? key}) : super(key: key);

  @override
  State<codeimg> createState() => _codeimgState();
}

class _codeimgState extends State<codeimg> {
  List lst = [
    "im1.jpg","im2.jpg","im3.jpg","im4.jpg","im5.jpg"];
  List<Widget> containers = [];
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: 400,
              height: 400,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(image: AssetImage(lst[_counter]))),
            ),
            RichText(
              text: TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    setState(() {
                      _counter = 0;
                    });

                    print("you just tap on CAR button");
                  },
                text: "CAR",
                style: TextStyle(color: Colors.deepOrange, fontSize: 40),
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

                    print("you just tap on FOX button");
                  },
                text: "FOX  ",
                style: TextStyle(color: Colors.deepOrange, fontSize: 40),
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

                    print("you just tap on DOG button");
                  },
                text: "DOG",
                style: TextStyle(color: Colors.deepOrange, fontSize: 40),
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _addcont() {
    setState(() {
      if (_counter != lst.length) {
        // containers.add(Padding(
        //   padding: const EdgeInsets.all(20),
        child:
        Container(
            padding: EdgeInsets.all(20),
            // margin: EdgeInsets.all(30),
            width: 400,
            height: 300,
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(image: AssetImage(lst[_counter]))),
            child: Text(
              "Image ${_counter}",
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
            ));
        _counter++;
      } else {
        _counter = 0;
      }
    });
  }
}