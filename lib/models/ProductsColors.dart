class ProductsColors {
  final ProductsColorsType productsColorsType;

  ProductsColors({required this.productsColorsType});
}

class ProductsColorsType {
  final List<String> images;

  ProductsColorsType({
    required this.images,
});
}

List<ProductsColors> demoProductsColors = [
  ProductsColors(
      productsColorsType: ProductsColorsType(
        images: [
          "assets/images/ps4_console_red_1.jpg",
          "assets/images/ps4_console_red_2.jpg",
          "assets/images/ps4_console_red_3.jpg",
          "assets/images/ps4_console_red_4.jpg",
        ],
      ),
  ),
  ProductsColors(
    productsColorsType: ProductsColorsType(
      images: [
        "assets/images/ps4_console_red_1.jpg",
        "assets/images/ps4_console_red_2.jpg",
        "assets/images/ps4_console_red_3.jpg",
        "assets/images/ps4_console_red_4.jpg",
      ],
    ),
  ),
  ProductsColors(
    productsColorsType: ProductsColorsType(
      images: [
        "assets/images/ps4_console_red_1.jpg",
        "assets/images/ps4_console_red_2.jpg",
        "assets/images/ps4_console_red_3.jpg",
        "assets/images/ps4_console_red_4.jpg",
      ],
    ),
  ),
  ProductsColors(
    productsColorsType: ProductsColorsType(
      images: [
        "assets/images/ps4_console_red_1.jpg",
        "assets/images/ps4_console_red_2.jpg",
        "assets/images/ps4_console_red_3.jpg",
        "assets/images/ps4_console_red_4.jpg",
      ],
    ),
  ),
];