// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'resultpage.dart';

class ButtonCalc extends StatelessWidget {
  const ButtonCalc({
    required this.ontap,
    required this.type,
    super.key,
  });
  final VoidCallback ontap;
  final String type;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ResultPage()));
      },
      child: Container(
          width: double.infinity,
          height: 60,
          margin: const EdgeInsets.all(10),
          color: Color.fromARGB(255, 30, 27, 27),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Calculate",
                style: TextStyle(
                    color: Color.fromARGB(255, 135, 138, 150),
                    fontSize: 40,
                    fontWeight: FontWeight.w600),
              ),
            ],
          )),
    );
  }
}
