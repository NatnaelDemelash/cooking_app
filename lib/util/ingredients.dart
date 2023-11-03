import 'package:flutter/material.dart';

class Ingredients extends StatelessWidget {
  const Ingredients(
      {super.key, required this.imagePath, required this.ingredinetsName});

  final String ingredinetsName;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 140,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(imagePath),
          const SizedBox(height: 10),
          Text(
            ingredinetsName,
            style: const TextStyle(fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
