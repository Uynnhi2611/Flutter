import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(56.0); // Đặt độ cao mong muốn cho thanh điều hướng

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color(0xFFFC6C0F), width: 2.0), // Đường kẻ màu và độ rộng
        ),
      ),
      child: AppBar(
        backgroundColor: Colors.white, // Nền màu trắng
        leading: IconButton(
          icon: Image.asset('assets/images/bars.png'), // Biểu tượng menu từ thư mục assets
          onPressed: () {},
        ),
        title: Text(
          'TRME.',
          style: TextStyle(color: Color(0xFFFC6C0F), fontWeight: FontWeight.bold), // Chữ 'TRME.' màu FC6C0F
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/images/Group 1339.png'), // Biểu tượng cộng từ thư mục assets
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset('assets/images/bell.png'), // Biểu tượng chuông thông báo từ thư mục assets
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset('assets/images/comment-dots.png'), // Biểu tượng chat từ thư mục assets
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
