import 'package:flutter/material.dart';

class AppbarChild extends StatelessWidget {
  final String title;

  const AppbarChild({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      backgroundColor: Colors.orangeAccent, // Thay đổi màu nền thành màu cam nhạt
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
