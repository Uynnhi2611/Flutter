import 'package:flutter/material.dart';
import 'package:scroll_list/GridIcon.dart';
class ExtendGrid extends StatefulWidget {
  const ExtendGrid({super.key});

  @override
  State<ExtendGrid> createState() => _ExtendGridState();
}

class _ExtendGridState extends State<ExtendGrid> {
  List<IconData> _iconList = GridIcons().getIconList();
  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 150.0, //kích thước ngang dọc của 1 khối item
      shrinkWrap: true,//???
      // addRepaintBoundaries: true,//??

      // scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(8.0),
      children: List.generate(100, (index) {
        print(MediaQuery.of(context).size.width);
        print('_buildGridViewExtent $index');
        return Card(
          margin: EdgeInsets.all(8.0),
          child: InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  _iconList[2],
                  size: 43.0,
                  color: Colors.blue,
                ),
                Divider(),
                Text(
                  'Index $index',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                )
              ],
            ),
            onTap: () {
              print('Row $index');
            },
          ),
        );
      }),
    );
  }
}
