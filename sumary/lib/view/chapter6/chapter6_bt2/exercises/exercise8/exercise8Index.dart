import 'package:flutter/material.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/appbarChild.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/exercise8/algorithm.dart';
import 'package:flutter/services.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/LoadResultDialog.dart'; // Import the LoadResultDialog class

class Exercise8 extends StatefulWidget {
  @override
  _Exercise8State createState() => _Exercise8State();
}

class _Exercise8State extends State<Exercise8> {
  TextEditingController _readingsController = TextEditingController();
  TextEditingController _pricesController = TextEditingController();
  List<int> _limits = [50, 150, 200, 1000, 100, 200]; // Giới hạn mặc định
  int? _totalCost;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercise 8'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Container(
                width: 300.0, // Chiều rộng cố định
                height: 300.0, // Chiều cao cố định
                child: Image.asset(
                  'images/bai8.png',
                  fit: BoxFit.contain, // Điều chỉnh hình ảnh để phù hợp với khung
                ),
              ),
              TextField(
                controller: _readingsController,
                decoration: InputDecoration(
                  hintText: 'Nhập chỉ số đầu và cuối của các loại điện (mỗi loại điện trên một dòng)',
                ),
                maxLines: null, // Cho phép nhập nhiều dòng
              ),
              SizedBox(height: 8),
              TextField(
                controller: _pricesController,
                decoration: InputDecoration(
                  hintText: 'Nhập mức giá cho mỗi loại điện (mỗi loại điện trên một dòng)',
                ),
                maxLines: null, // Cho phép nhập nhiều dòng
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () async {
                  // Bắt đầu tác vụ tính toán một cách không đồng bộ và lưu lại Future của nó
                  Future<void> taskFuture = Future(() {
                    // Thực hiện tác vụ tính toán
                    List<int> readings = _readingsController.text.split('\n').expand((line) => line.split(',').map((e) => int.parse(e.trim()))).toList();
                    List<int> prices = _pricesController.text.split('\n').expand((line) => line.split(',').map((e) => int.parse(e.trim()))).toList();
                    _totalCost = Algorithm.calculateTotalCost(readings, prices, _limits);
                  });

                  // Hiển thị hộp thoại đang tải
                  await showLoadingDialog(context, () async {
                    // Chờ cho đến khi tác vụ tính toán hoàn thành
                    await taskFuture;
                  });

                  // Hiển thị kết quả sau khi tác vụ tính toán hoàn thành
                  showResultDialog(context, 'Tổng số tiền phải trả: $_totalCost');
                },
                child: Text('Tính toán'),
              ),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _readingsController.clear();
                    _pricesController.clear();
                    _totalCost = null;
                  });
                },
                child: Text('Reset'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
