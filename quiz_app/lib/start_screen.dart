import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const 
  StartScreen({super.key, required this.switchScreen});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 300, opacity: Animation.fromValueListenable(ValueNotifier(0.5)),),
          const SizedBox(height: 80),
          const Text('Learn Flutter the fun way!', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: switchScreen,
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              backgroundColor: Colors.white,
              foregroundColor: Colors.purple,
              textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            label: Text('Start Quiz'),
            icon: Icon(Icons.arrow_right_alt),
          )
        ],
      )
      );
  }
}