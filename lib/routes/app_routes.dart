import 'package:flutter/cupertino.dart';
import 'package:flutter_application_3/screen/screen.dart';

class AppRoute {
  static String initialRoute = 'home';
  static Map<String, Widget Function(BuildContext context)> appRoute = {
    'home': (BuildContext context) => HomeScreen(),
    'list': (BuildContext context) => ListScreen(),
    'card': (BuildContext context) => CardScreen(),
    'alert': (BuildContext context) => AlertScreen(),
  };
}
