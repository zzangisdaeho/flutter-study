import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        // backgroundColor: const Color.fromARGB(255, 163, 46, 46),
        body: GradientContainer(color: Colors.blue, color2: Colors.red)
      ),
    );
  }
}

