import 'package:flutter/material.dart';
import '../widgets/CustomNavigationBar.dart';
import '../widgets/CustomBottomNavigationBar.dart';
import '../widgets/IconSection.dart';
import '../widgets/MyTransformationPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomNavigationBar(),
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: Stack(
        children: [
          MyTransformationContent(), // Nội dung cuộn
          IconSection(), // Icon cố định
        ],
      ),
    );
  }
}
