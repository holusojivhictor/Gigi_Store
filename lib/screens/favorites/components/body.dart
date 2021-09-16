import 'package:flutter/material.dart';
import 'package:gigi_store/components/favorite_card.dart';
import 'package:gigi_store/models/Products.dart';
import 'package:gigi_store/screens/details/details_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 0.66,
      children: List.generate(demoProducts.length, (index) => FavoriteCard(
        product: demoProducts[index],
        press: () {
          Navigator.pushNamed(context, DetailsScreen.routeName,
            arguments: ProductDetailsArguments(product: demoProducts[index]),
          );
        },
      )),
    );
  }
}