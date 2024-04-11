import 'package:flutter/material.dart';

class Resuable extends StatelessWidget {
  const Resuable({super.key, required this.childcard, this.icon, required this.colour});
  final IconData? icon;
  final Color colour;
  final Widget childcard;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
        

            borderRadius: BorderRadius.circular(10), color: colour),
        child: childcard);
  }
}
