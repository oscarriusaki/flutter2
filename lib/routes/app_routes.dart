import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/menu_option.dart';
import 'package:flutter_application_3/screen/screen.dart';

class AppRoute {
  static String initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'list',
      icon: Icons.list,
      name: 'List',
      screen: const ListScreen(),
    ),
    MenuOption(
      route: 'card',
      icon: Icons.card_giftcard,
      name: 'Card',
      screen: const CardScreen(),
    ),
    MenuOption(
      route: 'alert',
      icon: Icons.add_alert_outlined,
      name: 'Alert',
      screen: const AlertScreen(),
    )
  ];

  static Map<String, Widget Function(BuildContext context)> getRoutes() {
    Map<String, Widget Function(BuildContext context)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (var option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Map<String, Widget Function(BuildContext context)> appRoute = {
    'home': (BuildContext context) => const HomeScreen(),
    'list': (BuildContext context) => const ListScreen(),
    'card': (BuildContext context) => const CardScreen(),
    'alert': (BuildContext context) => const AlertScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}
