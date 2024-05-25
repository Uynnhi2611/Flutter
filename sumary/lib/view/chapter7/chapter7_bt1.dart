import 'dart:ui';

import 'package:flutter/material.dart';

class MyHomePage_bai1_chap7 extends StatefulWidget {
  const MyHomePage_bai1_chap7({super.key});
  @override
  State<MyHomePage_bai1_chap7> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage_bai1_chap7> {
  //-------------------------------------------------------------
  double _height = 100.0;
  double _width = 100.0;
  _increaseWidth() {
    setState(() {
      _width = _width >= 320.0 ? 100.0 : _width += 50.0;
      _height = _height >= 320.0 ? 100.0 : _height += 50.0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Bai 1'),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: <Widget>[
              Text('Animation Container'),
              AnimatedContainer(
                duration: Duration(milliseconds: 400),//tốc độ chuyển đổi càng lớn nhìn càng mượt
                curve:  Curves.fastOutSlowIn,//hiệu ứng animation chuyển đổi
                // color: Colors.amber, // màu container
                height: _height, // chiều cao container
                width: _width, // chiều rộng container
                alignment: Alignment.center, // vị trí của widget child trong container
                // constraints: BoxConstraints(minWidth: 400,minHeight: 400),//Giới hạn kích thước container
                clipBehavior: Clip.antiAlias,//nội dung bên trong một widget được cắt (clipped) nếu nó vượt ra khỏi khu vực của widget đó
                // padding: EdgeInsets.only(top: 30), // đệm dữ liệu trống vào xung quanh button
                decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.only(topRight: Radius.circular(30))),// Trang trí cho container
                // transformAlignment: Alignment.topRight,//Điểm bắt đầu transform cần có thuộc tính transform để thấy hiệu ứng
                // transform: Matrix4.rotationZ(0.5), // thay đổi vị trí, kích thước, xoay và biến dạng các widget con
                // foregroundDecoration: BoxDecoration(color: Colors.pink),//dùng để thiết lập trang trí cho phần foreground của một widget, là phần hiển thị trước mặt của nó, nằm trên tất cả các widget con khác.
                // margin: EdgeInsets.only(left: 100),// canh lề cho khối container
                onEnd: (){//Đọc sự kiện khi kết thúc quá trình chuyển đổi sẽ thực hiện hành động
                  print('Transformers');
                },
                child: TextButton(
                  child: Text('Tap to\nGrow Width\n$_width'),
                  onPressed: () {
                    _increaseWidth();
                  },
                ),
            ),
              Container(
                color: Colors.blue,
                width: _width,
                height: _height,
              ),
          ],
        ),
      ),
    );
  }
}
