import 'package:flutter/material.dart';
import 'package:chap11/widgets/customGestureDetector.dart';

class CustomGestureDetectorPage extends StatefulWidget {
  @override
  _CustomGestureDetectorPageState createState() => _CustomGestureDetectorPageState();
}

class _CustomGestureDetectorPageState extends State<CustomGestureDetectorPage> {
  String _gestureDetected = '';

  void _displayGestureDetected(String gesture) {
    setState(() {
      _gestureDetected = gesture;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Gesture Detector'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            CustomGestureDetector(
              onGestureDetected: _displayGestureDetected,
              gestureDetected: _gestureDetected,
            ),
            Divider(
              color: Colors.black,
              height: 44.0,
            ),
            // Add other widgets here if needed
          ],
        ),
      ),
    );
  }
}
