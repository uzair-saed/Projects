import 'package:flutter/material.dart';

void main(){
  runApp(design());
}
class design extends StatefulWidget {
  const design({Key? key}) : super(key: key);

  @override
  State<design> createState() => _designState();
}

class _designState extends State<design> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [IconButton(onPressed: () {},
              icon: Icon(Icons.settings))],
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black54,
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text("       File Manager",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white),),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 45,
              width: 400,
              child: TextField(
                decoration: InputDecoration(
                  filled: true, //<-- SEE HERE
                  fillColor: Colors.black54,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)
                  ),
                  prefixIcon: Icon(Icons.search,
                      color: Colors.grey),
                  label: Text("Search here",
                      style: TextStyle(
                          color: Colors.grey,fontWeight: FontWeight.bold)),
                ),
                textAlign: TextAlign.start,
                cursorColor: Colors.grey,
                keyboardType: TextInputType.text,
              ),

            ),
            SizedBox(
              height: 20,
            ),
            //Container: 1
            Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    width: 45,
                    height: 50,
                    decoration: BoxDecoration(
                        shape:BoxShape.circle,
                        image: DecorationImage(image: AssetImage("media.png"),
                        )
                    ),
                  ),
                  SizedBox(
                    width: 30,
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
                  SizedBox(
                    width: 30,
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
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    width: 45,
                    height: 50,
                    decoration: BoxDecoration(
                        shape:BoxShape.circle,
                        image: DecorationImage(image: AssetImage("doc.png"),
                        )
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),

            //Container: 2
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    width: 45,
                    height: 50,
                    decoration: BoxDecoration(
                        shape:BoxShape.circle,
                        image: DecorationImage(image: AssetImage("whatsapp.png"),
                        )
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    width: 55,
                    height: 50,
                    decoration: BoxDecoration(
                        shape:BoxShape.circle,
                        image: DecorationImage(image: AssetImage("dwnld.png"),
                        )
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    width: 45,
                    height: 50,
                    decoration: BoxDecoration(
                        shape:BoxShape.circle,
                        image: DecorationImage(image: AssetImage("file.png"),
                        )
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    width: 45,
                    height: 50,
                    decoration: BoxDecoration(
                        shape:BoxShape.circle,
                        image: DecorationImage(image: AssetImage("more.png"),
                        )
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 50,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        shape:BoxShape.circle,
                        image: DecorationImage(image: AssetImage("file.png"),
                        )
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Text("All Files",
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 14),),
                        ),
                        Container(
                          child: Text("             Internal Storage",style: TextStyle(color: Colors.white,),),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Text("                "
                        "                         "
                        "              "),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 40,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("bin.png"),
                        )
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Text("Release Data",
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 14),),
                        ),
                        Container(
                          child: Text("             123 GB used/128 GB",style: TextStyle(color: Colors.white,),),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Text("        "
                        "                         "
                        "              "),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 30,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text("Recent Document*",
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18),),
                  ),
                  Container(
                    child: Text("          "
                        "                   "
                        "                   "
                        "                   "),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("bazoo.png"),
                        )
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Text("   Bazooka.WarShooting.mod.apk",
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 14),),
                        ),
                        Container(
                          child: Text("62.80 MB"
                              "                 "
                              "                 ",style: TextStyle(color: Colors.white,),),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Text("        "
                        "                         "
                        "              "),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("high.jpeg"),
                        )
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Text("      Highway.Racer.mod.apk",
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 14),),
                        ),
                        Container(
                          child: Text("     102.2 MB"
                              "                 "
                              "        ",style: TextStyle(color: Colors.white,),),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Text("               "
                        "                            "
                        "              "),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
