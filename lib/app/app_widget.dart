import 'package:arquitetura/app/app_controller.dart';
import 'package:arquitetura/app/pages/home/home_page.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: AppController.instace.themeSwitch,
      builder: (context, isDark, child) {
        return MaterialApp(
          title: "Flutter Tema",
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            brightness: isDark ? Brightness.dark : Brightness.light
          ),
          home: HomePage(),
        );
      
    },);
  }
}


