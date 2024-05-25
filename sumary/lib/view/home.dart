import 'package:flutter/material.dart';
import 'package:sumary/constant/app_color.dart';
import 'package:sumary/constant/app_string.dart';
import '../widget/button_widget.dart';
import 'package:sumary/router/routerPage.dart';
class home extends StatelessWidget {
  const home({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Summary App',
      routerConfig: routerPage.router,
    );
  }
}
class home_page extends StatefulWidget {
  const home_page({super.key,required this.title });
  final String title;
  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'page',
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.appbar_background_color,
          centerTitle: true,
          title: Text(widget.title),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buttonText_widget(router: '/chap4',title: AppString.chap4,),
            buttonText_widget(router: '/chap5',title: AppString.chap5,),
            buttonText_widget(router: '/chap6',title: AppString.chap6,),
            buttonText_widget(router: '/chap7',title: AppString.chap7,),
            buttonText_widget(router: '/chap8',title: AppString.chap8,),
          ],
        ),
      ),
    );
  }
}



