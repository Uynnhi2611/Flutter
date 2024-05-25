import 'package:flutter/material.dart';
import 'package:scroll_list/SliverAppBarWidget.dart';
import 'package:scroll_list/SliverGridWidget.dart';
import 'package:scroll_list/SliverListWidget.dart';
class Sliver extends StatefulWidget {
  const Sliver({super.key});

  @override
  State<Sliver> createState() => _SliverState();
}

class _SliverState extends State<Sliver> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        const SliverAppBarWidget(),
        const SliverListWidget(),
        const SliverGridWidget(),
      ],
    );
  }
}
