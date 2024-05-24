import 'package:flutter/material.dart';
import 'pages/home.dart'; // Import the home page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transformation App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Home(), // Sử dụng Home page làm trang chính
    );
  }
}
