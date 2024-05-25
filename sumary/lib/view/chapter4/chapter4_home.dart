import 'package:flutter/material.dart';
import 'package:sumary/widget/appBar_widget.dart';
import 'package:sumary/constant/app_string.dart';
import 'package:sumary/widget/button_widget.dart';
class home4 extends StatefulWidget {
  const home4({super.key});

  @override
  State<home4> createState() => _home4State();
}

class _home4State extends State<home4> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'page',
      child: Scaffold(
        appBar:PreferredSize(
          preferredSize: const Size.fromHeight(55),
          child: appBar_widget(title: AppString.chap4),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buttonText_widget(router: '/chap4/bai1', title: 'Bài Tập 1'),
          ],
        ),
      ),
    );
  }
}


