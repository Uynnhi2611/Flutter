import 'package:flutter/material.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/LoadResultDialog.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/appbarChild.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/exercise1/algorithm.dart';

class Exercise1 extends StatefulWidget {
  @override
  _Exercise1State createState() => _Exercise1State();
}

class _Exercise1State extends State<Exercise1> {
  TextEditingController _inputController = TextEditingController();
  String? _outputValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercise 1'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/bai1.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _inputController,
                  decoration: InputDecoration(
                    hintText: 'Nhập N',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  await showLoadingDialog(context, () async {
                    _outputValue = algorithm().decodeSequence(_inputController.text);
                  });

                  showResultDialog(context, 'Output Value: $_outputValue');
                },
                child: Text('Tính toán'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _inputController.clear();
                    _outputValue = null;
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
