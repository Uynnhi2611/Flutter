import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_chap5 extends StatefulWidget {
  const Home_chap5({Key? key});

  @override
  State<Home_chap5> createState() => _HomeState();
}

class _HomeState extends State<Home_chap5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home'),
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: NewWidget(),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(), // Add physics to prevent overflow
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            buildRow(),
          ],
        ),
      ),
    );
  }

  Row buildRow() {
    return Row(
      children: <Widget>[
        Container(
          color: Colors.yellow,
          height: 40.0,
          width: 40.0,
        ),
        SizedBox(width: 16), // Use SizedBox instead of Padding
        Expanded(
          child: Container(
            color: Colors.amber,
            height: 40.0,
            width: 40.0,
          ),
        ),
        SizedBox(width: 16),
        Container(
          color: Colors.brown,
          height: 40.0,
          width: 40.0,
        ),
        SizedBox(width: 16),
        RowWidget(),
      ],
    );
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              color: Colors.yellow,
              height: 40.0,
              width: 40.0,
            ),
            SizedBox(height: 16),
            Container(
              color: Colors.amber,
              height: 30.0, // Adjust height
              width: 30.0, // Adjust width
            ),
            SizedBox(height: 16),
            Container(
              color: Colors.brown,
              height: 20.0,
              width: 20.0,
            ),
            Divider(),
            CircleAvatarStack(),
            Divider(),
            Text('End of the Line'),
          ],
        ),
      ],
    );
  }
}

class CircleAvatarStack extends StatelessWidget {
  const CircleAvatarStack({Key? key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.lightGreen,
          radius: 50.0, // Adjust radius
          child: Stack(
            children: <Widget>[
              Container(
                height: 50.0,
                width: 50.0,
                color: Colors.yellow,
              ),
              Container(
                height: 30.0,
                width: 30.0,
                color: Colors.amber,
              ),
              Container(
                height: 20.0,
                width: 20.0,
                color: Colors.brown,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
