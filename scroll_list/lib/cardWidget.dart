import 'package:flutter/material.dart';
class cardWidget extends StatelessWidget {
  const cardWidget({
    super.key,
    required this.index
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Card(
          elevation: 8.0,//Độ nâng của màu sắc
          surfaceTintColor: Colors.green,//Phủ 1 lớp màu nhẹ lên bề mặt của card
          color: Colors.white, //Màu sắc của card
          margin: EdgeInsets.all(16.0),//Canh lề 4 góc của card
          // borderOnForeground: true,//???
          // semanticContainer: true,//???

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Barista',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 48.0,
                  color: Colors.orange,
                ),
              ),
              Text(
                'Travel Plans',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        Container(
          decoration: const BoxDecoration(
              color: Colors.white70,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    offset: Offset(0,5))
              ]
          ),
          margin: const EdgeInsets.all(16.0),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Barista',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 48.0,
                  color: Colors.orange,
                ),
              ),
              Text(
                'Travel Plans',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        const Card(
          elevation: 8.0,
          color: Colors.white,
          margin: EdgeInsets.all(16.0),
          shape: StadiumBorder(),
          clipBehavior: Clip.hardEdge,//Cắt phần thừa lấn ra ngoài card

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Barista',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 48.0,
                  color: Colors.orange,
                ),
              ),
              Text(
                'Travel Plans',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        const Card(
          elevation: 8.0,
          color: Colors.white,
          margin: EdgeInsets.all(16.0),
          shape: UnderlineInputBorder(borderSide: BorderSide(color: Colors.deepOrange)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Barista',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 48.0,
                  color: Colors.orange,
                ),
              ),
              Text(
                'Travel Plans',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ],
        ),
        ),
        Card(
          elevation: 8.0,
          color: Colors.white,
          margin: const EdgeInsets.all(16.0),
          shape: OutlineInputBorder(borderSide: BorderSide(color: Colors.deepOrange.
          withOpacity(1)),),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Barista',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 48.0,
                  color: Colors.orange,
                ),
              ),
              Text(
                'Travel Plans',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        ///-----------------------------------------------------------------------------------------------------------------
      ],
    );
  }
}