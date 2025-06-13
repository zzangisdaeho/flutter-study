class QuizQuestion {
  final String text;
  final List<String> answers;
  final int correctAnswerIndex;

  const QuizQuestion({
    required this.text,
    required this.answers,
    required this.correctAnswerIndex,
  });
}