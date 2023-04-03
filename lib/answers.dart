import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Answer extends StatelessWidget {
  final String text;
  final void Function() onSelection;

  Answer(this.text, this.onSelection);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(<infinity>,<27>))),
         ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          textStyle: TextStyle(
            color: Colors.white,
          ),
        ),
        child: Text(text),
        onPressed: onSelection,
      ),
    );
  }
}
