import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final Color color;
  final String imageUrl;

  const Menu({super.key, required this.color, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Image.asset(imageUrl),
    );
  }
}
