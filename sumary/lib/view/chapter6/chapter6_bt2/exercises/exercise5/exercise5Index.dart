import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/LoadResultDialog.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/exercise5/algorithm.dart';

class Exercise5 extends StatefulWidget {
  @override
  _Exercise5State createState() => _Exercise5State();
}

class _Exercise5State extends State<Exercise5> {
  TextEditingController _inputController = TextEditingController();
  int? _minRooms;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercise 5'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 300.0,
                height: 300.0,
                child: Image.asset(
                  'images/bai5.png',
                  fit: BoxFit.contain,
                ),
              ),
              TextField(
                controller: _inputController,
                decoration: InputDecoration(
                  hintText: 'Nhập danh sách các cuộc thi...',
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  await _calculateMinRooms();
                },
                child: Text('Tính toán'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _inputController.clear();
                    _minRooms = null;
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

  Future<void> _calculateMinRooms() async {
    // Thực hiện tác vụ tính toán một cách không đồng bộ và lưu lại Future của nó
    Future<void> taskFuture = Future(() {
      // Thực hiện tác vụ tính toán
      List<List<int>> contests = _inputController.text.split(';').map((e) => e.split(',').map((e) => int.tryParse(e.trim())).where((item) => item != null).toList().cast<int>()).toList().cast<List<int>>();
      if (contests.isNotEmpty) {
        _minRooms = algorithm().calculateMinRooms(contests); // Sử dụng hàm từ lớp algorithm
      }
    });

    // Hiển thị hộp thoại đang tải
    await showLoadingDialog(context, () async {
      // Chờ cho đến khi tác vụ tính toán hoàn thành
      await taskFuture;
    });

    // Hiển thị kết quả sau khi tác vụ tính toán hoàn thành
    LoadResultDialog(context, 'Số phòng thi ít nhất cần thiết là: $_minRooms').show();
  }
}
