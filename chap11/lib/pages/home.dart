import 'package:chap11/pages/TripPage.dart';
import 'package:flutter/material.dart';
import 'CustomGestureDetectorPage.dart';
import 'DraggableWithTargetPage.dart';
import 'ScalableImagePage.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center vertically
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CustomGestureDetectorPage()),
                  );
                },
                child: Text('Go to Custom Gesture Detector'),
              ),
              SizedBox(height: 20), // Add spacing between buttons
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DraggableWithTargetPage()),
                  );
                },
                child: Text('Go to Draggable With Target'),
              ),
              SizedBox(height: 20), // Add spacing between buttons
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ScalableImagePage()),
                  );
                },
                child: Text('Go to Scalable Image'),
              ),
              SizedBox(height: 20), // Add spacing between buttons
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TripsPage()),
                  );
                },
                child: Text('Go to Trips Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
