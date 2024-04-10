// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, avoid_print, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'reusable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'customeicon.dart';

class Inputpage extends StatelessWidget {
  const Inputpage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 21, 15, 15),
        appBar: AppBar(
          title: const Text(
            "BMI calculator",
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 8, 36, 59),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(onTap: () {

                      },
                       child: Resuable(childcard: Customicon(name: "Male", icon: FontAwesomeIcons.mars,),)),
                    ),
                    Expanded(
                      child: GestureDetector(onTap: () {}, child: Resuable(
                            childcard: Customicon(
                              name: "Female",
                              icon:FontAwesomeIcons.venus
                            ),
                          )),
                    ),
                  ]),
            ),
            Expanded(
              child:GestureDetector(
                  
                child:Resuable(
                  childcard: Customicon(name: "height", ) ,
                  
                ))
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Resuable(
                      childcard: Customicon(
                        name: "Weight",
                      ),
                    ),
                  ),
                  Expanded(child: Resuable(
                    childcard: Customicon(
                      name: "Age",
                    ),
                  ))
                ],
              ),
            ),
            Container(
                width: double.infinity,
                height: 60,
                margin: EdgeInsets.all(10),
                color: Color.fromARGB(255, 85, 27, 27),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Calculate",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 127, 83, 83),
                          fontSize: 40,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ))
          ],
        ));
  }
}
