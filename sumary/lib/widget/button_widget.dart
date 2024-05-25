import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sumary/constant/app_color.dart';

class buttonText_widget extends StatelessWidget {
  const buttonText_widget({
    super.key,
    required this.router,
    required this.title,
  });
  final String router;
  final String title;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: ()=>context.go(router),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColor.button_main_color),
      ),

      child: Text(
        title,
        style: TextStyle(
          fontSize: 40,
          color: Colors.black,
        ),
      ),
    );
  }
}