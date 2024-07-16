import 'package:flutter/material.dart';
import 'package:todo/utils/themes/theme.dart';
import 'package:todo/views/home/home_views.dart';

class Todo extends StatelessWidget {
  const Todo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TaiyoTheme.lightTheme,
      themeMode: ThemeMode.system,
      darkTheme: TaiyoTheme.darkTheme,
      home: const HomeView(),
    );
  }
}
