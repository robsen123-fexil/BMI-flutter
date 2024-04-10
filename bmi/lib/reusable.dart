import 'package:flutter/material.dart';

class Resuable extends StatelessWidget {
  const Resuable({super.key,   required this.childcard, this.icon});
  final IconData? icon;

  final  Widget childcard;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.green),
      child:childcard
    );
  }
}
