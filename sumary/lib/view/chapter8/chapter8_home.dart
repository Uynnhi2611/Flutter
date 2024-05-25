import 'package:flutter/material.dart';
import 'package:sumary/widget/appBar_widget.dart';
import 'package:sumary/constant/app_string.dart';
import 'package:sumary/widget/button_widget.dart';

class home8 extends StatefulWidget {
  const home8({super.key});

  @override
  State<home8> createState() => _home8State();
}

class _home8State extends State<home8> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'page',
      child: Scaffold(
        appBar:PreferredSize(
          preferredSize: const Size.fromHeight(55),
          child: appBar_widget(title: AppString.chap8),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buttonText_widget(router: '/chap8/bai1', title: 'Bài Tập 1'),
            buttonText_widget(router: '/chap8/bai2', title: 'Bài Tập 2'),
            buttonText_widget(router: '/chap8/bai3', title: 'Bài Tập 3'),
            buttonText_widget(router: '/chap8/bai4', title: 'Bài Tập 4')

          ],
        ),
      ),
    );
  }
}


