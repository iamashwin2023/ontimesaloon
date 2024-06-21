import 'package:flutter/material.dart';
import 'package:salon/features/book_mark.dart';
import 'package:salon/pages_usermanagement/signup_page.dart';
import 'package:salon/pages_usermanagement/splash_screen.dart';


import 'package:salon/utils/colors.dart';





void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Saloon app',
      theme: ThemeData(
        drawerTheme: const DrawerThemeData(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
        scaffoldBackgroundColor: AppColors.appbackgroundColor,
      ),
      home:const SplashScreen()
    );
  }
}
