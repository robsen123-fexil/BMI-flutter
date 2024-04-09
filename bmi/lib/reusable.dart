import 'package:flutter/material.dart';

class Resuable extends StatelessWidget {
  const Resuable({super.key, required this.name, this.icon});
  final IconData? icon;
  final String name;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.green),
      child:  Text(
        name, style: const  TextStyle(color:Colors.white),
      ),
    );
  }
}
