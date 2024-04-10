import 'package:flutter/material.dart';

class Customicon extends StatelessWidget {
  const Customicon({super.key , required this.name , this.icon});
  final IconData? icon;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text(name, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900),), Icon(icon)],
    );
  }
}
