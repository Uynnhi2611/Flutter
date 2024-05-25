import 'dart:math';

import 'package:flutter/material.dart';
import 'menu_list.dart';
class LeftDrawerWidget extends StatelessWidget {
  const LeftDrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 20,
      surfaceTintColor: Colors.red,//Lớp màu mờ phủ trên bề mặt layout
      backgroundColor: Colors.lightGreenAccent,//Màu nền
      shape: RoundedRectangleBorder(),
      semanticLabel: 'ha',

      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: Icon(
              Icons.face,
              size: 48.0,
              color: Colors.white,
            ),
            accountName: Text('Uyển Nhi'),
            accountEmail: Text('nhi@gmail.com'),
            otherAccountsPictures: <Widget>[
              Icon(
                Icons.bookmark_border,
                color: Colors.white,
              )
            ],
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/home_top_mountain.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const MenuListTileWidget(),
        ],
      ),
    );
  }
}