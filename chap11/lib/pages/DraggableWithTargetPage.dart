import 'package:chap11/widgets/DraggableWithTarget.dart';
import 'package:flutter/material.dart';


class DraggableWithTargetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Draggable With Target'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            DraggableWithTarget(),
            // Add other widgets here if needed
          ],
        ),
      ),
    );
  }
}
