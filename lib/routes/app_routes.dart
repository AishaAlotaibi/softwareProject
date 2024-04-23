import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/change_password_one_screen/change_password_one_screen.dart';
import '../presentation/change_password_screen/change_password_screen.dart';
import '../presentation/forgot_password_screen/forgot_password_screen.dart';
import '../presentation/login_one_screen/login_one_screen.dart';
import '../presentation/login_screen/login_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String loginOneScreen = '/login_one_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String changePasswordOneScreen = '/change_password_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen(),
    changePasswordScreen: (context) => ChangePasswordScreen(),
    loginOneScreen: (context) => LoginOneScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    changePasswordOneScreen: (context) => ChangePasswordOneScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => LoginScreen()
  };
}
