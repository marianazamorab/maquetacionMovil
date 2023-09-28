import 'package:alarminder/views/home.dart';
import 'package:flutter/material.dart' hide Colors;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(2, 122, 144, 1)),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
