import 'package:flutter/material.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/appbarChild.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/exercise2/algorithm.dart';
import 'package:flutter/services.dart';
import 'package:sumary/view/chapter6/chapter6_bt2/exercises/LoadResultDialog.dart';
class Exercise2 extends StatefulWidget {
  @override
  _Exercise2State createState() => _Exercise2State();
}

class _Exercise2State extends State<Exercise2> {
  TextEditingController _inputControllerA = TextEditingController();
  TextEditingController _inputControllerB = TextEditingController();
  List<int>? _outputValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercise 2'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/bai2.png'), // Add your image here
              ),
              TextField(
                controller: _inputControllerA,
                decoration: InputDecoration(
                  hintText: 'Nhập a',
                ),
              ),
              TextField(
                controller: _inputControllerB,
                decoration: InputDecoration(
                  hintText: 'Nhập b',
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  await showLoadingDialog(context, () async {
                    _outputValue = algorithm().countEvenDivisibleByThree(int.parse(_inputControllerA.text), int.parse(_inputControllerB.text));
                  });

                  showResultDialog(context, 'Số lượng các số chẵn chia hết cho 3 từ ${_inputControllerA.text} đến ${_inputControllerB.text} là: ${_outputValue![0]}\nTổng của các số chẵn chia hết cho 3 từ ${_inputControllerA.text} đến ${_inputControllerB.text} là: ${_outputValue![1]}');
                },
                child: Text('Tính toán'),
              ),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _inputControllerA.clear();
                    _inputControllerB.clear();
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








