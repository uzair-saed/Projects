import 'package:flutter/material.dart';
import 'package:first/name.dart';

void main(){
  runApp(productlist());
}

class productlist extends StatelessWidget {

  List<Name> listofProducts=[
    Name(
        name: "Audio",
        url: "media.png"
    ),
    Name(
        name: "Video",
        url: "player.jpg"
    ),
    Name(
        name: "Images",
        url: "doc.png"
    ),
    Name(
        name: "Apps",
        url: "apk.png"
    ),
    Name(
        name: "Whatapp",
        url: "whatsapp.png"
    ),
  ];
  int counter=0;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Demo"),
          ),
          backgroundColor: Colors.black26,
          body: GridView(
            //Outside Container(s) Spaceing
            padding: EdgeInsets.only(left: 55,right: 55,top: 55,bottom: 55),
            gridDelegate:
            SliverGridDelegateWithMaxCrossAxisExtent(
              //Space between containers
                maxCrossAxisExtent: 200 ,
                crossAxisSpacing: 50,
                mainAxisSpacing: 50
            ),
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape:BoxShape.circle,
                          image: DecorationImage(image: AssetImage("media.png"),
                          )
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape:BoxShape.circle,
                          image: DecorationImage(image: AssetImage("player.jpg"),
                          )
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape:BoxShape.circle,
                          image: DecorationImage(image: AssetImage("apk.png"),
                          )
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape:BoxShape.circle,
                          image: DecorationImage(image: AssetImage("doc.png"),
                          )
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}
