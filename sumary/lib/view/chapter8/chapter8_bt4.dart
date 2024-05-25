import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'hero.dart';
import 'birthdays.dart';
import 'reminders.dart';
import 'left_drawer.dart';
import 'right_drawer.dart';
class MyHomePage_bai4_chap8 extends StatefulWidget {
  const MyHomePage_bai4_chap8({super.key});
  @override
  State<MyHomePage_bai4_chap8> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage_bai4_chap8> with SingleTickerProviderStateMixin{
  ///-----------------------------------------------------------------------
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
    _tabController.addListener(_tabChanged);
  }
  @override
  void dispose() {
    super.dispose();
    @override
    void dispose() {
      _tabController.dispose();
      super.dispose();
    }
    _tabController.dispose();
  }
  void _tabChanged() {
// Check if Tab Controller index is changing, otherwise we get the notice twice
    if (_tabController.indexIsChanging) {
      print('tabChanged: ${_tabController.index}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Bài 4'),
      ),
      drawer: LeftDrawerWidget(),
      endDrawer: RightDrawerWidget(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: TabBarView(
          controller: _tabController,
            children: [
              Birthdays(),
              Reminders(),
              HeroApp(),
            ],
          ),
        ),
      ),

      bottomNavigationBar: SafeArea(//Tabbar vs Tabview, chuyển tab tích hợp animation
        child: TabBar(
          controller: _tabController,//điều hướng thay đổi trạng thái có kết hợp animation
          labelColor: Colors.blue, // đổi màu item trong tabbar khi được select
          unselectedLabelColor: Colors.pink,//màu item khi không được select
          // unselectedLabelStyle: TextStyle(color: Colors.green),//Custom style cho item khi không được select
          // onTap: (value) => 1, //Bắt sự kiện tap và thực hiện hành động
          splashFactory: NoSplash.splashFactory,//Hiệu ứng khi tap vào item
          overlayColor: MaterialStateProperty.all(Colors.green),//Màu background của item khi tap vào
          automaticIndicatorColorAdjustment: false,//??
          dividerColor: Colors.yellow, //Đổi màu divider nằm dưới tabar
          dividerHeight: 1,
          dragStartBehavior: DragStartBehavior.down,//??
          indicatorColor: Colors.red,//Thanh line nằm dưới item được select
          indicatorSize: TabBarIndicatorSize.tab,//Chiều dài thanh line
          // indicatorWeight: 20, //Độ dài của thanh line
          isScrollable: false,//=false: kích thước của item sẽ bị nén lại cho vừa thanh bar,  = true: thanh bar có thể scroll theo chiều ngang, kích thước không bị nén lại
          splashBorderRadius: BorderRadius.all(Radius.circular(30)),//Tạo đường cong cho các góc của item khi được tap vào
          tabs: [
            Tab(
              icon: Icon(Icons.cake),
              text: 'Birthdays',
            ),
            Tab(
              icon: Icon(Icons.sentiment_satisfied),
              text: 'Gratitude',
            ),
            Tab(
              icon: Icon(Icons.access_alarm),
              text: 'Reminders',
            ),
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
