import 'package:flutter/material.dart';
import 'package:scroll_list/GridIcon.dart';

class BuilderGrid extends StatefulWidget {
  const BuilderGrid({super.key});

  @override
  State<BuilderGrid> createState() => _BuilderGridState();
}

class _BuilderGridState extends State<BuilderGrid> {
  List<IconData> _iconList = GridIcons().getIconList();
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 100,
      padding: EdgeInsets.all(8.0),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150.0),
      // findChildIndexCallback: (key) => 21,//??
      cacheExtent: 1,
      // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (BuildContext context, int index) {
        print('_buildGridViewBuilder $index');
        return Card(
          color: Colors.lightGreen.shade50,
          margin: EdgeInsets.all(8.0),
          child: InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  _iconList[1],
                  size: 48.0,
                  color: Colors.lightGreen,
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
      },
    );
  }
}
