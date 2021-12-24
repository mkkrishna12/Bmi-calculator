import 'package:flutter/material.dart';
import 'Screens/input_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme : ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        accentColor : Colors.purple,
        scaffoldBackgroundColor:  Color(0xFF0A0E21),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color:  Colors.white,
          )
        )
      ),
      home: InputPage(),
    );
  }
}
