import 'dart:ui';

import 'package:flutter/material.dart';

class MyHomePage_bai5_chap7 extends StatefulWidget {
  const MyHomePage_bai5_chap7({super.key});
  @override
  State<MyHomePage_bai5_chap7> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage_bai5_chap7>  {
  double _opacity = 1.0;
  void _animatedOpacity() {
    setState(() {
      _opacity = _opacity == 1.0 ? 0.0 : 1.0;
    });
  }
  bool _crossFadeStateShowFirst = true;
  void _crossFade() {
    setState(() {
      _crossFadeStateShowFirst = _crossFadeStateShowFirst ? false : true;
    });
  }
  @override
  Widget build(BuildContext context) {
    double maxHeight = MediaQuery.of(context).size.height;
    double maxWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Bài 5'),
      ),
      body: Container(
        width: maxWidth,
          height: maxHeight,
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AnimatedCrossFade(
                duration: Duration(seconds: 7), //Thời gian chạy hiệu ứng động
                reverseDuration: Duration(milliseconds: 500),
                sizeCurve: Curves.bounceOut, //Hiệu ứng animation chuyển đổi
                crossFadeState: _crossFadeStateShowFirst ? CrossFadeState.showFirst :
                CrossFadeState.showSecond, //Đặt hoạt ảnh hiện tại first hoặc second
                firstChild: AnimatedCrossFade(
                  crossFadeState: _crossFadeStateShowFirst ? CrossFadeState.showFirst :
                  CrossFadeState.showSecond,
                  duration: Duration(seconds: 1), //Thời gian chạy hiệu ứng động
                  reverseDuration: Duration(milliseconds: 500),
                  firstChild: Container(
                    child: Text(
                      'XXXXXXX',
                      style: TextStyle(fontSize:70),
                    ),
                  ),
                  secondChild: AnimatedOpacity(
                    duration: Duration(seconds: 20), //Thời gian chạy hiệu ứng động
                    opacity: _opacity,
                    child: Container(
                      child: Text(
                        'XXXXXXX',
                        style: TextStyle(fontSize:70,decoration: TextDecoration.lineThrough),
                      ),
                    ),
                  ),
                ),
                secondChild: AnimatedOpacity(
                  duration: Duration(seconds: 1), //Thời gian chạy hiệu ứng động
                  opacity: _opacity==0 ? 1 : 0,
                  child: Container(
                    child: Text(
                      'XXXXXXX',
                      style: TextStyle(fontSize:70),
                    ),
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {_crossFade();_animatedOpacity();},
                  icon: AnimatedCrossFade(
                    crossFadeState: _crossFadeStateShowFirst ? CrossFadeState.showFirst :
                    CrossFadeState.showSecond,
                    duration: Duration(seconds: 7), //Thời gian chạy hiệu ứng động
                    reverseDuration: Duration(milliseconds: 500),
                    firstChild: Icon(
                      Icons.dangerous_rounded,
                      color: Colors.red,
                      size: 60,
                    ),
                    secondChild: Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 60,
                    ),
                  ),
              ),
            ],
          ),

      ),
    );
  }
}
