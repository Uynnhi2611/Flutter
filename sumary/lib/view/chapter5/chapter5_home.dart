import 'package:flutter/material.dart';
import 'package:sumary/widget/appBar_widget.dart';
import 'package:sumary/constant/app_string.dart';
import 'package:sumary/widget/button_widget.dart';

class home5 extends StatefulWidget {
  const home5({super.key});

  @override
  State<home5> createState() => _home5State();
}

class _home5State extends State<home5> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'page',
      child: Scaffold(
        appBar:PreferredSize(
          preferredSize: const Size.fromHeight(55),
          child: appBar_widget(title: AppString.chap5),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buttonText_widget(router: '/chap5/bai1', title: 'Bài Tập 1'),
          ],
        ),
      ),
    );
  }
}


