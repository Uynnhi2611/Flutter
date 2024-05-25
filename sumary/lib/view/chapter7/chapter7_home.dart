import 'package:flutter/material.dart';
import 'package:sumary/widget/appBar_widget.dart';
import 'package:sumary/constant/app_string.dart';
import 'package:sumary/widget/button_widget.dart';

class home7 extends StatefulWidget {
  const home7({super.key});

  @override
  State<home7> createState() => _home7State();
}

class _home7State extends State<home7> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'page',
      child: Scaffold(
        appBar:PreferredSize(
          preferredSize: const Size.fromHeight(55),
          child: appBar_widget(title: AppString.chap7),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buttonText_widget(router: '/chap7/bai1', title: 'Bài Tập 1'),
            buttonText_widget(router: '/chap7/bai2', title: 'Bài Tập 2'),
            buttonText_widget(router: '/chap7/bai3', title: 'Bài Tập 3'),
            buttonText_widget(router: '/chap7/bai4', title: 'Bài Tập 4'),
            buttonText_widget(router: '/chap7/bai5', title: 'Bài Tập 5'),
          ],
        ),
      ),
    );
  }
}


