import 'package:flutter/material.dart';
import 'package:mia_support_system/presentation/resources/theme_manager.dart';
import 'package:mia_support_system/presentation/viewModel/buttoncontrol_provider.dart';
import 'package:provider/provider.dart';

import 'app/app.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
      Provider(create: (_) => ButtonControlProvider(),),
      ChangeNotifierProvider<ThemeNotifier>(
          create: (context) => ThemeNotifier())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
      
        home: MyApp(),
      ),
    ),
  );
}
