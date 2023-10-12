import 'package:flutter/material.dart';

class AnswertButton extends StatelessWidget {
  const AnswertButton(this.answerText, this.onTap, {super.key});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          backgroundColor: const Color.fromARGB(255, 27, 2, 109),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
      child: Text(answerText),
    );
  }
}
