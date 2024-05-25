import 'package:flutter/material.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/appbarChild.dart';
import 'package:flutter/services.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/LoadResultDialog.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/exercise6/algorithm.dart';

class Exercise6 extends StatefulWidget {
  @override
  _Exercise6State createState() => _Exercise6State();
}

class _Exercise6State extends State<Exercise6> {
  TextEditingController _inputControllerA = TextEditingController();
  TextEditingController _inputControllerB = TextEditingController();
  List<int>? _beautifulNumbers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercise 6'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/bai6.png'),
              ),
              TextField(
                controller: _inputControllerA,
                decoration: InputDecoration(
                  hintText: 'Nhập A',
                ),
              ),
              TextField(
                controller: _inputControllerB,
                decoration: InputDecoration(
                  hintText: 'Nhập B',
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  Future<void> taskFuture = Future(() {
                    if (_inputControllerA.text.isNotEmpty && _inputControllerB.text.isNotEmpty) {
                      _beautifulNumbers = algorithm().findBeautifulNumbers(int.parse(_inputControllerA.text), int.parse(_inputControllerB.text));
                    }
                  });

                  await showLoadingDialog(context, () async {
                    await taskFuture;
                  });

                  _loadResultDialog(context, 'Số lượng biển số xe đẹp tìm được: ${_beautifulNumbers!.length}\nCác biển số xe tìm được: $_beautifulNumbers');
                },
                child: Text('Tính toán'),
              ),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _inputControllerA.clear();
                    _inputControllerB.clear();
                    _beautifulNumbers = null;
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

  void _loadResultDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Kết quả'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(message),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Đóng'),
            ),
          ],
        );
      },
    );
  }
}
