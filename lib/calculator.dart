import 'package:flutter/material.dart';

void main() => runApp(CalculatorApp());

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  double _result = 0.0;
  double _firstNumber = 0.0;
  double _secondNumber = 0.0;
  String _operator = '';

  void _onNumberButtonPressed(String buttonText) {
    if (buttonText == 'C') {
      _result = 0.0;
      _firstNumber = 0.0;
      _secondNumber = 0.0;
      _operator = '';
    } else if (buttonText == '+' ||
        buttonText == '-' ||
        buttonText == '*' ||
        buttonText == '/') {
      _firstNumber = _result;
      _result = 0.0;
      _operator = buttonText;
    } else if (buttonText == '=') {
      _secondNumber = _result;
      switch (_operator) {
        case '+':
          _result = _firstNumber + _secondNumber;
          break;
        case '-':
          _result = _firstNumber - _secondNumber;
          break;
        case '*':
          _result = _firstNumber * _secondNumber;
          break;
        case '/':
          _result = _firstNumber / _secondNumber;
          break;
      }
    } else {
      _result = double.parse(buttonText);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromRGBO(4, 28, 16, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(4,30, 16, 1),
        title: Text('Calculator'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 90,
            color: Colors.white,
            child: Text(
              '$_result',
              style: TextStyle(fontSize: 52,fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildButton('7'),
              _buildButton('8'),
              _buildButton('9'),
              _buildButton('/'),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildButton('4'),
              _buildButton('5'),
              _buildButton('6'),
              _buildButton('*'),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildButton('1'),
              _buildButton('2'),
              _buildButton('3'),
              _buildButton('-'),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildButton('C'),
              _buildButton('0'),
              _buildButton('='),
              _buildButton('+'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String buttonText) {
    return ElevatedButton(
      child: Text(
        buttonText,
        style: TextStyle(fontSize: 25),
      ),
      onPressed: () => _onNumberButtonPressed(buttonText),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black, backgroundColor: Colors.grey[200], padding: EdgeInsets.all(20),
      ),
    );
  }
}
