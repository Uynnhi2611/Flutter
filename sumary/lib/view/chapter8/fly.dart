import 'package:flutter/material.dart';
class Fly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.shortestSide / 2;
    return Scaffold(
        appBar: AppBar(
        title: Text('Fly'),
    ),
      body: SafeArea(
        child: Stack(
          children: [
            Hero(
              tag: 'format_paint', //tag liên kết giữa 2 page
              child: Container(
                alignment: Alignment.centerRight,
                child: Icon( // Giao diện icon sau khi kích hoạt animation
                  Icons.add,
                  color: Colors.red,
                  size: _width,
                ),
              ),
            ),
            Hero(
              tag: 'ac_unit', //tag liên kết giữa 2 page
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Icon( // Giao diện icon sau khi kích hoạt animation
                  Icons.access_time_sharp,
                  color: Colors.red,
                  size: _width,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}