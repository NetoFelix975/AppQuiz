import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Result extends StatelessWidget {
  final int score;
  final void Function() whenRestartQuiz;

  const Result(this.score, this.whenRestartQuiz, {super.key});

  String get sentenceResult {
    if (score < 8) {
      return 'parabens!';
    } else if (score < 12) {
      return 'você é bom!';
    } else {
      return 'nível jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            sentenceResult,
            style: const TextStyle(
              fontSize: 28,
            ),
          ),
        ),
        TextButton(
          onPressed: whenRestartQuiz,
          child: const Text(
            'Reiniciar?',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
