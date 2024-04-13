// ignore_for_file: camel_case_types, unused_label

import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({required this.herotag,required this.icon, required this.onpress, super.key});
  final IconData icon;
  final VoidCallback onpress;
  final String herotag;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FloatingActionButton(
          
          heroTag: herotag,
          onPressed: onpress,
          // ignore: sort_child_properties_last
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            
        
            children: [
           
          Icon(icon, size: 20,)],),
          backgroundColor: Colors.grey, 
        
        ),
      ],
    );
  }
}
