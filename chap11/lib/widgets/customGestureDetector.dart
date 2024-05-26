import 'package:flutter/material.dart';

class CustomGestureDetector extends StatelessWidget {
  final ValueChanged<String> onGestureDetected;
  final String gestureDetected;

  CustomGestureDetector({
    required this.onGestureDetected,
    required this.gestureDetected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('onTap');
        onGestureDetected('onTap');
      },
      onDoubleTap: () {
        print('onDoubleTap');
        onGestureDetected('onDoubleTap');
      },
      onLongPress: () {
        print('onLongPress');
        onGestureDetected('onLongPress');
      },
      onPanUpdate: (DragUpdateDetails details) {
        print('onPanUpdate: $details');
        onGestureDetected('onPanUpdate:\n$details');
      },
      child: Container(
        color: Colors.lightGreen.shade100,
        width: double.infinity,
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: <Widget>[
            Icon(
              Icons.access_alarm,
              size: 98.0,
            ),
            Text(gestureDetected),
          ],
        ),
      ),
    );
  }
}
