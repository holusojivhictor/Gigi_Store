import 'package:flutter/material.dart';
import 'package:gigi_store/components/rounded_icon_btn.dart';
import 'package:gigi_store/models/Products.dart';
import 'package:gigi_store/screens/details/components/top_rounded_container.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'color_dots.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;

  int selectedColor = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(120),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.productsColors.allProductsColors[selectedColor].productsColorsType.images[selectedImage]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              widget.product.productsColors.allProductsColors[selectedColor].productsColorsType.images.length,
                  (index) => buildSmallPreview(index),
            ),
          ],
        ),
        TopRoundedContainer(
          color: Color(0xFFF6F7F9),
          child: Padding(
            padding: EdgeInsets.only(
              left: getProportionateScreenWidth(10),
              right: getProportionateScreenWidth(10),
              bottom: getProportionateScreenWidth(5),
            ),
            child: Row(
              children: [
                ...List.generate(
                  widget.product.colors.length,
                      (index) => buildColorDots(index),
                ),
                Spacer(),
                RoundedIconBtn(press: () {}, icon: Icons.remove),
                SizedBox(width: getProportionateScreenWidth(6)),
                RoundedIconBtn(press: () {}, icon: Icons.add),
              ],
            ),
          ),
        ),
      ],
    );
  }

  GestureDetector buildColorDots(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedColor = index;
        });
      },
      child: ColorDot(color: widget.product.colors[index],
        isSelected: selectedColor == index,
      ),
    );
  }

  GestureDetector buildSmallPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenHeight(8)),
        margin: EdgeInsets.only(right: getProportionateScreenWidth(7)),
        height: getProportionateScreenWidth(22),
        width: getProportionateScreenWidth(22),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: selectedImage == index
              ? Constants.kPrimaryColor
              : Colors.transparent,
          ),
        ),
        child: Image.asset(widget.product.productsColors.allProductsColors[selectedColor].productsColorsType.images[index]),
      ),
    );
  }
}

//demoProductsColorsPad[selectedColor].productsColorsType.images[selectedImage]