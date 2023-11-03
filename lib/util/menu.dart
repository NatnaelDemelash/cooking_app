import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final Color color;
  final String imageUrl;
  final String menuIconName;
  const Menu(
      {super.key,
      required this.color,
      required this.imageUrl,
      required this.menuIconName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Image.asset(imageUrl),
        ),
        const SizedBox(height: 10),
        Text(menuIconName)
      ],
    );
  }
}
