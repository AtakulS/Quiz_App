import 'package:flutter/material.dart';

class AnswerCard extends StatelessWidget {
  const AnswerCard({
    super.key,
    required this.question,
    required this.isSelected,
    required this.selectedAnswerIndex,
  });

  final String question;
  final bool isSelected;

  final int? selectedAnswerIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      child: selectedAnswerIndex != null
          ? Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: isSelected ? Colors.green : Colors.white24,
                ),
              ),
              child: Text(
                question,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            )
          : Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.white24,
                ),
              ),
              child: Text(
                question,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
    );
  }
}
