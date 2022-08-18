import 'package:app_van/src/modules/home/home_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic>? routes(RouteSettings settings) {
    switch (settings.name) {
      case '/Home':
        return MaterialPageRoute(
          builder: (BuildContext context) => const HomePage(),
        );
    }
    return null;
  }
}
