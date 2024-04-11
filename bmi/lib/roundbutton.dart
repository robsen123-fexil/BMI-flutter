// ignore_for_file: camel_case_types, unused_label

import 'package:flutter/material.dart';

class roundbutton extends StatelessWidget {
  const roundbutton({required this.icon, required this.onpress, super.key});
  final IconData icon;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FloatingActionButton(
          onPressed: onpress,
          // ignore: sort_child_properties_last
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            

            children: [
           
          Icon(icon)],),
          backgroundColor: Colors.grey,

        ),
      ],
    );
  }
}
