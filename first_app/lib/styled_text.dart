import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {

  const StyledText(this.text, {super.key});
  
  final String text;

  
  @override
  Widget build(Object context) {
    return Text(
              text,
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )
    );
  }

  
}