import 'package:flutter/material.dart';
import 'package:scroll_list/Stack_FavoriteWidget.dart';
import 'package:scroll_list/Stack_Widget.dart';
class StackWidget extends StatefulWidget {
  const StackWidget({super.key});

  @override
  State<StackWidget> createState() => _StackState();
}

class _StackState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          if (index.isEven) {
            return const Stack_Widget();
          } else {
            return const Stack_FavoriteWidget();
          }
        },
      ),
    );
  }
}
