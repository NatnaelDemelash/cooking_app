import 'package:cooking_app/util/menu.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
              icon: Icon(Icons.menu_rounded, color: Colors.black),
              onPressed: () {}),
        ),
        body: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Menu(
                color: Color.fromRGBO(229, 251, 245, 1),
                imageUrl: "lib/images/chicken.png"),
            Menu(
                color: Color.fromRGBO(246, 251, 228, 1),
                imageUrl: "lib/images/beef.png"),
            Menu(
                color: Color.fromRGBO(234, 228, 251, 1),
                imageUrl: "lib/images/fish.png"),
            Menu(
                color: Color.fromRGBO(251, 229, 237, 1),
                imageUrl: "lib/images/bakery.png"),
          ],
        ));
  }
}
