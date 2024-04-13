// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'buttoncalc.dart';

import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
         Scaffold(
            backgroundColor: Color.fromARGB(255, 8, 32, 50),
            appBar: AppBar(
              title: const Text("Result",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30)),
              centerTitle: true,
              backgroundColor: Colors.blueGrey,
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 24, 44, 60),
                    margin: EdgeInsets.all(10),
                    alignment: Alignment.bottomLeft,
                    child: Expanded(
                        child: Text(
                      "Your Result",
                      style: TextStyle(
                          color: Color.fromARGB(255, 248, 247, 247),
                          fontSize: 30,
                          fontWeight: FontWeight.w900),
                    )),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Normal", textAlign: TextAlign.center, style: TextStyle(color:Color.fromARGB(255, 255, 255, 255)),),
                          Text("22", textAlign: TextAlign.center,style: TextStyle(color:Colors.white, fontWeight: FontWeight.w900, fontSize: 30),),
                          SizedBox(
                            height: 30,
                          ),
                          Text(" Keep Going you are doing Great!!!", textAlign: TextAlign.end, style: TextStyle(color:Colors.white, backgroundColor: Colors.green, fontWeight: FontWeight.w900, fontSize: 20),),
                          
                        ],
                      ),
                    ),
                  ),
                 Expanded(
                    child: Buttonbutton(
                  name: "Re-calculate",
                  ontap: () {
                    Navigator.pushNamed(context, '/');
                  },
                ))
              ],
            ));
  }
}
