import 'package:flutter/material.dart';
import 'package:gigi_store/models/ProductsColors.dart';

class Product {
  final ProductsColors productsColors;
  final String title, description, price;
  final List<String> images;
  final List<Color> colors;
  final double rating;
  final bool isFavourite, isPopular;

  Product ({
    required this.productsColors,
    required this.images,
    required this.title,
    required this.description,
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
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    productsColors: demoProductsColors[0],
    title: "Wireless Controller for PS4",
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
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    productsColors: demoProductsColors[0],
    title: "Nike Sport White - Man Pant",
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
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    productsColors: demoProductsColors[0],
    title: "Gloves XC Omega - Polygon",
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
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    productsColors: demoProductsColors[0],
    title: "H800 Logitech Headset",
    description: description,
    price: r"$20.99",
    rating: 4.1,
    isFavourite: true,
  ),
];

const String description = "Wireless Controller for PS4 gives you what you want in your gaming experience from precision control to sharing...";