import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mia_support_system/presentation/auth/login.dart';
import 'package:mia_support_system/presentation/home/job_pool/view_model/job_pool_view_model.dart';
import 'package:mia_support_system/presentation/resources/theme_manager.dart';
import 'package:mia_support_system/presentation/resources/theme_manager.dart';
import 'package:mia_support_system/presentation/viewModel/buttoncontrol_provider.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        Provider(
          create: (_) => ButtonControlProvider(),
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
