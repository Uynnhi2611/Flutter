import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Layouts'),
        leading: DrawerButton(
          onPressed: () {}
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.cloud_outlined)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: width,
                child: Image(image: AssetImage('images/hc.jpg'),fit: BoxFit.cover,)
            ),
            SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(),
                    Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'My No Help',
                      style: TextStyle(
                          fontSize: width/10,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                          'It’s going to be a great birthday. We are going out for dinner at my favorite place, then watch a movie after we go to the gelateria for ice cream and espresso.',
                          style: TextStyle(
                          fontSize: width/20,
                          color: Colors.grey,
                       ),
                      ),
                    ),
                    Divider(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 8,right: 8,bottom: 10),
                          child: Icon(Icons.sunny,color: Colors.deepOrange,size: width/20,),
                        ),
                        SizedBox(width: width/80,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '81 độ Clear',
                              style: TextStyle(color: Colors.deepOrange,fontSize: width/30),
                            ),
                            Text(
                              '4500 San Alpho Drive, Dallas, TX United States',
                              style: TextStyle(color: Colors.grey,fontSize: width/30),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Wrap(

                        alignment: WrapAlignment.start,//canh vị trí các item
                        // textDirection: TextDirection.rtl,//vị trí bắt đầu build item từ left to right hoặc right to left
                        // verticalDirection: VerticalDirection.up,//hướng bắt đầu build item từ dưới lên hoặc từ trên xuống
                        crossAxisAlignment: WrapCrossAlignment.end,
                        spacing: width/50,//khoảng cách giữa 2 cột
                        runSpacing: width/80,//khoảng cách giữa 2 dòng wrap
                        runAlignment: WrapAlignment.center,
                        children: List.generate(7, (index) =>
                            Chip(
                              label: Text('Gift ${index+1}',style: TextStyle(fontSize: width/30),),
                              avatar: Icon(Icons.card_giftcard,size: width/30),
                              color: MaterialStateProperty.all(Colors.cyan),
                              deleteIcon: Icon(Icons.ac_unit_sharp),

                            )
                        ),
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(backgroundImage: AssetImage('images/hc.jpg'),radius: width/10,),
                          CircleAvatar(backgroundImage: AssetImage('images/hc.jpg'),radius: width/10,),
                          CircleAvatar(backgroundImage: AssetImage('images/hc.jpg'),radius: width/10,),
                          SizedBox(
                            width: 100.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Icon(Icons.cake,size: width/20,),
                                Icon(Icons.star_border,size: width/20),
                                Icon(Icons.music_note,size: width/20),
                              //Icon(Icons.movie),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}