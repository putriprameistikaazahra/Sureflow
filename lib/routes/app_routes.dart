import 'package:flutter/material.dart';
import 'package:theflutterway_s_admin_app/presentation/login_screen/login_screen.dart';
import 'package:theflutterway_s_admin_app/presentation/register_screen/register_screen.dart';
import 'package:theflutterway_s_admin_app/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:theflutterway_s_admin_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String registerScreen = '/register_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen(),
    registerScreen: (context) => RegisterScreen(),
    dashboardScreen: (context) => DashboardScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
