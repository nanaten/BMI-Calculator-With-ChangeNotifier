import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';

class Router {
  static const home = '/';
  static const resultPage = '/result';

  final route = <String, WidgetBuilder>{
    home: (context) => InputPage(),
    resultPage: (context) => ResultsPage()
  };
}
