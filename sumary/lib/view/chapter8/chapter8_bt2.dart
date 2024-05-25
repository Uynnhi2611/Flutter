import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'hero.dart';
import 'birthdays.dart';
import 'reminders.dart';
import 'left_drawer.dart';
import 'right_drawer.dart';
class MyHomePage_bai2_chap8 extends StatefulWidget {
  const MyHomePage_bai2_chap8({super.key});
  @override
  State<MyHomePage_bai2_chap8> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage_bai2_chap8> {
  int _currentIndex = 0;
  late List _listPages;
  late Widget _currentPage;

  ///-----------------------------------------------------------------------
  late TabController _tabController;
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

  ///-----------------------------------------------------------------------
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
          title: Text('Bài 2'),
      ),
      drawer: LeftDrawerWidget(),
      endDrawer: RightDrawerWidget(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
            child: _currentPage,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(////Bottom NavigationBarr
        currentIndex: _currentIndex,//Giá trị select hiện tại trên thanh bar
        iconSize: 50, //Kích thước của icon trên thanh Bar
        backgroundColor: Colors.orangeAccent, //Màu nền của thanh bar
        mouseCursor: MaterialStateMouseCursor.clickable,//??
        elevation: 10,//??
        enableFeedback: false, // Âm thanh khi nhấn
        // fixedColor: Colors.blue, //Màu item khi được select chỉ sử dụng được 1 trong 2 cách fixedColor  hoặc selectedItemColor
        landscapeLayout: BottomNavigationBarLandscapeLayout.linear,//Bố cục thanh bar được thay đội khi xoay màn hình dựa vào khoảng  rộng trên thanh bar
        // selectedFontSize: 20, //Kích thước của label khi được select
        // selectedIconTheme: IconThemeData(color: Colors.yellow),//Custom theme cho icon khi được select
        selectedItemColor: Colors.blueAccent, //Màu item khi được select chỉ sử dụng được 1 trong 2 cách fixedColor  hoặc selectedItemColor
        // selectedLabelStyle: TextStyle(fontSize: 20),//Custom theme cho label khi được select
        showSelectedLabels: true, //Cho phep hiển thị label khi được select
        showUnselectedLabels: false, // Cho phép hiển thị label khi không được select
        // unselectedFontSize: ,//Kích thước label khi không được select
        type: BottomNavigationBarType.fixed,//Loại thanh bar gồm fixed có thể custom màu sắc, shifting loại ẩn hiện khi select sẽ hiện
        // unselectedIconTheme: ,//Custom theme cho icon khi không được select
        unselectedItemColor: Colors.green,//Màu item khi không được select
        // unselectedLabelStyle: ,//Custom theme cho label khi không được select
        useLegacyColorScheme: false,///????
        items: [ //danh sách các items
          BottomNavigationBarItem(
            icon: Icon(Icons.cake),
            label: 'Birthdays',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            label: 'Reminders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sentiment_satisfied),
            label: 'Hero App',
          ),
        ],
        onTap: (selectedIndex) => _changePage(selectedIndex), //Bắt sự kiện Tap và thực hiện hành động
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade200,
        onPressed: () => {},
        tooltip: 'About',
        child: Icon(Icons.add),
      ),
    );
  }
}
