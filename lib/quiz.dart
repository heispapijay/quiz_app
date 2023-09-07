import 'package:flutter/material.dart';
import 'package:quiz_app/landing_page.dart';
import 'package:quiz_app/question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'Landing_page';
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = LandingPage(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'Question_screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = LandingPage(switchScreen);
    if (activeScreen == 'Question_screen') {
      screenWidget = const QuestionsScreen();
    }
    return MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.blue,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 79, 133, 177),
                Color.fromARGB(255, 21, 93, 151)
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
