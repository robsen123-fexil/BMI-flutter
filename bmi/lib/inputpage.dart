// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, avoid_print, unnecessary_import, unused_element, depend_on_referenced_packages, unused_label, camel_case_types, use_key_in_widget_constructors, use_super_parameters

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'reusable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'customeicon.dart';
import 'roundbutton.dart';
import 'constants.dart';
import 'resultpage.dart';

enum Gender { male, female }

class Inputpage extends StatefulWidget {
  const Inputpage({Key? key}) : super(key: key);

  @override
  State<Inputpage> createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  int height = 180;
  int weight = 60;
  int age = 21;
  Gender? selectedgender;
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
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedgender = Gender.male;
                            });
                          },
                          child: Resuable(
                            colour: selectedgender == Gender.male
                                ? clicked
                                : notclicked,
                            childcard: Customicon(
                              name: "Male",
                              icon: FontAwesomeIcons.mars,
                            ),
                          )),
                    ),
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedgender = Gender.female;
                            });
                          },
                          child: Resuable(
                            colour: selectedgender == Gender.female
                                ? clicked
                                : notclicked,
                            childcard: Customicon(
                                name: "Female", icon: FontAwesomeIcons.venus),
                          )),
                    ),
                  ]),
            ),
            Expanded(
                child: Resuable(
                    colour: Colors.blue,
                    childcard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Height",
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 30),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              "cm",
                              style: TextStyle(fontWeight: FontWeight.w900),
                            )
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            trackHeight: 1,
                            thumbColor: Color.fromRGBO(170, 56, 56, 1),
                            activeTrackColor:
                                Color.fromARGB(255, 248, 248, 248),
                            inactiveTickMarkColor: Colors.black,
                            thumbShape: const RoundSliderThumbShape(
                                enabledThumbRadius: 10),
                            overlayShape: const RoundSliderOverlayShape(
                                overlayRadius: 20),
                          ),
                          child: Slider(
                              value: height.toDouble(),
                              min: 120,
                              max: 220,
                              onChanged: (double newvalue) {
                                setState(() {
                                  height = newvalue.round();
                                });
                              }),
                        )
                      ],
                    ))),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Resuable(
                      colour: Colors.white,
                      childcard: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Weight",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 30),
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 20),
                          ),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                roundbutton(
                                  icon: FontAwesomeIcons.plus,
                                  onpress: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                roundbutton(
                                    icon: FontAwesomeIcons.minus,
                                    onpress: () {
                                      setState(() {
                                        weight++;
                                      });
                                    })
                              ]),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      child: Resuable(
                          colour: Colors.brown,
                          childcard: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "AGE",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w900),
                              ),
                              Text(
                                age.toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 20),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  roundbutton(
                                      icon: FontAwesomeIcons.minus,
                                      onpress: () {
                                        setState(() {
                                          age--;
                                        });
                                      }),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  roundbutton(
                                      icon: FontAwesomeIcons.plus,
                                      onpress: () {
                                        setState(() {
                                          age++;
                                        });
                                      })
                                ],
                              ),
                            ],
                          )))
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResultPage()));
              },
              child: Container(
                  width: double.infinity,
                  height: 60,
                  margin: EdgeInsets.all(10),
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
            )
          ],
        ));
  }
}
