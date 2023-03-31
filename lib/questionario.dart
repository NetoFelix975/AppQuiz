import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projeto_perguntas/questao.dart';
import './questao.dart';
import './respostas.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int selectedQuestion;
  final Function toRespond;

  Quiz({
    required this.questions,
    required this.selectedQuestion,
    required this.toRespond,
  });

  bool get withSelectedQuestion {
    return selectedQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = withSelectedQuestion
        ? questions[selectedQuestion].cast()['respostas']
            as List<Map<String, Object>>
        : [];

    return Column(
      children: <Widget>[
        Question(questions[selectedQuestion]['texto'] as String),
        ...respostas.map((resp) {
          return Answer(
            resp['texto'].toString(),
            () => toRespond(int.parse(resp['pontuacao'].toString())),
          );
        }).toList(),
      ],
    );
  }
}
