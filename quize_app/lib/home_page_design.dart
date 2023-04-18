import 'package:flutter/material.dart';

class Gradient_container extends StatelessWidget {
  const Gradient_container({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
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
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: AutofillHints.addressCity,
                    color: Color.fromRGBO(255, 106, 180, 1),
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1, 1),
                        blurRadius: 3.0,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 3.0,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 80,),
              OutlinedButton.icon(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  foregroundColor: Color.fromRGBO(33, 215, 243, 1),
                ),

                label:const Text(
                  'Start Quiz',
                style: TextStyle(
                  fontSize: 24,
                ),
                ),
                icon:const Icon(Icons.smoking_rooms_rounded,size: 35.0,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
