import 'package:flutter/material.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/appbarChild.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/exercise7/algorithm.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/LoadResultDialog.dart';
import 'package:flutter/services.dart';

class Exercise7 extends StatefulWidget {
  @override
  _Exercise7State createState() => _Exercise7State();
}

class _Exercise7State extends State<Exercise7> {
  TextEditingController _inputController = TextEditingController();
  List<int>? _results;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercise 7'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/bai7.png'),
              ),
              TextField(
                controller: _inputController,
                decoration: InputDecoration(
                  hintText: 'Nhập N',
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  Future<void> taskFuture = Future(() {
                    if (_inputController.text.isNotEmpty) {
                      _results = algorithm.calculateResults(int.parse(_inputController.text));
                    }
                  });

                  await showLoadingDialog(context, () async {
                    await taskFuture;
                  });

                  _loadResultDialog(context, 'Số lượng số chia hết cho 3: ${_results!.length}\nCác số chia hết cho 3: $_results');
                },
                child: Text('Tính toán'),
              ),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _inputController.clear();
                    _results = null;
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
