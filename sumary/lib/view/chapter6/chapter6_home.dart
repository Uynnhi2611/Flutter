import 'package:flutter/material.dart';
import 'package:sumary/widget/appBar_widget.dart';
import 'package:sumary/constant/app_string.dart';
import 'package:sumary/widget/button_widget.dart';

class home6 extends StatefulWidget {
  const home6({super.key});

  @override
  State<home6> createState() => _home6State();
}

class _home6State extends State<home6> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'page',
      child: Scaffold(
        appBar:PreferredSize(
          preferredSize: const Size.fromHeight(55),
          child: appBar_widget(title: AppString.chap6),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buttonText_widget(router: '/chap6/bai1', title: 'Bài Tập 1'),
            buttonText_widget(router: '/chap6/bai2', title: 'Bài Tập Vận Dụng'),
            buttonText_widget(router: '/chap6/bai3', title: 'Bài Tập Cá Nhân')
          ],
        ),
      ),
    );
  }
}


