import 'package:flutter/material.dart';
import 'package:quiz_deneme/models/questions.dart';
import 'package:quiz_deneme/screens/result_screen.dart';
import 'package:quiz_deneme/widgets/answer_card.dart';
import 'package:quiz_deneme/widgets/next_button.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int? selectedAnswerIndex;
  int questionIndex = 0;
  int score = 0;
  int wrongAnswer = 0;

  void pickAnswer(int value) {
    final question = questions[questionIndex];

    if (value == question.correctAnswerIndex) {
      score++;
    } else {
      wrongAnswer++;
    }
    setState(() {});
  }

  void goToNextQuestion() {
    if (questionIndex < questions.length - 1) {
      questionIndex++;
    }
  }

  @override
  void initState() {
    selectedAnswerIndex == null;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[questionIndex];
    bool isLastQuestion = questionIndex == questions.length - 1;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              question.question,
              style: const TextStyle(
                fontSize: 22,
              ),
              textAlign: TextAlign.center,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: question.options.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedAnswerIndex = index;
                    });

                    // pickAnswer(index);
                  },
                  child: AnswerCard(
                    question: question.options[index],
                    isSelected: selectedAnswerIndex == index,
                    selectedAnswerIndex: selectedAnswerIndex,
                  ),
                );
              },
            ),
            isLastQuestion && selectedAnswerIndex != null
                ? RectangularButton(
                    onPressed: () {
                      pickAnswer(selectedAnswerIndex!);
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (_) => ResultScreen(
                            score: score,
                            wrongAnswer: wrongAnswer,
                          ),
                        ),
                      );
                    },
                    label: 'Bitti',
                  )
                : RectangularButton(
                    onPressed: () {
                      pickAnswer(selectedAnswerIndex!);
                      selectedAnswerIndex != null ? goToNextQuestion() : null;
                    },
                    label: 'Sonraki Soru',
                  ),
          ],
        ),
      ),
    );
  }
}
