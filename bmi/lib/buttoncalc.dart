// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, file_names

import 'package:flutter/material.dart';

class Buttonbutton extends StatelessWidget {
  const Buttonbutton({super.key, required this.name, required this.ontap});
  final String name;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      // onTap: () {
      //   Navigator.pushNamed(context, '/result');
      // },
      child: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            name,
            style: TextStyle(
                color: Color.fromARGB(255, 254, 254, 254),
                fontSize: 30,
                fontWeight: FontWeight.w800),
          )
        ]),
        width: double.infinity,
        height: 100,
        margin: const EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 244, 3, 3),
        ),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  const RoundIconButton(
      {super.key, required this.icon, required this.onPressed});

  final IconData icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0.0,
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor(height: 56, width: 56),
      fillColor: Colors.grey,
      child: Icon(icon),
    );
  }
}
