import 'package:flutter/material.dart';
import 'package:gigi_store/models/ProductsColors.dart';

class Product {
  final AllProductsColors productsColors;
  final String title, description, price, fullDescription;
  final List<String> images;
  final List<Color> colors;
  final double rating;
  final bool isFavourite, isPopular;

  Product ({
    required this.productsColors,
    required this.images,
    required this.title,
    required this.description,
    required this.fullDescription,
    required this.colors,
    required this.price,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
});
}

//The demo products

List<Product> demoProducts = [
  Product(
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Colors.black,
      Color(0xFFDECB9C),
      Colors.white,
    ],
    productsColors: allProductsColors[0],
    title: "Wireless Controller for PS4",
    fullDescription: fullDescription,
    description: description,
    price: r"$64.99",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    colors: [
      Colors.white,
    ],
    productsColors: allProductsColors[1],
    title: "Nike Sport White - Man Pant",
    fullDescription: fullDescription,
    description: description,
    price: r"$50.99",
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    images: [
      "assets/images/glap.png",
    ],
    colors: [
      Colors.blue,
      Colors.red,
      Colors.green,
    ],
    productsColors: allProductsColors[2],
    title: "Gloves XC Omega - Polygon",
    fullDescription: fullDescription,
    description: description,
    price: r"$36.99",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    images: [
      "assets/images/wireless headset.png",
    ],
    colors: [
      Colors.black,
    ],
    productsColors: allProductsColors[3],
    title: "H800 Logitech Headset",
    fullDescription: fullDescription,
    description: description,
    price: r"$20.99",
    rating: 4.1,
    isFavourite: true,
  ),
];

const String description = "Wireless Controller for PS4 gives you what you want in your gaming experience from precision control to sharing...";

const String fullDescription = "Wireless Controller for PS4 gives you what you want in your gaming experience from precision control to sharing "
    "and all sorts of things, this here is me just rambling cos I don't have content for this. So, just take it like that. All right, bye";