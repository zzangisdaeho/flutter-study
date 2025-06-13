import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  final int clickCount;

  const WelcomeText({
    super.key,
    required this.clickCount,
  });

  @override
  Widget build(BuildContext context) {
    print('WelcomeText build called');
    return Container(
      width: 300,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        '퀴즈 앱에 오신 것을 환영합니다!\n여러분의 지식을 테스트해보세요.\n\n버튼 클릭 횟수: $clickCount',
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
} 