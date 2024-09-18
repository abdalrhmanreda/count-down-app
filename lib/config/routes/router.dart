import 'package:count_down_app/config/routes/routes_path.dart';
import 'package:flutter/material.dart';

import '../../features/get_started/ui/screens/get_start_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // this argument is used to pass data from one screen to another
    final arguments = settings.arguments;
    switch (settings.name) {
      case RoutePath.getStarted:
        return MaterialPageRoute(
          builder: (context) => const GetStartScreen(),
        );
      default:
        return null;
    }
    return null;
  }
}
