import 'package:flutter/material.dart';

class DraggableWithTarget extends StatefulWidget {
  @override
  _DraggableWithTargetState createState() => _DraggableWithTargetState();
}

class _DraggableWithTargetState extends State<DraggableWithTarget> {
  Color _paintedColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Draggable<int>(
          child: Column(
            children: <Widget>[
              Icon(
                Icons.palette,
                color: Colors.deepOrange,
                size: 48.0,
              ),
              Text(
                'Drag Me below to change color',
              ),
            ],
          ),
          childWhenDragging: Icon(
            Icons.palette,
            color: Colors.grey,
            size: 48.0,
          ),
          feedback: Icon(
            Icons.brush,
            color: Colors.deepOrange,
            size: 80.0,
          ),
          data: Colors.deepOrange.value,
        ),
        SizedBox(height: 20),
        DragTarget<int>(
          onAccept: (colorValue) {
            setState(() {
              _paintedColor = Color(colorValue);
            });
          },
          builder: (BuildContext context, List<dynamic> acceptedData, List<dynamic> rejectedData) {
            return acceptedData.isEmpty
                ? Text(
              'Drag To and see color change',
              style: TextStyle(color: _paintedColor),
            )
                : Text(
              'Painting Color: $acceptedData',
              style: TextStyle(
                color: Color(acceptedData[0]),
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      ],
    );
  }
}
