import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';


class Customicon extends StatelessWidget {
  const Customicon({super.key, required this.name, this.icon});
  final IconData? icon;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          name,
          style:  TextStyle(
              fontSize: 30, fontWeight: FontWeight.w900, color: textcolor),
        ),
        Icon(icon, color: textcolor, size: 40,)
      ],
    );
  }
}
