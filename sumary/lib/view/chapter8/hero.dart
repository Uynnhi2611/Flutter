import 'package:flutter/material.dart';
import 'fly.dart';
class HeroApp extends StatefulWidget {
  const HeroApp({super.key});

  @override
  State<HeroApp> createState() => _HeroAppState();
}

class _HeroAppState extends State<HeroApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GestureDetector(
            child: Row(
              children: [
                Hero(
                tag: 'format_paint', //tag liên kết giữa 2 page
                  child: Icon( //Giao  diện icon khi bắt đầu
                    Icons.format_paint,
                    color: Colors.lightGreen,
                    size: 120.0,
                  ),
                ),
                Hero(
                  tag: 'ac_unit', //tag liên kết giữa 2 page
                  child: Icon( //Giao  diện icon khi bắt đầu
                    Icons.ac_unit,
                    color: Colors.lightGreen,
                    size: 120.0,
                  ),
                ),
              ],
            ),
            onTap: () {
               Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Fly()),
              );
              //  Navigator.popAndPushNamed(context, '/reminder');


            },
          ),
        ),
      ),
    );
  }
}
