import 'package:flutter/material.dart';

class IconSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 16, // Adjust this value if you need some spacing from the top
      right: 0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildIconButton('assets/images/Group 1325.png'),
          SizedBox(height: 4),
          _buildIconButton('assets/images/Group 1326.png'),
        ],
      ),
    );
  }

  Widget _buildIconButton(String imagePath) {
    return Padding(
      padding: EdgeInsets.all(0.0),  // Remove padding
      child: Image.asset(imagePath, width: 40, height: 40),
    );
  }
}
