import 'package:flutter/material.dart';
import 'package:gigi_store/components/favorite_card.dart';
import 'package:gigi_store/models/Products.dart';
import 'package:gigi_store/screens/details/details_screen.dart';

class Body extends StatefulWidget {

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Product> _favProducts = [];
  List<Product> get favProducts => _favProducts;

  int index = 0;

  @override
  Widget build(BuildContext context) {
    _favProducts = [];
    if (demoProducts[index].isFavourite == true)
    _favProducts.add(demoProducts[index]);

    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 0.66,
      children: List.generate(favProducts.length, (index) {
        return FavoriteCard(
          product: favProducts[index],
          press: () {
            Navigator.pushNamed(context, DetailsScreen.routeName,
              arguments: ProductDetailsArguments(product: favProducts[index]),
            );
          },
        );
      }),
    );
  }
}