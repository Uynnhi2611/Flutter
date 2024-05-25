import 'package:flutter/material.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/appbarChild.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/exercise3/algorithm.dart';
import 'package:flutter/services.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/LoadResultDialog.dart';
class Exercise3 extends StatefulWidget {
  @override
  _Exercise3State createState() => _Exercise3State();
}

class _Exercise3State extends State<Exercise3> {
  TextEditingController _inputController = TextEditingController();
  int? _secondLargestNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercise 3'),
      ),
      body: SingleChildScrollView( // Thêm widget SingleChildScrollView
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/bai3.png'), // Add your image here
              ),
              TextField(
                controller: _inputController,
                decoration: InputDecoration(
                  hintText: 'Nhập danh sách số, cách nhau bởi dấu phẩy',
                ),
              ),

              ElevatedButton(
                onPressed: () async {
                  // Bắt đầu tác vụ tính toán một cách không đồng bộ và lưu lại Future của nó
                  Future<void> taskFuture = Future(() {
                    // Thực hiện tác vụ tính toán
                    List<int> numbers = _inputController.text.split(',').map((e) => int.tryParse(e.trim())).where((item) => item != null).toList().cast<int>();
                    if (numbers.isNotEmpty) {
                      _secondLargestNumber = algorithm().secondLargest(numbers);
                    }
                  });

                  // Hiển thị hộp thoại đang tải
                  await showLoadingDialog(context, () async {
                    // Chờ cho đến khi tác vụ tính toán hoàn thành
                    await taskFuture;
                  });

                  // Hiển thị kết quả sau khi tác vụ tính toán hoàn thành
                  showResultDialog(context, 'Số lớn thứ nhì trong dãy là: $_secondLargestNumber\n$_secondLargestNumber là số ${_secondLargestNumber! % 2 == 0 ? "chẵn" : "lẻ"}\n$_secondLargestNumber ${algorithm().isPrime(_secondLargestNumber!) ? "là" : "không phải là"} số nguyên tố\nGiai thừa của $_secondLargestNumber là: ${algorithm().factorial(_secondLargestNumber!)}\nSố Fibonacci thứ $_secondLargestNumber là: ${algorithm().fibonacci(_secondLargestNumber!)}');
                },
                child: Text('Tính toán'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _inputController.clear();
                    _secondLargestNumber = null;
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





