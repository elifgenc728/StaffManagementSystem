import 'package:flutter/material.dart';
import 'package:mia_support_system/presentation/resources/color_manager.dart';

ThemeData? getThemeData() {
  return ThemeData.dark().copyWith(
      elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        backgroundColor: ColorManager.orangeColor

        // padding: EdgeInsets.only(
        //     left: 120, right: 120, top: 20, bottom: 20),
        ),
  ));
}
