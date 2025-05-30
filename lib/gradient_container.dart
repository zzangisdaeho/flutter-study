import 'dart:math';

import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer({super.key, required this.color, required this.color2});

  final Color color;
  final Color color2;

  void rollDice() {
    imagePath = 'assets/images/dice-${Random().nextInt(6) + 1}.png';
  }

  var imagePath = 'assets/images/dice-1.png';

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: startAlignment,
              end: endAlignment,
              colors: [
                color,
                color2,
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Image.asset(imagePath, width: 200),
              const SizedBox(height: 80),
              TextButton(
                onPressed: rollDice, 
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(5),
                  backgroundColor: const Color.fromARGB(255, 140, 51, 51),
                  foregroundColor: const Color.fromARGB(255, 53, 144, 95),
                ),
                child: const StyledText("PRESS ME"))
            ]
            )
          ),
        );
  }
}

