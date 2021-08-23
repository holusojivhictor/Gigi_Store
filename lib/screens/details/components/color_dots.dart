import 'package:flutter/material.dart';
import 'package:gigi_store/components/rounded_icon_btn.dart';
import 'package:gigi_store/models/products.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(10),
      ),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
                (index) => ColorDot(color: product.colors[index],
              isSelected: selectedColor == index,
            ),
          ),
          Spacer(),
          RoundedIconBtn(press: () {}, icon: Icons.remove),
          SizedBox(width: getProportionateScreenWidth(6)),
          RoundedIconBtn(press: () {}, icon: Icons.add),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(6),
      height: getProportionateScreenWidth(15),
      width: getProportionateScreenWidth(15),
      decoration: BoxDecoration(
        //color: product.colors[0],
        shape: BoxShape.circle,
        border: Border.all(color: isSelected
            ? Constants.kPrimaryColor
            : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}