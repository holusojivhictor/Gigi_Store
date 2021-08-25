import 'package:flutter/material.dart';
import 'package:gigi_store/components/rounded_icon_btn.dart';
import 'package:gigi_store/models/Products.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ColorDots extends StatefulWidget {
  const ColorDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ColorDotsState createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {
  int selectedColor = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(10),
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