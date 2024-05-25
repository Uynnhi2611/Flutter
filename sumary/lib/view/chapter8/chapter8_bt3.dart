import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'hero.dart';
import 'birthdays.dart';
import 'reminders.dart';
import 'left_drawer.dart';
import 'right_drawer.dart';
class MyHomePage_bai3_chap8 extends StatefulWidget {
  const MyHomePage_bai3_chap8({super.key});
  @override
  State<MyHomePage_bai3_chap8> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage_bai3_chap8>{
  int _currentIndex = 0;
  late List _listPages;
  late Widget _currentPage;

  @override
  void initState() {
    super.initState();
    _listPages = [];
    _listPages
      ..add(Birthdays())
      ..add(Reminders())
      ..add(HeroApp());
    _currentPage = Birthdays();
  }


  void _changePage(int selectedIndex) {
    setState(() {
      _currentIndex = selectedIndex;
      _currentPage = _listPages[selectedIndex];

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Bài 3'),

      ),
      drawer: LeftDrawerWidget(),
      endDrawer: RightDrawerWidget(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: _currentPage,
        ),
      ),
      bottomNavigationBar: BottomAppBar(////Bottom Appbar
        color: Colors.blue.shade200,//Màu của thanh bar
        shape: CircularNotchedRectangle(),//tạo độ lõm của thanh bar khi có FloatingActionButton  đè lên
        notchMargin:15, //khoảng cách lề giữa thanh bar và FloatingActionButton
        elevation: 10,//Độ nâng của màu trên thanh bar
        surfaceTintColor: Colors.yellow,//Phủ lớp màu mờ nhẹ lên bề mặt thanh bar
        // shadowColor: Colors.black, //màu khi đỗ bóng
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.access_alarm),
                color: Colors.white,
                onPressed: (){_changePage(0);},
              ),
              IconButton(
                icon: Icon(Icons.bookmark_border),
                color: Colors.white,
                onPressed: (){_changePage(1);},
              ),
              IconButton(
                icon: Icon(Icons.flight),
                color: Colors.white,
                onPressed: (){_changePage(2);},
              ),
              Divider(),
            ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade200,
        onPressed: () => {},
        tooltip: 'About',
        child: Icon(Icons.add),
      ),
    );
  }
}
