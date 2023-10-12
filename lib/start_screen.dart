import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          height: 300,
          color: const Color.fromARGB(130, 255, 255, 255),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 30, bottom: 30),
          child: Text(
            'Learn Flutter the fun way!',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        OutlinedButton.icon(
            onPressed: switchScreen,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'Start Quiz',
              /* style: TextStyle(color: Colors.white, fontSize: 15), 
              -i don't use this to style text because i want to make all button color white
               not text only but the arrow icon to */
            )),
      ]),
    );
  }
}
