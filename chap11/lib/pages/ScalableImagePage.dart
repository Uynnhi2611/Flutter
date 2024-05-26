import 'package:chap11/widgets/ScalableImage.dart';
import 'package:flutter/material.dart';


class ScalableImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scalable Image'),
      ),
      body: SafeArea(
        child: ScalableImage(),
      ),
    );
  }
}
