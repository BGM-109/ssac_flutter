import 'package:flutter/material.dart';

import '../circle_progress.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {Key? key, required this.bmiResult, required this.resultText})
      : super(key: key);
  final String bmiResult;
  final String resultText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            toolbarHeight: 100,
            centerTitle: true,
            title: const Text(
              "Result",
            )),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomPaint(
                  foregroundPainter: CircleProgress(
                      color: (resultText == "정상") ? Colors.green : Colors.red, percent: (resultText == "정상") ? 90 : 70),
                  child: Center(
                    child: Text(bmiResult,
                        style: TextStyle(
                          color: (resultText == "정상") ? Colors.green : Colors.red,
                          fontSize: 30.0,
                        )),
                  )),
            ],
          ),
        ));
  }
}
