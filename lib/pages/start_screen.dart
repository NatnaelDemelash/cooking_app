import 'package:cooking_app/util/my_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: Image.asset("lib/images/bg2.jpg"),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Text(
                  'unlimted premium recipes'.toUpperCase(),
                  style: GoogleFonts.ubuntu(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Text(
                  'Start Cooking',
                  style: GoogleFonts.ubuntu(
                      fontSize: 64, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 25),
              Row(
                children: const [
                  Button(color: Color.fromRGBO(255, 206, 93, 1), text: 'Login'),
                  Button(
                      color: Color.fromRGBO(64, 193, 167, 1), text: 'Sign Up')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
