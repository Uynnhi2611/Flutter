import 'package:flutter/material.dart';
import 'package:scroll_list/GridIcon.dart';
class CountGrid extends StatefulWidget {
  const CountGrid({super.key});

  @override
  State<CountGrid> createState() => _CountGridState();
}

class _CountGridState extends State<CountGrid> {
  List<IconData> _iconList = GridIcons().getIconList();
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,//Số dòng hiển thị theo chiều ngược lại của ScrollDirection
      // cacheExtent: 100,//???
      crossAxisSpacing: 10,//Khoảng cách đều giữa các khối theo chiều ngược lại của ScrollDirection
      mainAxisSpacing: 20,//Khoảng cách đều giữa các khối theo chiều của ScrollDirection
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,//Keyboard sẽ bị ẩn khi scroll
      physics: BouncingScrollPhysics(),//Hiệu ứng khi croll: page scroll từng tầng,bouncing scroll dừng chậm dần
      childAspectRatio: 0.8,
      // reverse: true,//reverse = true item sẽ được build từ dưới lên
      // scrollDirection: Axis.horizontal,//hướng scroll
      // semanticChildCount: 678,//??
      shrinkWrap: true,
      padding: EdgeInsets.all(8.0),
      children: List.generate(100, (index) {
        print('_buildGridView $index');
        return Card(
          color: Colors.yellowAccent,
          margin: EdgeInsets.all(8.0),
          child: InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  _iconList[0],
                  size: 36.0,
                  color: Colors.blue,
                ),
                Divider(),
                Text(
                  'Index $index',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
                Divider(),
                TextField(),
              ],
            ),
            onTap: () {
              print('Row $index');
            },
          ),
        );
      },),
    );
  }
}
