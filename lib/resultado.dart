import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() qunadoReiniciarQuestionario;

  const Resultado(this.pontuacao, this.qunadoReiniciarQuestionario,
      {super.key});

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'parabens!';
    } else if (pontuacao < 12) {
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
            fraseResultado,
            style: const TextStyle(
              fontSize: 28,
            ),
          ),
        ),
        TextButton(
          onPressed: qunadoReiniciarQuestionario,
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
