import 'package:flutter/material.dart';
import 'package:playlist_app/Pages/Home/homePage.dart';
import 'package:playlist_app/Pages/Login/loginPage.dart';
import 'package:playlist_app/Pages/Navigator/navigatorPage.dart';
import 'package:playlist_app/Pages/Splash/splashPage.dart';

Map<String, WidgetBuilder> routesApp() {
  return {
    "/": (context) => const SplashPage(),
    "/Home": (context) => HomePage(),
    "/Login": (context) => LoginPage(),
  };
}
