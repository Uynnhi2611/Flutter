import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'gratitude.dart';
import 'left_drawer.dart';
import 'right_drawer.dart';
class MyHomePage_bai1_chap8 extends StatefulWidget {
  const MyHomePage_bai1_chap8({super.key});
  @override
  State<MyHomePage_bai1_chap8> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage_bai1_chap8> {
  String _howAreYou = "...";
  List _gratitudeResponse=[-1];
  void _openPageGratitude({required BuildContext context, bool fullscreenDialog = false}) async {
    _gratitudeResponse = await Navigator.push(
      context,
      MaterialPageRoute(
          fullscreenDialog: fullscreenDialog,
          builder: (context) => Gratitude(
            radioGroupValue: _gratitudeResponse[0],
          ),
      ),
    );
    setState(() {
      _howAreYou = _gratitudeResponse[1]==null ? _howAreYou :_gratitudeResponse[1];
    });
  }
  ///-----------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Bài 1'),
      ),
      drawer: LeftDrawerWidget(),
      endDrawer: RightDrawerWidget(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text('Grateful for: $_howAreYou', style: TextStyle(fontSize: 32.0),),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade200,
        onPressed: () => _openPageGratitude(context: context),
        tooltip: 'About',
        child: Icon(Icons.add),
      ),
    );
  }
}
