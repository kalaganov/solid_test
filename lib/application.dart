import 'package:flutter/material.dart';
import 'package:solid_test/presentaion/pages/main/page_main.dart';

/// root widget of application
class Application extends StatelessWidget {
  /// constructor
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff141824),
          foregroundColor: Color(0xfff05315),
        ),
      ),
      home: const PageMain(),
    );
  }
}
