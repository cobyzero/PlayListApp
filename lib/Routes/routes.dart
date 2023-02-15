import 'package:flutter/material.dart';
import 'package:playlist_app/Pages/Home/homePage.dart';
import 'package:playlist_app/Pages/Main/mainPage.dart';
import 'package:playlist_app/Pages/Login/loginPage.dart';
import 'package:playlist_app/Pages/Navigator/navigatorPage.dart';
import 'package:playlist_app/Pages/Register/registerPage.dart';
import 'package:playlist_app/Pages/Splash/splashPage.dart';

Map<String, WidgetBuilder> routesApp() {
  return {
    "/": (context) => const SplashPage(),
    "/Main": (context) => MainPage(),
    "/Login": (context) => LoginPage(),
    "/Register": (context) => RegisterPage(),
    "/Home": (context) => HomePage()
  };
}
