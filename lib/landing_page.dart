import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/styled_text.dart';

class LandingPage extends StatelessWidget {
  const LandingPage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            //height: 300,
            width: 300,
            color: const Color.fromARGB(153, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 232, 232, 255),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'Start Quiz',
            ),
          ),
          // ElevatedButton(
          //   onPressed: () {},
          //   style: ButtonStyle(
          //     backgroundColor: MaterialStateProperty.all(
          //         const Color.fromARGB(255, 14, 80, 134)),
          //     padding: MaterialStateProperty.all(
          //       const EdgeInsets.symmetric(
          //         horizontal: 10,
          //         vertical: 10,
          //       ),
          //     ),
          //   ),
          //   child: const Text(
          //     'Start Quiz',
          //   ),
          // ),
        ],
      ),
    );
  }
}
