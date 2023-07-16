import 'package:flutter/material.dart';

ThemeData getThemeData() {
  return ThemeData(
       radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) => Colors.green), //<-- SEE HERE
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.green[900],
        centerTitle: true,
        elevation: 5,
      ),
      inputDecorationTheme: InputDecorationTheme(
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        labelStyle: TextStyle(color: Colors.grey[800]),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue[900],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              16,
            ),
          ),
        ),
      ));
}

class ThemeNotifier extends ChangeNotifier{ // sayfalar arasnda etkileşim buradan etkilenecekse extends edilir
  bool isLightTheme = false;

  void changeTheme() {
    isLightTheme = !isLightTheme;
  }

  ThemeData get currentTheme =>
      isLightTheme ? ThemeData.light() : ThemeData.dark();
}