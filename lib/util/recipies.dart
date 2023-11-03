import 'package:cooking_app/pages/food_detail.dart';
import 'package:flutter/material.dart';

class Recipes extends StatelessWidget {
  const Recipes(
      {super.key,
      required this.bgColor,
      required this.foodImg,
      required this.foodTitle,
      required this.lessonInfo});

  final Color bgColor;
  final String foodTitle;
  final String foodImg;
  final String lessonInfo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const FoodDetail(),
          ),
        );
      },
      child: Container(
        height: 200,
        width: 180,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Image.asset(foodImg),
            ),
            const SizedBox(height: 15),
            Text(
              foodTitle,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 15),
            Text(
              lessonInfo,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 15),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.favorite_border),
                SizedBox(width: 20),
                Icon(Icons.arrow_outward_outlined)
              ],
            )
          ],
        ),
      ),
    );
  }
}
