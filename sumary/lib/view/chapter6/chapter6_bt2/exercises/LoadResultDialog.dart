import 'package:flutter/material.dart';

class LoadResultDialog {
  final BuildContext context;
  final String resultString;

  LoadResultDialog(this.context, this.resultString);

  void show() async {
    await showLoadingDialog(context, () async {
      await Future.delayed(Duration(seconds: 2)); // Simulate some long-running task
    });

    showResultDialog(context, 'Result: $resultString');
  }
}

Future<void> showLoadingDialog(BuildContext context, Future<void> Function() longRunningTask) async {
  // Start the long-running task asynchronously and store its Future
  Future<void> taskFuture = longRunningTask();

  // Show the loading dialog
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return Dialog(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(),
            SizedBox(width: 16),
            Text("Loading"),
          ],
        ),
      );
    },
  );

  // Wait for the task to complete
  await taskFuture;

  // Close the loading dialog after the task completes
  Navigator.pop(context);
}

Future<void> showResultDialog(BuildContext context, String result) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Result'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(result),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text('Close'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
