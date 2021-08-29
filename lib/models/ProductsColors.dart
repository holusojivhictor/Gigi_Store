
class AllProductsColors {
  final List<ProductsColors> allProductsColors;

  AllProductsColors({required this.allProductsColors});
}

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

List<AllProductsColors> allProductsColors = [
  AllProductsColors(
    allProductsColors: demoProductsColorsPad,
  ),
  AllProductsColors(
    allProductsColors: demoProductsColorsShorts,
  ),
  AllProductsColors(
    allProductsColors: demoProductsColorsGloves,
  ),
  AllProductsColors(
    allProductsColors: demoProductsColorsHeadSet,
  ),
];


List<ProductsColors> demoProductsColorsPad = [
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
        "assets/images/ps4_console_black_1.jpg",
        "assets/images/ps4_console_black_2.jpg",
        "assets/images/ps4_console_black_3.jpg",
        "assets/images/ps4_console_black_4.jpg",
      ],
    ),
  ),
  ProductsColors(
    productsColorsType: ProductsColorsType(
      images: [
        "assets/images/ps4_console_gold_1.jpg",
        "assets/images/ps4_console_gold_2.jpg",
        "assets/images/ps4_console_gold_3.jpg",
        "assets/images/ps4_console_gold_4.jpg",
      ],
    ),
  ),
  ProductsColors(
    productsColorsType: ProductsColorsType(
      images: [
        "assets/images/ps4_console_white_1.png",
        "assets/images/ps4_console_white_2.png",
        "assets/images/ps4_console_white_3.png",
        "assets/images/ps4_console_white_4.png",
      ],
    ),
  ),
];

List<ProductsColors> demoProductsColorsShorts = [
  ProductsColors(
    productsColorsType: ProductsColorsType(
      images: [
        "assets/images/Image Popular Product 2.png",
      ],
    ),
  ),
  ProductsColors(
    productsColorsType: ProductsColorsType(
      images: [
      ],
    ),
  ),
  ProductsColors(
    productsColorsType: ProductsColorsType(
      images: [
      ],
    ),
  ),
  ProductsColors(
    productsColorsType: ProductsColorsType(
      images: [
      ],
    ),
  ),
];

List<ProductsColors> demoProductsColorsGloves = [
  ProductsColors(
    productsColorsType: ProductsColorsType(
      images: [
        "assets/images/gloves_omega_xc_blue_pairs_1.png",
        "assets/images/gloves_omega_xc_blue_pairs_2.png",
      ],
    ),
  ),
  ProductsColors(
    productsColorsType: ProductsColorsType(
      images: [
        "assets/images/gloves_enduro_alpha_r_1.png",
        "assets/images/gloves_enduro_alpha_r_2.png",
      ],
    ),
  ),
  ProductsColors(
    productsColorsType: ProductsColorsType(
      images: [
        "assets/images/Sarung-Tangan-Sepeda-Polygon-Road-Sigma-Green_1.png",
        "assets/images/Sarung-Tangan-Sepeda-Polygon-Road-Sigma-Green_2.png",
      ],
    ),
  ),
  ProductsColors(
    productsColorsType: ProductsColorsType(
      images: [
      ],
    ),
  ),
];

List<ProductsColors> demoProductsColorsHeadSet = [
  ProductsColors(
    productsColorsType: ProductsColorsType(
      images: [
        "assets/images/wireless_headset_1.png",
        "assets/images/wireless_headset_2.png",
        "assets/images/wireless_headset_3.png",
        "assets/images/wireless_headset_4.png",
      ],
    ),
  ),
  ProductsColors(
    productsColorsType: ProductsColorsType(
      images: [
      ],
    ),
  ),
  ProductsColors(
    productsColorsType: ProductsColorsType(
      images: [
      ],
    ),
  ),
  ProductsColors(
    productsColorsType: ProductsColorsType(
      images: [
      ],
    ),
  ),
];