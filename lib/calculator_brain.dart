import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain with ChangeNotifier {
  CalculatorBrain({this.height, this.weight});

  int height;
  int weight;

  double _bmi = 0.0;

  void incrementWeight() {
    weight++;
    notifyListeners();
  }

  void decrementWeight() {
    weight--;
    notifyListeners();
  }

  String getWeight() {
    return weight.toString();
  }

  void updateHeight(double newValue) {
    height = newValue.round();
    notifyListeners();
  }

  String getHeight() {
    return height.toString();
  }

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
