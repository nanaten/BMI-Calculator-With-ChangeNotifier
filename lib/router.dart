import 'package:flutter/material.dart';

import 'screens/input_page.dart';
import 'screens/results_page.dart';

class Router {
  static const home = '/';
  static const resultPage = '/result';

  final route = <String, WidgetBuilder>{
    home: (context) => InputPage(),
    resultPage: (context) => ResultsPage()
  };
}
