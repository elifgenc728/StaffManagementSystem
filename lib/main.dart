import 'package:flutter/material.dart';
import 'package:mia_support_system/presentation/viewModel/buttoncontrol_provider.dart';
import 'package:provider/provider.dart';

import 'app/app.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ButtonControlProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ),
    ),
  );
}
