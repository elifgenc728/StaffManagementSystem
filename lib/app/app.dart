import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:provider/provider.dart';

import '../presentation/auth/login.dart';
import '../presentation/pages/job_pool/view_model/buttoncontrol_provider.dart';
import '../presentation/pages/job_pool/view_model/job_pool_view_model.dart';
import '../presentation/resources/theme_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        
        ChangeNotifierProvider<ButtonControlProvider>(
          create: (context) => ButtonControlProvider(),
        ),
        ChangeNotifierProvider<ThemeNotifier>(
            create: (context) => ThemeNotifier()),
        BlocProvider<JobPoolCubit>(
          create: (BuildContext context) => JobPoolCubit(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Material App',
          theme: getThemeData(),
          home: LoginScreen()),
    );
  }
}
