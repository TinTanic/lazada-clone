import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/account_login_screen/account_login_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/home_container_screen/home_container_screen.dart';
import '../presentation/lazada_screen/lazada_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String lazadaScreen = '/lazada_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String accountLoginScreen = '/account_login_screen';

  static const String homeContainerScreen = '/home_container_screen';

  static const String homePage = '/home_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    lazadaScreen: (context) => LazadaScreen(),
    loginScreen: (context) => LoginScreen(),
    signUpScreen: (context) => SignUpScreen(),
    accountLoginScreen: (context) => AccountLoginScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => LazadaScreen()
  };
}
