import 'package:flutter/material.dart';

ThemeData getThemeData() {
  return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.blue[900],
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

        labelStyle: TextStyle(color: Colors.blue[900]),
        // suffixIcon: IconButton(
        //     onPressed: () {},
        //     icon: Icon(Icons.close,
        //         color: Colors.purple))
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
