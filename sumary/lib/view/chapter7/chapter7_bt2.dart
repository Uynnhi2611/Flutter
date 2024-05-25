import 'dart:ui';

import 'package:flutter/material.dart';

class MyHomePage_bai2_chap7 extends StatefulWidget {
  const MyHomePage_bai2_chap7({super.key});
  @override
  State<MyHomePage_bai2_chap7> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage_bai2_chap7> {

  //----------------------------------------------------------

  bool _crossFadeStateShowFirst = true;
  void _crossFade() {
    setState(() {
      _crossFadeStateShowFirst = _crossFadeStateShowFirst ? false : true;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Bai 2'),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: <Widget>[
              Text('Animation Cross Fade', style: TextStyle(fontSize: 25),),
              Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    AnimatedCrossFade(
                      duration: Duration(milliseconds: 500), //Thời gian chạy hiệu ứng động
                      sizeCurve: Curves.bounceOut, //Hiệu ứng animation chuyển đổi
                      crossFadeState: _crossFadeStateShowFirst ? CrossFadeState.showFirst :
                      CrossFadeState.showSecond, //Đặt hoạt ảnh hiện tại first hoặc second
                      firstChild: Container(//hoạt ảnh ban đầu
                        color: Colors.amber,
                        height: 200.0,
                        width: 200.0,
                      ),
                      secondChild: Container(//hoạt ảnh sau khi đã chuyển đổi
                        color: Colors.lime,
                        height: 350.0,
                        width: 350.0,
                      ),
                      alignment: Alignment.bottomLeft,//vị trí bắt đầu hoạt ảnh, hoạt ảnh sẽ mở rộng ra từ góc này và thu nhỏ vào góc đó.
                      // excludeBottomFocus: true, //Dùng cho widget dạng textfiled khi chuyển đổi bàn phím sẽ bị ẩn nếu để true
                      secondCurve: Curves.fastOutSlowIn,//hiệu ứng animation của hoạt ảnh sau chuyển đổi khi chuyển đổi
                      firstCurve: Curves.fastOutSlowIn,//hiệu ứng animation của hoạt ảnh ban đầu khi chuyển đổi
                      reverseDuration: Duration(seconds: 10),//????
                      // layoutBuilder://????


                    ),
                    Positioned.fill(
                      child: TextButton(
                        child: Text('Tap to\nFade Color & Size',style: TextStyle(fontSize: 25)),
                        onPressed: () {
                          _crossFade();
                        },
                      ),
                    ),
                  ],
              ),

          ],
        ),
      ),
    );
  }
}
