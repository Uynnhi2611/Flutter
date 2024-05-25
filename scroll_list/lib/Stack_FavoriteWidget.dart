import 'package:flutter/material.dart';
class Stack_FavoriteWidget extends StatelessWidget {
  const Stack_FavoriteWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      width: 400,
      height: 400,
      child: Stack(
        clipBehavior: Clip.antiAlias,//cắt  phần thừa trong khối
        alignment: AlignmentDirectional.bottomStart,//Đặt vị trí cho children
        textDirection: TextDirection.ltr,//Đặt vị trí bắt đầu left to right hoặc right to left
        fit: StackFit.expand,//Co giãn lớp con cho vừa kích thước với lớp cha
        children: <Widget>[
          Image(
            image: AssetImage('images/hulk.jpg'),
            width:  300,
          ),
          Positioned(
            top: 0.0, //Cách lề trên 0 pixel
            right: 0.0, //Cách lề phải 0 pixel
            child: FractionalTranslation(
              translation: Offset(0.3, -0.3),
              child: CircleAvatar(
                radius: 24.0,
                backgroundColor: Colors.white30,
                child: Icon(
                  Icons.star,
                  size: 24.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10.0, //Cách lề dưới 10 pixel
            right: 10.0,
            child: CircleAvatar(
              radius: 48.0,
              backgroundImage: AssetImage('images/hc.jpg'),
            ),
          ),
          Positioned(
            bottom: 16.0,
            left: 16.0, //Cách lề trái 16 pixel
            child: Text(
              'Bald Eagle',
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.white30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}