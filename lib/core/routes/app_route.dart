import 'package:flutter/cupertino.dart';
import 'package:weather_app/core/routes/base_route.dart';
import 'package:weather_app/feature/home/screen/home_screen.dart';

abstract class AppRoute {
  static const String homeScreen = '/HomeScreen';
  static const String searchScreen = '/SearchScreen';

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      
      case homeScreen:
        return BaseRoute(pageBuilder: (_, __, ___) {
          return const HomeScreen();
        });
    /*  case searchScreen:
        return BaseRoute(pageBuilder: (_, __, ___) {
          return SearchScreen(
            suraId: settings.arguments as int,
          );
        }); */
    }
    return null;
  }
}