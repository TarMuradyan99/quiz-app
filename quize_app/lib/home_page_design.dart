import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Gradient_container extends StatelessWidget {
  const Gradient_container(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/images/back.jpg'),
              height: 500,
            ),
             Padding(
              padding: EdgeInsets.only(bottom: 30.0),
              child: Text(
                'Learn Flutter The fun way!',
                style: GoogleFonts.pacifico(
                  fontSize: 30,
                  color: Color.fromRGBO(255, 106, 180, 1),
                  shadows: <Shadow>[
                   const Shadow(
                      offset: Offset(1, 1),
                      blurRadius: 3.0,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                   const Shadow(
                      offset: Offset(0.5, 0.5),
                      blurRadius: 3.0,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ],
                ),
              ),
            ),
          const  SizedBox(
              height: 80,
            ),
            OutlinedButton.icon(
              onPressed: () {
                startQuiz();
              },
              style: OutlinedButton.styleFrom(
                foregroundColor:const Color.fromRGBO(33, 215, 243, 1),
              ),
              label: const Text(
                'Start Quiz',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              icon: const Icon(
                Icons.smoking_rooms_rounded,
                size: 35.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
