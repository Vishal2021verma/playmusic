import 'package:flutter/material.dart';
import 'package:playmusic/ui/menu/menu_screen.dart';
import 'package:playmusic/utils/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Play Music',
      theme: CustomTheme().darkTheme,
      home: const MenuScreen(),
    );
  }
}
