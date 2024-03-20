import 'package:flutter/material.dart';
import 'package:quiz_deneme/screens/open_screen.dart';
import 'package:quiz_deneme/screens/quiz_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.score,
    required this.wrongAnswer,
  });

  final int score;
  final int wrongAnswer;

  void goToFirstQuestion(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) => const StartQuiz(), // Quiz ekranına geri dön
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Quiz Bitti',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Doğru Cevap:  $score',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Yanlış Cevap : $wrongAnswer',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  goToFirstQuestion(context);
                  // İlk soruya dön
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 37, 150, 41),
                  textStyle: const TextStyle(fontSize: 25),
                ),
                child: const Text('Tekrar Dene',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black))),
          ],
        ),
      ),
    );
  }
}
