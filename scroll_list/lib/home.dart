import 'package:flutter/material.dart';
import 'package:scroll_list/BuilderGrid.dart';
import 'package:scroll_list/CountGrid.dart';
import 'package:scroll_list/ExtendGrid.dart';
import 'package:scroll_list/ListViewWidget.dart';
import 'package:scroll_list/Sliver.dart';
import 'package:scroll_list/Stack.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Scroll List Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
  int currentIndex=0;
  Widget currentPage=ListViewWidget();
class _MyHomePageState extends State<MyHomePage> {
  void changePage(int index)
  {
    setState(() {
      currentIndex=index;
      if(index==0)
        currentPage= ListViewWidget();
      if(index==1)
        currentPage= CountGrid();
      if(index==2)
        currentPage= ExtendGrid();
      if(index==3)
        currentPage= BuilderGrid();
      if(index==4)
        currentPage= StackWidget();
      if(index==5)
        currentPage= Sliver();
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: currentPage,

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        iconSize: 40,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.hail_outlined),
            label: 'ListView',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.u_turn_left_sharp),
            label: 'CountGrid',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner_outlined),
            label: 'ExtendGrid',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.offline_bolt_sharp),
            label: 'BuilderGrid',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stacked_bar_chart_sharp),
            label: 'Stack',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.slideshow_sharp),
            label: 'Sliver',
          ),
        ],
        onTap: (index){changePage(index);},
      ),
    );
  }
}




