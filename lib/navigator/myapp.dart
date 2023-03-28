// import 'package:flutter/material.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Screen Switcher',
//       home: ScreenSwitcher(),
//     );
//   }
// }
//
// class ScreenSwitcher extends StatefulWidget {
//   @override
//   _ScreenSwitcherState createState() => _ScreenSwitcherState();
// }
//
// class _ScreenSwitcherState extends State<ScreenSwitcher> {
//   int _currentScreenIndex = 0;
//
//   void _onScreen1Pressed() {
//     setState(() {
//       _currentScreenIndex = 0;
//     });
//   }
//
//   void _onScreen2Pressed() {
//     setState(() {
//       _currentScreenIndex = 1;
//     });
//   }
//
//   void _onScreen3Pressed() {
//     setState(() {
//       _currentScreenIndex = 2;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Screen $_currentScreenIndex'),
//       ),
//       body: _currentScreenIndex == 0
//           ? Screen1(onScreen2Pressed: _onScreen2Pressed, onScreen3Pressed: _onScreen3Pressed)
//           : _currentScreenIndex == 1
//           ? Screen2(onScreen1Pressed: _onScreen1Pressed, onScreen3Pressed: _onScreen3Pressed)
//           : Screen1(onScreen2Pressed: _onScreen1Pressed, onScreen1Pressed: _onScreen2Pressed),
//     );
//   }
// }
//
// class Screen1 extends StatelessWidget {
//   final VoidCallback onScreen2Pressed;
//   final VoidCallback onScreen3Pressed;
//
//   Screen1({required this.onScreen2Pressed, required this.onScreen3Pressed});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             'Screen 1',
//             style: TextStyle(fontSize: 32.0),
//           ),
//           SizedBox(height: 32.0),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 onPressed: onScreen2Pressed,
//                 child: Text('Screen 2'),
//               ),
//               SizedBox(width: 16.0),
//               ElevatedButton(
//                 onPressed: onScreen3Pressed,
//                 child: Text('Screen 3'),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class Screen2 extends StatelessWidget {
//   final VoidCallback onScreen1Pressed;
//   final VoidCallback onScreen3Pressed;
//
//   Screen2({required this.onScreen1Pressed, required this.onScreen3Pressed});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             'Screen 2',
//             style: TextStyle(fontSize: 32.0),
//           ),
//           SizedBox(height: 32.0),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 onPressed: onScreen1Pressed,
//                 child: Text('Screen 1'),
//               ),
//               SizedBox(width: 16.0),
//               ElevatedButton(
//                 onPressed: onScreen3Pressed,
//                 child: Text('Screen 3'),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
// //
// // class Screen3 extends StatelessWidget {
// //   final VoidCallback onScreen1Pressed;
// //   final VoidCallback onScreen2Pressed;
// //
// //   Screen3({required this.onScreen1Pressed, required this.onScreen2Pressed});
// //
// //   @override
// //   Widget build(BuildContext
