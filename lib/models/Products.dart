import 'package:flutter/material.dart';
import 'package:gigi_store/models/ProductsColors.dart';

class Product {
  final AllProductsColors productsColors;
  final String title, description, fullDescription, condition, manufacturer;
  final List<String> images;
  final List<Color> colors;
  final double rating, price, quantitySold;
  final bool isFavourite, isPopular;

  Product ({
    required this.productsColors,
    required this.images,
    required this.title,
    required this.description,
    required this.fullDescription,
    required this.colors,
    required this.price,
    required this.quantitySold,
    required this.condition,
    required this.manufacturer,
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
    price: 64.99,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
    condition: "",
    manufacturer: "",
    quantitySold: 0,
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
    price: 50.99,
    rating: 4.1,
    isPopular: true,
    condition: "",
    manufacturer: "",
    quantitySold: 0,
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
    price: 36.99,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
    condition: "",
    manufacturer: "",
    quantitySold: 0,
  ),
  Product(
    images: [
      "assets/images/wireless headset.png",
    ],
    colors: [
      Colors.black,
    ],
    productsColors: allProductsColors[3],
    title: "H800 Black Logitech Headset",
    fullDescription: fullDescription,
    description: description,
    price: 20.99,
    rating: 4.1,
    isFavourite: true,
    condition: "",
    manufacturer: "",
    quantitySold: 0,
  ),
];

List<Product> recentlyViewed = [
  Product(
    images: [
      "assets/images/gaming_chair_black_1.png",
      "assets/images/gaming_chair_blue_1.jpg",
      "assets/images/gaming_chair_gold_1.jpg",
      "assets/images/gaming_chair_red_1.jpg",
    ],
    colors: [
      Colors.black,
      Colors.blue,
      Color(0xFFDECB9C),
      Color(0xFFF6625E),
    ],
    productsColors: allProductsColors[4],
    title: "AutoFull Gaming Chair High Back",
    fullDescription: fullDescription,
    description: description,
    price: 229.99,
    rating: 4.4,
    isFavourite: false,
    condition: "",
    manufacturer: "",
    quantitySold: 0,
  ),
  Product(
    images: [
      "assets/images/mouse_black_1.png",
    ],
    colors: [
      Colors.black,
      Colors.white,
    ],
    productsColors: allProductsColors[5],
    title: "Redragon RGB Wired Gaming Mouse",
    fullDescription: fullDescription,
    description: description,
    price: 40.99,
    rating: 4.3,
    condition: "",
    manufacturer: "",
    quantitySold: 0,
  ),
  Product(
    images: [
      "assets/images/goku_action_figure_1.png",
    ],
    colors: [
      Colors.orange,
    ],
    productsColors: allProductsColors[6],
    title: "Dragon Ball Super Action Figure - Goku",
    fullDescription: fullDescription,
    description: description,
    price: 66.99,
    rating: 4.6,
    isFavourite: true,
    condition: "",
    manufacturer: "",
    quantitySold: 0,
  ),
  Product(
    images: [
      "assets/images/keyboard_mouse_black_1.png",
    ],
    colors: [
      Colors.black,
      Colors.white,
      Colors.pinkAccent,
    ],
    productsColors: allProductsColors[7],
    title: "Gaming Keyboard and Mouse Combo",
    fullDescription: fullDescription,
    description: description,
    price: 10.99,
    rating: 4.0,
    condition: "",
    manufacturer: "",
    quantitySold: 0,
  ),
];

List<Product> smartPhonesProducts = [
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
    title: "Samsung Galaxy A32 5G 64gb Metro Pcs by T-mobile",
    fullDescription: fullDescription,
    description: description,
    price: 176.99,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
    condition: "Brand New",
    manufacturer: "Samsung",
    quantitySold: 21,
  ),
  Product(
    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    colors: [
      Colors.white,
    ],
    productsColors: allProductsColors[1],
    title: "Samsung Galaxy A21S - 64GB (GSM unlocked) 6.5' Duos T-mobile",
    fullDescription: fullDescription,
    description: description,
    price: 191.99,
    rating: 4.1,
    isPopular: true,
    condition: "Brand New",
    manufacturer: "Samsung",
    quantitySold: 1069,
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
    title: "New Samsung Galaxy S10e G970U GSM Unlocked T-mobile AT&T",
    fullDescription: fullDescription,
    description: description,
    price: 249.99,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
    condition: "Open Box",
    manufacturer: "Samsung",
    quantitySold: 25,
  ),
  Product(
    images: [
      "assets/images/wireless headset.png",
    ],
    colors: [
      Colors.black,
    ],
    productsColors: allProductsColors[3],
    title: "Samsung Galaxy S10 Plus SM-G975U 128gb Black Fedex",
    fullDescription: fullDescription,
    description: description,
    price: 298.99,
    rating: 4.1,
    isFavourite: true,
    condition: "Open Box",
    manufacturer: "Samsung",
    quantitySold: 2460,
  ),
];

const String description = "Wireless Controller for PS4 gives you what you want in your gaming experience from precision control to sharing...";

const String fullDescription = "Wireless Controller for PS4 gives you what you want in your gaming experience from precision control to sharing "
    "and all sorts of things, this here is me just rambling cos I don't have content for this. So, just take it like that. All right, bye";