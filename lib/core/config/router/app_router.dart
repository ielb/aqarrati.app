import 'package:core_template/app/views/auth/login/page.dart';
import 'package:core_template/app/views/home/page.dart';
import 'package:core_template/app/views/intro/page.dart';
import 'package:core_template/app/views/navigation/page.dart';
import 'package:core_template/app/views/splash_page.dart';
import 'package:flutter/cupertino.dart';

class AppRouter {
  static String get initialRoute => SplashPage.name;
  static Route<dynamic>? routes(RouteSettings settings) {
    switch (settings.name) {
      case IntroPage.name:
        return CupertinoPageRoute(
          title: '/',
          builder: (context) => IntroPage(),
        );
      case LoginPage.name:
        return CupertinoPageRoute(
          title: LoginPage.name,
          builder: (context) => LoginPage(),
        );
      case SplashPage.name:
        return CupertinoPageRoute(
          title: SplashPage.name,
          builder: (context) => SplashPage(),
        );
      case NavigationPage.name:
        return CupertinoPageRoute(
          title: NavigationPage.name,
          builder: (context) => NavigationPage(),
        );
      case HomePage.name:
        return CupertinoPageRoute(
          title: HomePage.name,
          builder: (context) => HomePage(),
        );
    }
    return CupertinoPageRoute(
      title: '/',
      builder: (context) => IntroPage(),
    );
  }
}
