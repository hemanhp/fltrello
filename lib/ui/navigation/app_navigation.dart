import 'package:fltrello/core/core.dart';
import 'package:fltrello/ui/screens/screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppNavigator with AppLogger{

  final GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();
  NavigatorState get state => key.currentState!;

  final initialRoute = SplashScreen.route;

  Route? onGenerateRoute(RouteSettings settings) {
    final routeName = settings.name;

    log.fine("navigate to ${routeName}");

    final arguments = settings.arguments as Map<String, dynamic>? ?? <String, dynamic>{};

    Widget screen;
    switch(routeName){
      case SplashScreen.route:
        screen = SplashScreen();
        break;
      default:
        screen = SplashScreen();
    }

    return MaterialPageRoute(builder: (_)=>screen);
  }
}