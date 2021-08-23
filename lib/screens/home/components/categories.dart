import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/images/icons8-flash.png", "text": "Flash Deal"},
      {"icon": "assets/images/icons8-bill-cipher.png", "text": "Bill"},
      {"icon": "assets/images/icons8-game-controller.png", "text": "Game"},
      {"icon": "assets/images/icons8-gift.png", "text": "Daily Gift"},
      {"icon": "assets/images/icons8-recycle.png", "text": "More"},
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(categories.length, (index) => CategoryCard(
              icon: categories[index]["icon"],
              press: () {},
              text: categories[index]["text"]),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({required this.icon, required this.press, required this.text});

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(25),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(9)),
                decoration: BoxDecoration(
                  color: Colors.indigo.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(icon),
              ),
            ),
            const SizedBox(height: 5),
            Text(text, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}