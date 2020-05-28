import 'dart:math';

import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/cupertino.dart';

class CalculatorBrain with ChangeNotifier {
  int _height = 180;
  int _weight = 60;
  int _age = 20;
  Gender gender;

  double _bmi = 0.0;

  void incrementAge() {
    _age++;
    notifyListeners();
  }

  void decrementAge() {
    _age--;
    notifyListeners();
  }

  String getAge() {
    return _age.toString();
  }

  void updateGender(Gender newGender) {
    this.gender = newGender;
    notifyListeners();
  }

  void incrementWeight() {
    _weight++;
    notifyListeners();
  }

  void decrementWeight() {
    _weight--;
    notifyListeners();
  }

  String getWeight() {
    return _weight.toString();
  }

  void updateHeight(double newValue) {
    _height = newValue.round();
    notifyListeners();
  }

  String getHeightString() {
    return _height.toString();
  }

  int getHeight() {
    return _height;
  }

  String calculateBMI() {
    _bmi = _weight / pow(_height / 100, 2);
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
