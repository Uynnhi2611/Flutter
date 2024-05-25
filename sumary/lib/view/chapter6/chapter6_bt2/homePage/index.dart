import 'package:flutter/material.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/homePage/column_listFunction.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        title: const Text('Home Page'),
      ),
      body: listFunction(),
    );
  }
}


