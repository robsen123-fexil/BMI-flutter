
import 'package:flutter/material.dart';


class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: const Text("Result", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30)),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body:const Column(children: [
           Text("Your Result")
      ],)
    ));
  }
}
