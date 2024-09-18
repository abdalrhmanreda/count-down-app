import 'package:count_down_app/count_down_app.dart';
import 'package:flutter/material.dart';

import 'config/routes/router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(CountDownApp(appRouter: AppRouter()));
}
