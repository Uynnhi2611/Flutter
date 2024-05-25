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
class listFunction extends StatelessWidget {
  listFunction({
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
              padding: EdgeInsets.only(left: 5,top: 10,right: 20,bottom: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Exercise1()));
                  },
                  child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.white,
                            Color.fromRGBO(_random.nextInt(255), _random.nextInt(255), _random.nextInt(255), 1),
                          ],
                        ),
                      ),
                      child: Center(
                        child: const Text(
                            'Giải Mã Chuỗi',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                            ),
                        ),
                      ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20,top: 10,right: 5,bottom: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Exercise2()));
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15.0),
                        topLeft: Radius.circular(15.0),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [
                          Colors.white,
                          Color.fromRGBO(_random.nextInt(255), _random.nextInt(255), _random.nextInt(255), 1),
                        ],
                      ),
                    ),
                    child: Center(
                      child: const Text(
                        'Chia 3',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5,top: 10,right: 20,bottom: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Exercise3()));
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.white,
                          Color.fromRGBO(_random.nextInt(255), _random.nextInt(255), _random.nextInt(255), 1),
                        ],
                      ),
                    ),
                    child: Center(
                      child: const Text(
                        'Số Lớn Nhì',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20,top: 10,right: 5,bottom: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Exercise4()));
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15.0),
                        topLeft: Radius.circular(15.0),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [
                          Colors.white,
                          Color.fromRGBO(_random.nextInt(255), _random.nextInt(255), _random.nextInt(255), 1),
                        ],
                      ),
                    ),
                    child: Center(
                      child: const Text(
                        'Độ Lệch',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5,top: 10,right: 20,bottom: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Exercise5()));
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.white,
                          Color.fromRGBO(_random.nextInt(255), _random.nextInt(255), _random.nextInt(255), 1),
                        ],
                      ),
                    ),
                    child: Center(
                      child: const Text(
                        'Phòng Thi',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20,top: 10,right: 5,bottom: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Exercise6()));
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15.0),
                        topLeft: Radius.circular(15.0),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [
                          Colors.white,
                          Color.fromRGBO(_random.nextInt(255), _random.nextInt(255), _random.nextInt(255), 1),
                        ],
                      ),
                    ),
                    child: Center(
                      child: const Text(
                        'Số Xe Đẹp',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5,top: 10,right: 20,bottom: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Exercise7()));
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.white,
                          Color.fromRGBO(_random.nextInt(255), _random.nextInt(255), _random.nextInt(255), 1),
                        ],
                      ),
                    ),
                    child: Center(
                      child: const Text(
                        'Cắt Giảm Số',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20,top: 10,right: 5,bottom: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Exercise8()));
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15.0),
                        topLeft: Radius.circular(15.0),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [
                          Colors.white,
                          Color.fromRGBO(_random.nextInt(255), _random.nextInt(255), _random.nextInt(255), 1),
                        ],
                      ),
                    ),
                    child: Center(
                      child: const Text(
                        'Tiền Điện',
                        style: TextStyle(
                          color: Colors.black,
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

