import 'package:app_van/src/modules/home/home_page.dart';
import 'package:flutter/material.dart';

import '../../modules/navigation/navigation_page.dart';

class Routes {
  static Route<dynamic>? routes(RouteSettings settings) {
    switch (settings.name) {
      case '/Home':
        return MaterialPageRoute(
          builder: (BuildContext context) => const HomePage(),
        );
      case '/Navigation':
        return MaterialPageRoute(
          builder: (BuildContext context) => const NavigationPage(),
        );
    }
    return null;
  }
}
