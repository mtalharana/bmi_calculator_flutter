// ignore_for_file: non_constant_identifier_names

import 'dart:core';

import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  late int height;
  late int weight;
  late double _bmi;

  String CalculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getresult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
}
