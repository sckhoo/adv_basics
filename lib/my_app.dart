import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Demo 3')),
      body: Container(
        width: double.infinity,
        height: double.infinity,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              alignment: AlignmentGeometry.center,
              scale: 3,
              //opacity: const AlwaysStoppedAnimation(0.5),
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
            const SizedBox(height: 50),
            const Text(
              'Learn Flutter the fun way!',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            const SizedBox(height: 50),
            OutlinedButton.icon(
              onPressed: () {
                // Handle button press
                //print("button pressed");
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius
                      .zero, // Set border radius to zero for a rectangular shape
                ),
              ),
              icon: const Icon(Icons.arrow_right_alt, color: Colors.white),
              label: const Text(
                'Start Quiz',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
