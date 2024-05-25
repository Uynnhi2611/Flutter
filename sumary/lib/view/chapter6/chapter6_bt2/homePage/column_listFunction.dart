import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/exercise1/exercise1Index.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/exercise2/exercise2Index.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/exercise3/exercise3Index.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/exercise4/exercise4Index.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/exercise5/exercise5Index.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/exercise6/exercise6Index.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/exercise7/exercise7Index.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/exercise8/exercise8Index.dart';

class ListFunction extends StatelessWidget {
  ListFunction({
    super.key,
  });

  final Random _random = Random();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white70,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Exercise1()));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    child: Center(
                      child: const Text(
                        'Bài 1',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Exercise2()));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    child: Center(
                      child: const Text(
                        'Bài 2',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Exercise3()));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    child: Center(
                      child: const Text(
                        'Bài 3',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Exercise4()));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    child: Center(
                      child: const Text(
                        'Bài 4',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Exercise5()));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    child: Center(
                      child: const Text(
                        'Bài 5',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Exercise6()));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    child: Center(
                      child: const Text(
                        'Bài 6',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Exercise7()));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    child: Center(
                      child: const Text(
                        'Bài 7',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Exercise8()));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    child: Center(
                      child: const Text(
                        'Bài 8',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: const Text('Home Page'),
      ),
      body: ListFunction(),
    );
  }
}
