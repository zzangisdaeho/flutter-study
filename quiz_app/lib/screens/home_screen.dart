import 'package:flutter/material.dart';
import '../widgets/welcome_text.dart';
import '../widgets/start_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _clickCount = 0;

  void _incrementCount() {
    setState(() {
      _clickCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              height: 250,
              width: 250,
            ),
            const SizedBox(height: 100),
            WelcomeText(clickCount: _clickCount),
            const SizedBox(height: 100),
            StartButton(onPressed: _incrementCount),
          ],
        ),
      ),
    );
  }
} 