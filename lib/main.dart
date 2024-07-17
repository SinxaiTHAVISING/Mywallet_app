import 'package:flutter/material.dart';
import 'Launcher.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Wallet',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:const Color(0xFF68C3AC), ),
        useMaterial3: true,
        fontFamily: 'NotoSansLao',
      ),
      home: const Launcher(),
    );
  }
}

