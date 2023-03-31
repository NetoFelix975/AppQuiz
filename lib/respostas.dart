import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onSelection;

  Resposta(this.texto, this.onSelection);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          textStyle: TextStyle(
            color: Colors.white,
          ),
        ),
        child: Text(texto),
        onPressed: onSelection,
      ),
    );
  }
}
