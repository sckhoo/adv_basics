import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_summary.dart';

//import 'package:adv_basics/start_screen.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({required this.chosenAnswers, super.key});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final int totalQuestions = questions.length;
    final int numCorrectAnswers = summaryData
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;

    return Container(
      color: Colors.purple,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectAnswers out of $totalQuestions questions correctly!',
              style: GoogleFonts.lato(fontSize: 22, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            QuestionsSummary(getSummaryData()),
            const SizedBox(height: 20),
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
