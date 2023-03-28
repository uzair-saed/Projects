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
