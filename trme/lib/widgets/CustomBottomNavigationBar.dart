import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0), // Khoảng cách với các cạnh của màn hình
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20.0)), // Bo tròn cả 4 góc
        child: Container(
          color: Color(0xFFFFC6C0F), // Màu nền
          height: 70, // Chiều cao của thanh điều hướng
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem('assets/images/home.png', 0),
              _buildNavItem('assets/images/Consultant.png', 1),
              _buildNavItem('assets/images/Y99dDJ.tif.png', 2),
              _buildNavItem('assets/images/tr90.png', 3),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildNavItem(String assetPath, int index) {
    return InkWell(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            assetPath,
            color: _selectedIndex == index ? Colors.white : Colors.white.withOpacity(0.6),
            width: 24,
            height: 24,
          ),
        ],
      ),
    );
  }
}