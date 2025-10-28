import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adv_basics/data/questions.dart';


class ResultScreen extends StatelessWidget {
  const ResultScreen(this.selectedAnswers, {super.key});

  final List<String> selectedAnswers;

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
            Text(
              'You answered X out of Y questions correctly!',
              style: GoogleFonts.lato(fontSize: 22, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              'List of answers and questions:',
              style: GoogleFonts.lato(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(height: 20),
            ...selectedAnswers.map((answer) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Text(
                  answer,
                  style: GoogleFonts.lato(fontSize: 18, color: Colors.white),
                ),
              );
            }),
            OutlinedButton.icon(
              onPressed: () {
                // Restart the quiz or navigate back to start screen
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius
                      .zero, // Set border radius to zero for a rectangular shape
                ),
              ),
              icon: const Icon(Icons.arrow_right_alt, color: Colors.white),
              label: Text(
                'Restart Quiz',
                style: GoogleFonts.lato(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
