import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var temperature = '';
  var location = '';
  var condition = '';
  var searchController = TextEditingController();
  var backgroundColor = Color(0xFFEEDFCC);
  bool _isSearching = false;

  Future<void> _fetchWeatherData(String cityName) async {
    final response = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=95e5ea042992aa2f1bbdac0634dfdfce&units=metric'));
    final data = json.decode(response.body);
    final temp = data['main']['temp'];
    final cityNameFromData = data['name'];
    final weatherCondition = data['weather'][0]['main'];
    setState(() {
      temperature = temp.toString() + '°C';
      location = cityNameFromData;
      condition = weatherCondition;
      // if (weatherCondition == 'Clouds') {
      //   backgroundColor = Color(0xFFC0C0C0);
      // } else if (weatherCondition == 'Rain') {
      //   backgroundColor = Color(0xFF708090);
      // } else if (weatherCondition == 'Snow') {
      //   backgroundColor = Color(0xFFADD8E6);
      // } else {
      //   backgroundColor = Color(0xFFEEDFCC);
      // }
    });
  }

  @override
  void initState() {
    super.initState();
    _fetchWeatherData('Jamshoro'); // Default location
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(4, 28, 20, 1),
          title: _isSearching ? TextField(
            controller: searchController,
            decoration: InputDecoration(
              hintText: 'Search for a location',
              hintStyle: TextStyle(color: Colors.white54),
            ),
          )
              : Text('Weather App'),
          actions: <Widget>[
            IconButton(
              icon: _isSearching ? Icon(Icons.close) : Icon(Icons.search),
              onPressed: () {
                setState(() {
                  _isSearching = !_isSearching;
                  if (!_isSearching) {
                    _fetchWeatherData('Jamshoro'); // Reset to default location when closing search bar
                  }
                });
              },
            ),
          ],
        ),
        body: Container(
          color: Color.fromRGBO(4, 28, 16, 1),
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                Text(
                  ' $location',
                  style: TextStyle
                    (fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,),
                ),
                SizedBox(height: 16.0),
                Text(
                  '$temperature',
                  style: TextStyle(fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,),
                ),
                SizedBox(height: 16.0),
                Text(
                  ' $condition',
                  style: TextStyle
                    (fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,),
                ),
                SizedBox(height: 16.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





// void main(){
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: MyApp(),
//   ));
// }
//
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   var temperature = '';
//   var location = '';
//   var searchController = TextEditingController();
//   var backgroundImage = 'assets/sunny.jpeg';
//   var condition = '';
//
//   Future<void> _fetchWeatherData(String cityName) async {
//     final response = await http.get(Uri.parse(
//         'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=95e5ea042992aa2f1bbdac0634dfdfce&units=metric'));
//     final data = json.decode(response.body);
//     final temp = data['main']['temp'];
//     final cityNameFromData = data['name'];
//     final weatherCondition = data['weather'][0]['main'];
//     setState(() {
//       temperature = temp.toString() + '°C';
//       location = cityNameFromData;
//       condition = weatherCondition;
//
//       if (weatherCondition == 'Clouds') {
//         backgroundImage = 'assets/cloudy.jpeg';
//       } else if (weatherCondition == 'Rain') {
//         backgroundImage = 'assets/rainy.jpeg';
//       } else if (weatherCondition == 'Snow') {
//         backgroundImage = 'assets/snowy.jpg';
//       } else {
//         backgroundImage = 'assets/sunny.jpeg';
//       }
//     });
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     _fetchWeatherData('Kotri'); // Default location
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0x062415),
//         body: Container(
//           color: Color(0x062415),
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: <Widget>[
//                 Padding(
//                   padding: const EdgeInsets.all(10),
//                   child: TextField(
//                     controller: searchController,
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(),
//                       hintText: 'Search for a location',
//                       suffixIcon: IconButton(
//                         icon: Icon(Icons.search),
//                         onPressed: () async {
//                           final cityName = searchController.text;
//                           await _fetchWeatherData(cityName);
//                         },
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 100,
//                 ),
//                 Container(
//                   child: Column(
//                     children: [
//                       Text(
//                         '$location',
//                         style: TextStyle(fontSize: 30 ,
//                             fontWeight: FontWeight.w600),
//                       ),
//                       SizedBox(height: 5.0),
//                       Text(
//                         '$temperature',
//                         style: TextStyle(fontSize: 24,
//                             fontWeight: FontWeight.w500),
//                       ),
//                       SizedBox(height: 5.0),
//                       Text(
//                         'Condition: $condition',
//                         style: TextStyle(fontSize: 24,
//                             fontWeight: FontWeight.w600),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//     );
//   }
// }
//

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   var temperature = '';
//   var location = '';
//   var searchController = TextEditingController();
//
//   Future<void> _fetchWeatherData(String cityName) async {
//     final response = await http.get(Uri.parse(
//         'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=95e5ea042992aa2f1bbdac0634dfdfce&units=metric'));
//     final data = json.decode(response.body);
//     final temp = data['main']['temp'];
//     final cityNameFromData = data['name'];
//     setState(() {
//       temperature = temp.toString() + '°C';
//       location = cityNameFromData;
//     });
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     _fetchWeatherData('baku'); // Default location
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Weather App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Weather App'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: TextField(
//                   controller: searchController,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     hintText: 'Search for a location',
//                     suffixIcon: IconButton(
//                       icon: Icon(Icons.search),
//                       onPressed: () async {
//                         final cityName = searchController.text;
//                         await _fetchWeatherData(cityName);
//                       },
//                     ),
//                   ),
//                 ),
//               ),
//               Container(
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     children: [
//
//                       Text(
//                         'Location: $location',
//                         style: TextStyle(fontSize: 24.0),
//                       ),
//                       SizedBox(height: 16.0),
//                       Text(
//                         'Temperature: $temperature',
//                         style: TextStyle(fontSize: 24.0),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//
// // import 'package:flutter/material.dart';
// // import 'package:geolocator/geolocator.dart';
// // import 'package:http/http.dart' as http;
// // import 'dart:convert';
// //
// // void main(){
// //   runApp(MaterialApp(
// //     title: 'WeatherApp',
// //     debugShowCheckedModeBanner: false,
// //     home: Weatherapp(),
// //   ));
// // }
// //
// // class Weatherapp extends StatefulWidget {
// //   @override
// //   _WeatherappState createState() => _WeatherappState();
// // }
// //
// // class _WeatherappState extends State<Weatherapp> {
// //   var temperature = '';
// //   var location = '';
// //   var weather = '';
// //
// //   Future<void> _fetchWeatherData(double latitude, double longitude) async {
// //     final response = await http.get(Uri.parse(
// //         'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=95e5ea042992aa2f1bbdac0634dfdfce&units=metric'));
// //     final data = json.decode(response.body);
// //     final temp = data['main']['temp'];
// //     final cityName = data['name'];
// //     final currentweather = data['description'];
// //     setState(() {
// //       temperature = temp.toString() + '°C';
// //       location = cityName;
// //       weather = currentweather;
// //     });
// //   }
// //
// //   Future<void> _getCurrentLocation() async {
// //     try {
// //       final position = await Geolocator.getCurrentPosition(
// //           desiredAccuracy: LocationAccuracy.high);
// //       await _fetchWeatherData(position.latitude, position.longitude);
// //     } catch (e) {
// //       print(e);
// //     }
// //   }
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     _getCurrentLocation();
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         appBar: AppBar(
// //           title: Text('Weather App'),
// //         ),
// //         body: Center(
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: <Widget>[
// //               Text(
// //                 'Location: $location',
// //                 style: TextStyle(fontSize: 24.0),
// //               ),
// //               SizedBox(height: 16.0),
// //               Text(
// //                 'Temperature: $temperature',
// //                 style: TextStyle(fontSize: 24.0),
// //               ),
// //               SizedBox(height: 16.0),
// //               Text(
// //                 'Weather: $weather',
// //                 style: TextStyle(fontSize: 24.0),
// //               ),
// //             ],
// //           ),
// //         ),
// //     );
// //   }
// // }
