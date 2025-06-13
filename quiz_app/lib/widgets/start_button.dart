import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  final VoidCallback onPressed;

  const StartButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    print('StartButton build called');
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: const Text(
        '시작하기',
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
} 