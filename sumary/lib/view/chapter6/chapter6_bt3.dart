import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage_bai3 extends StatefulWidget {
  const MyHomePage_bai3({super.key});
  @override
  State<MyHomePage_bai3> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage_bai3> { // Định nghĩa lớp _MyHomePageState kế thừa từ State<MyHomePage>
  @override
  Widget build(BuildContext context) { // Phương thức build tạo ra widget cho _MyHomePageState
    return Scaffold( // Trả về một Scaffold
      appBar: AppBar( // Tạo thanh ứng dụng
        title: Text('Home'), // Đặt tiêu đề cho thanh ứng dụng
      ),
      body: SingleChildScrollView(

        child: Column( // Tạo một cột để chứa các widget con
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,// Căn giữa các widget con theo trục chính
          children: <Widget>[ // Danh sách các widget con
            // Sử dụng Container
            Container(
              width: 200.0, // Đặt chiều rộng cho Container
              height: 200.0, // Đặt chiều cao cho Container
              padding: EdgeInsets.all(50), // Thêm padding cho Container
              margin: EdgeInsets.all(50),// Thêm margin cho Container
              color:Colors.amber,// dùng các container cơ bản, sâu hơn thì cần decoration
              /* decoration: BoxDecoration( // Tạo trang trí cho Container
                color: Colors.lightGreen, // Đặt màu sắc cho Container
                borderRadius: BorderRadius.circular(12), // Tạo viền bo tròn cho Container
                border: Border.all(color: Colors.white, width: 2), // Thêm viền cho Container
                boxShadow: [ // Thêm bóng cho Container
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),*/
              child: Center( // Tạo trung tâm cho nội dung của Container
                child: Text( // Tạo một Text widget
                  'Đây là một Container', // Nội dung của Text
                  style: TextStyle(color: Colors.white, fontSize: 24), // Định dạng cho Text
                  textAlign: TextAlign.left,
                  // Căn giữa nội dung Text
                ),
              ),
            ),
            // Sử dụng Text
            /* Text(
              'Đây là một ví dụ về Text'
                  'Đây là một ví dụ về Text '
                  'Đây là một ví dụ về Text ', // Nội dung của Text
              style: TextStyle(fontSize: 24, fontStyle: FontStyle.normal, fontWeight: FontWeight.normal), // Định dạng cho Text
              //textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
              maxLines:3,
              overflow:TextOverflow.ellipsis,
             // textScaleFactor:2 ,//cố định kích thước chữ,ngăn tràn chữ, ví dụ như các button
            ),*/
            SelectableText(
              'Đây là một ví dụ về SelectableText'
                  'Đây là một ví dụ về SelectableText '
                  'Đây là một ví dụ về SelectableText ', // Nội dung của SelectableText
              style: TextStyle(fontSize: 24, fontStyle: FontStyle.normal, fontWeight: FontWeight.normal), // Định dạng cho SelectableText
              textAlign: TextAlign.center, // Căn giữa nội dung SelectableText
            ),

            // Sử dụng RichText
            RichText(
              text: TextSpan( // Tạo một TextSpan
                text: 'Đây là một ví dụ về ', // Nội dung của TextSpan
                style: TextStyle(color: Colors.grey), // Sử dụng kiểu văn bản mặc định của context
                children: <TextSpan>[ // Danh sách các TextSpan con
                  TextSpan(text: 'RichText', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.lightGreen)), // Tạo một TextSpan con với kiểu chữ in đậm
                ],
              ),
            ),
            // Sử dụng Image từ assets
            Image.asset(
              'images/home_top_mountain.jpg', // Đường dẫn của hình ảnh trong thư mục assets
              width: 100, // Đặt chiều rộng cho hình ảnh
              height: 100, // Đặt chiều cao cho hình ảnh
              fit: BoxFit.cover, // Đặt thuộc tính fit cho hình ảnh
            ),
            Image.network(
              'https://b.tr90app.com/upload/images/logo/new_logo.png', // Đường dẫn của hình ảnh trong thư mục netword
              width: 100, // Đặt chiều rộng cho hình ảnh
              height: 100, // Đặt chiều cao cho hình ảnh
              fit: BoxFit.cover, // Đặt thuộc tính fit cho hình ảnh
            ),

            // Sử dụng Icon
            Icon(
              Icons.favorite, // Chọn biểu tượng yêu thích
              color: Colors.pink, // Đặt màu sắc cho biểu tượng
              size: 60.0, // Đặt kích thước cho biểu tượng
            ),
          ],

        ),
      ),
    );
  }
}