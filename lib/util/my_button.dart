import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/main_page.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.color,
    required this.text,
  });

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 165,
      height: 65,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MainPage()),
          );
        },
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            backgroundColor: color,
            foregroundColor: Colors.black),
        child: Text(
          text,
          style: GoogleFonts.ubuntu(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
