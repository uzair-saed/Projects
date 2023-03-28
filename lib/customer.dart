import 'package:first/datacustomer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Customer());
}

class Customer extends StatelessWidget {
  const Customer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: customer(title: 'Ecommerce.com'),
    );
  }
}

class customer extends StatefulWidget {
  String title = "Customer DATA";
  customer({required this.title});

  @override
  State<customer> createState() => _customerState();
}

class _customerState extends State<customer> {
  List<DataCustomer> myproductList = [
    DataCustomer(
        name: "Uzair",
        Address: "SUECHS Jamshoro",
        phone: 369
    ),
    DataCustomer(
        name: "Zakir",
        Address: "SUECHS Jamshoro",
        phone: 0316
    ),

  ];
  int index=0;

  TextEditingController customername = TextEditingController();
  TextEditingController customeraddress = TextEditingController();
  TextEditingController customerphone = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (ctn, index) => ListTile(

          onLongPress: (){

            customername.text = myproductList[index].name;
            customeraddress.text = myproductList[index].Address;
            customerphone.text = myproductList[index].phone.toString();

            showModalBottomSheet(
                context: context,
                builder: (ctx) {
                  return SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(top: 10),
                      color: Colors.black,
                      child: Column(
                        children: [
                          Text("DATA UPDATE" ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                          Card(
                              margin: EdgeInsets.all(10),
                              elevation: 10,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: TextField(
                                  controller: customername,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    label: Text("Name"),
                                  ),
                                ),
                              )),

                          Card(
                              margin: EdgeInsets.all(10),
                              elevation: 10,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: TextField(
                                  controller: customeraddress,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    label: Text("Address"),
                                  ),
                                ),
                              )),

                          Card(
                              margin: EdgeInsets.all(10),
                              elevation: 10,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: TextField(
                                  controller: customerphone,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    alignLabelWithHint: true,
                                    label: Text("Phone"),
                                  ),
                                ),
                              )),
                          Container(
                            width: 200,
                            child: ElevatedButton(
                                onPressed: () {
                                  setState(() {

                                    myproductList[index].name = customername.text;
                                    myproductList[index].Address = customeraddress.text;
                                    myproductList[index].phone= customerphone.text as int;

                                    customername.clear();
                                    customeraddress.clear();
                                    customerphone.clear();
                                    Navigator.of(context).pop();
                                  });
                                },
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.white,minimumSize: Size(150, 40)),
                                child: Text("UPDATE",
                                    style:
                                    TextStyle(fontWeight: FontWeight.bold,
                                        color: Colors.black))),
                          )
                        ],
                      ),
                    ),
                  );
                });
          },

          title:
          Text("${myproductList[index].name.toString()}"),
          subtitle: Text(
              "${myproductList[index].Address.toString()}"),
          leading:
          Text("${myproductList[index].phone.toString()}"),
          trailing: IconButton(
            icon: Icon(Icons.delete,color: Colors.red,),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Alert",style: TextStyle(
                        color: Colors.red,fontWeight: FontWeight.bold),),
                    content: Text("Are You Sure?"),
                    actions: [
                      TextButton(
                          child: Text("YES"),
                          onPressed: (){
                            Navigator.of(context).pop();
                            setState(() {
                              myproductList.removeAt(index);
                            });
                          }
                      ),
                      TextButton(
                          child: Text("NO"),
                          onPressed: (){
                            Navigator.of(context).pop();
                          }
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
        itemCount: myproductList.length,
      ),
    );
  }
}
