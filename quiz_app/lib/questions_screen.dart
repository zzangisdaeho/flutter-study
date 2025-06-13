import 'package:flutter/material.dart';
import 'data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  var score = 0;
  var quizCompleted = false;

  void answerQuestion(int selectedAnswerIndex) {
    final currentQuestion = questions[currentQuestionIndex];
    
    if (selectedAnswerIndex == currentQuestion.correctAnswerIndex) {
      setState(() {
        score++;
      });
    }

    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else {
        quizCompleted = true;
      }
    });
  }

  void restartQuiz() {
    setState(() {
      currentQuestionIndex = 0;
      score = 0;
      quizCompleted = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (quizCompleted) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '퀴즈 완료!',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              '점수: $score / ${questions.length}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: restartQuiz,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
              ),
              child: const Text(
                '다시 시작하기',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      );
    }

    final currentQuestion = questions[currentQuestionIndex];

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '질문 ${currentQuestionIndex + 1} / ${questions.length}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            currentQuestion.text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          ...currentQuestion.answers.asMap().entries.map((entry) {
            final index = entry.key;
            final answer = entry.value;
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: ElevatedButton(
                onPressed: () => answerQuestion(index),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                ),
                child: Text(
                  answer,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}