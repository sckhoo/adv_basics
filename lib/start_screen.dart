import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              alignment: AlignmentGeometry.center,
              scale: 3,
              //opacity: const AlwaysStoppedAnimation(0.5),
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
            const SizedBox(height: 50),
            Text(
              'Learn Flutter the fun way!',
              style: GoogleFonts.lato(fontSize: 22, color: Colors.white),
            ),
            const SizedBox(height: 50),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius
                      .zero, // Set border radius to zero for a rectangular shape
                ),
              ),
              icon: const Icon(Icons.arrow_right_alt, color: Colors.white),
              label: Text(
                'Start Quiz Now',
                style: GoogleFonts.lato(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
