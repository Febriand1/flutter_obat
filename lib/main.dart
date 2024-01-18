import 'package:flutter/material.dart';
import 'package:flutter_obat/view/screen/index_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Obat',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange.shade900),
        useMaterial3: true,
        // primarySwatch: Colors.orange,
        // useMaterial3: false,
      ),
      home: const IndexScreen(),
    );
  }
}