// ignore_for_file: prefer_const_constructors

import 'package:bmi/resultpage.dart';
import 'package:flutter/material.dart';
import 'inputpage.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Inputpage(),
      routes: {
        '/result':(context)=>ResultPage()
      },
      
      );
  }
}
