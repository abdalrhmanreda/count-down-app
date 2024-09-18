import 'package:count_down_app/config/routes/router.dart';
import 'package:count_down_app/config/routes/routes_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'config/themes/themes.dart';

class CountDownApp extends StatelessWidget {
  const CountDownApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: MaterialApp(
            locale: const Locale('en', 'Us'),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            debugShowCheckedModeBanner: false,
            onGenerateRoute: appRouter.generateRoute,
            theme: Style.lightTheme,
            darkTheme: Style.darkTheme,
            themeMode: ThemeMode.dark,
            initialRoute: RoutePath.getStarted,
          ),
        ),
      ),
    );
  }
}
