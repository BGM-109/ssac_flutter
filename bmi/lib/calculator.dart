import 'dart:math';

class Calculator {
  Calculator({required this.height, required this.weight});

  final String height;
  final String weight;

  late double _bmi;

  String calculateBmi() {
    _bmi = int.parse(weight) / pow(int.parse(height) / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return '과체중';
    } else if (_bmi > 18.5) {
      return '정상';
    } else {
      return '저체중';
    }
  }
}
