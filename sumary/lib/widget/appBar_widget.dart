import 'package:flutter/material.dart';
import 'package:sumary/constant/app_color.dart';
class appBar_widget extends StatelessWidget{
  const appBar_widget({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(title),
      backgroundColor: AppColor.appbar_background_color,
      leading: BackButton(),
    );
  }
}