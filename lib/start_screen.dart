import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          height: 300,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 30, bottom: 30),
          child: Text(
            'Learn Flutter the fun way!',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        const OutlinedButton(
            onPressed: null,
            child: Text(
              'Start Quiz',
              style: TextStyle(color: Colors.white, fontSize: 15),
            )),
      ]),
    );
  }
}
