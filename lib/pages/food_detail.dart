import 'package:cooking_app/util/ingredients.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodDetail extends StatelessWidget {
  const FoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.only(top: 10, left: 5),
          decoration: BoxDecoration(
              color: const Color.fromRGBO(200, 220, 245, .4),
              borderRadius: BorderRadius.circular(9)),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black, // Change the color here
            ),
            onPressed: () {
              Navigator.pop(context); // This line pops the current page
            },
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'lib/images/chickenSteakGrilledVeg.png',
            width: 250,
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                height: 532,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(200, 220, 245, .4),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(38),
                    topRight: Radius.circular(38),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 30),
                      child: Text(
                        'Chicken Steak with Grilled Vegtables',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.ubuntu(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset('lib/images/Joe.png'),
                        const Text(
                          'Alisa Doe',
                          style: TextStyle(fontSize: 17),
                        ),
                        const SizedBox(width: 18),
                        const Text(
                          '(10 Recipes)',
                          style: TextStyle(fontSize: 17),
                        ),
                        const Spacer(),
                        IconButton(
                          iconSize: 18.0,
                          onPressed: () {},
                          icon: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.red[400],
                            ),
                            child: const Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    // Info
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(199, 247, 247, 247),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('lib/images/time.png'),
                              const Text(
                                '30 Min',
                                style: TextStyle(fontSize: 17),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('lib/images/dish.png'),
                              const Text(
                                'Steps',
                                style: TextStyle(fontSize: 17),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('lib/images/hat.png'),
                              const Text(
                                'Beginner',
                                style: TextStyle(fontSize: 17),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    // Ingriedients Container
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(199, 247, 247, 247),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(40)),
                            child: const Text(
                              'Ingredients',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          const Text(
                            'Steps',
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Ingredients(
                            ingredinetsName: 'Chopped Potato',
                            imagePath: 'lib/images/potato.png'),
                        Ingredients(
                            ingredinetsName: 'Fresh Tomato',
                            imagePath: 'lib/images/tomato.png'),
                        Ingredients(
                            ingredinetsName: '500Gm Chicken leg',
                            imagePath: 'lib/images/leg.png'),
                        Ingredients(
                            ingredinetsName: 'Parsely',
                            imagePath: 'lib/images/parsely.png'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
