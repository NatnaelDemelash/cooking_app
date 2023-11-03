import 'package:cooking_app/util/menu.dart';
import 'package:flutter/material.dart';
import 'package:cooking_app/util/my_button.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/recipies.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
            icon: const Icon(Icons.menu_rounded, color: Colors.black),
            onPressed: () {}),
      ),
      body: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Menu(
                  color: Color.fromRGBO(229, 251, 245, 1),
                  imageUrl: "lib/images/chicken.png",
                  menuIconName: 'Chicken'),
              Menu(
                  color: Color.fromRGBO(246, 251, 228, 1),
                  imageUrl: "lib/images/beef.png",
                  menuIconName: 'Beef'),
              Menu(
                  color: Color.fromRGBO(234, 228, 251, 1),
                  imageUrl: "lib/images/fish.png",
                  menuIconName: 'Fish'),
              Menu(
                  color: Color.fromRGBO(251, 229, 237, 1),
                  imageUrl: "lib/images/bakery.png",
                  menuIconName: 'Bakery'),
            ],
          ),
          const SizedBox(height: 35),
          Text(
            'I would like to Cook',
            style: GoogleFonts.ubuntu(
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search for your query',
                prefixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
                suffixIcon: Container(
                  margin: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey[50],
                      borderRadius: BorderRadius.circular(50)),
                  child: IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {},
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),
          Container(
            height: 200,
            width: 380,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(35, 47, 87, 1),
              borderRadius: BorderRadius.circular(32),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xFFCDD0DB), // Shadow color (#CDD0DB)
                  spreadRadius: 5,
                  blurRadius: 3,
                  offset: Offset(0, 7), // Offset to create a bottom shadow
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Unlock',
                  style: GoogleFonts.ubuntu(color: Colors.white, fontSize: 32),
                ),
                Text(
                  'Unlimted Recipes',
                  style: GoogleFonts.ubuntu(color: Colors.white, fontSize: 32),
                ),
                const SizedBox(height: 18),
                const Button(
                  color: Colors.black,
                  text: 'Go Premium',
                  textColor: Color.fromRGBO(255, 255, 255, 1),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),

          // RECIPIES
          const SizedBox(height: 18),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0, bottom: 12.0),
                child: Text(
                  'Latest Rexipes',
                  style: GoogleFonts.ubuntu(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const <Widget>[
                      Recipes(
                          bgColor: Color.fromRGBO(67, 193, 167, 1),
                          foodImg: 'lib/images/sushi.png',
                          foodTitle: 'Japanese Sushi',
                          lessonInfo: '5 Lessons | 3hr 12m'),
                      SizedBox(width: 10),
                      Recipes(
                          bgColor: Color.fromRGBO(254, 207, 93, 1),
                          foodImg: 'lib/images/kfc.png',
                          foodTitle: 'KFC Chciken',
                          lessonInfo: '3 Lessons | 2hr 2m'),
                      SizedBox(width: 10),
                      Recipes(
                          bgColor: Color.fromRGBO(0, 157, 221, 1),
                          foodImg: 'lib/images/koi.png',
                          foodTitle: 'Koi fish Salad',
                          lessonInfo: '4 Lessons | 2hr 40m'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
