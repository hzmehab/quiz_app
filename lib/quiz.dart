import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(switchScreen);
  }

  // var activeScreen = 'start-screen';
  //-different approach for rendering content based conditions-

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
      // activeScreen = 'questions-screen';
      //-different approach for rendering content based conditions-
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
          /* 
          child: activeScreen == 'start-screen' 
          ? StartScreen(switchScreen) 
          : QuestionsScreen() 
          -different approach for rendering content based conditions- 
          */
        ),
      ),
    );
  }
}
