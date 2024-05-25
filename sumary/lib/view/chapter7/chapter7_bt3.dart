import 'dart:ui';

import 'package:flutter/material.dart';

class MyHomePage_bai3_chap7 extends StatefulWidget {
  const MyHomePage_bai3_chap7({super.key});
  @override
  State<MyHomePage_bai3_chap7> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage_bai3_chap7> {
  //----------------------------------------------------------
  double _opacity = 1.0;
  void _animatedOpacity() {
    setState(() {
      _opacity = _opacity == 1.0 ? 0.0 : 1.0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Bài 3'),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: <Widget>[
              Text('Animation Opacity',style: TextStyle(fontSize: 25)),
              AnimatedOpacity(
                duration: Duration(milliseconds: 2000), //Thời gian chạy hiệu ứng động
                opacity: _opacity, //hiểu ứng ẩn hiện
                onEnd: (){//Đọc sự kiện khi kết thúc quá trình chuyển đổi sẽ thực hiện hành động
                  _opacity==1 ? print('Hiện nè') : print('Mất tiêu nè');
                },
                // curve: Curves.bounceOut, //Hiệu ứng animation khi ẩn hoặc hiện
                alwaysIncludeSemantics: true,
                child: Container(
                  color: Colors.amber,
                  height: 350.0,
                  width: 350.0,
                  child: TextButton(
                    child: Text('Tap to Fade',style: TextStyle(fontSize: 25),),
                    onPressed: () {
                      _animatedOpacity();
                    },
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
