import 'package:facebook_responsive_ui/config/palette.dart';
import 'package:facebook_responsive_ui/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // navigation bar color
    statusBarColor: Colors.white, // status bar color
  ));
  runApp(MaterialApp(
    title: 'Facebook Responsive UI',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: Palette.scaffold,
    ),
    home: NavScreen(),
  ));
}
