import 'package:flutter/material.dart';
class SliverAppBarWidget extends StatelessWidget {
  const SliverAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.brown,
      forceElevated: true,
      expandedHeight: 250.0,
      // scrolledUnderElevation: 500,///???
      // collapsedHeight: 1,///???
      // floating: false,//??
      leading: IconButton(icon: Icon(Icons.adb_sharp,color: Colors.red,),onPressed: (){},),
      // leadingWidth: 5000,//chiều dài leading
      pinned: true,//khi để true scroll ra ngoài tầm appbar vẫn sẽ hiện appbar dạng mini size
      // snap: true,//???
      // stretch: ,//???
      // stretchTriggerOffset: 10000,///???

      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          'Parallax Effect',
        ),
        background: Image(
          image: AssetImage('images/hc.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}