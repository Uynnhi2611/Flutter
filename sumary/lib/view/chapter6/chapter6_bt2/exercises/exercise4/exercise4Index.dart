import 'package:flutter/material.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/appbarChild.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/exercise4/algorithm.dart';
import 'package:flutter/services.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/LoadResultDialog.dart';

class Exercise4 extends StatefulWidget {
  @override
  _Exercise4State createState() => _Exercise4State();
}

class _Exercise4State extends State<Exercise4> {
  TextEditingController _inputControllerN = TextEditingController();
  TextEditingController _inputControllerNumbers = TextEditingController();
  int? _minDifference;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercise 4'),
      ),
      body: SingleChildScrollView( // Thêm widget SingleChildScrollView
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 300.0, // Chiều rộng cố định
                height: 300.0, // Chiều cao cố định
                child: Image.asset(
                  'images/bai4.png',
                  fit: BoxFit.contain, // Điều chỉnh hình ảnh để phù hợp với khung
                ),
              ),
              TextField(
                controller: _inputControllerN,
                decoration: InputDecoration(
                  hintText: 'Nhập n',
                ),
              ),
              TextField(
                controller: _inputControllerNumbers,
                decoration: InputDecoration(
                  hintText: 'Nhập danh sách n số nguyên, cách nhau bởi dấu phẩy',
                ),
              ),

              ElevatedButton(
                onPressed: () async {
                  // Bắt đầu tác vụ tính toán một cách không đồng bộ và lưu lại Future của nó
                  Future<void> taskFuture = Future(() {
                    // Thực hiện tác vụ tính toán
                    List<int> numbers = _inputControllerNumbers.text.split(',').map((e) => int.tryParse(e.trim())).where((item) => item != null).toList().cast<int>();
                    if (numbers.isNotEmpty && numbers.length == int.parse(_inputControllerN.text)) {
                      _minDifference = algorithm().calculateMinDifference(numbers);
                      _minDifference = algorithm().calculateMinDifference(numbers);
                    }
                  });

                  // Hiển thị hộp thoại đang tải
                  await showLoadingDialog(context, () async {
                    // Chờ cho đến khi tác vụ tính toán hoàn thành
                    await taskFuture;
                  });

                  // Hiển thị kết quả sau khi tác vụ tính toán hoàn thành
                  showResultDialog(context, 'Độ lệch nhỏ nhất: $_minDifference');
                },
                child: Text('Tính toán'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _inputControllerN.clear();
                    _inputControllerNumbers.clear();
                    _minDifference = null;
                  });
                },
                child: Text('Reset'),
              ),
              /*if (_minDifference != null) ...[
                Text('Độ lệch nhỏ nhất: $_minDifference'),
              ],*/
            ],
          ),
        ),
      ),
    );
  }
}





