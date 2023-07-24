import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:zorrosign_test/core/custom_theme.dart';
import 'package:zorrosign_test/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: appTheme,
      home: const HomeView(),
    );
  }
}
