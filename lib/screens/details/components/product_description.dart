import 'package:flutter/material.dart';
import 'package:gigi_store/models/Products.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductDescription extends StatefulWidget {
  const ProductDescription({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ProductDescriptionState createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(10),
          ),
          child: Text(widget.product.title, style: Theme.of(context).textTheme.headline6),
        ),
        const SizedBox(height: 5),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(5)),
            width: getProportionateScreenWidth(25),
            decoration: BoxDecoration(
                color: widget.product.isFavourite
                    ? Color(0xFFFFE6E6)
                    : Color(0xFFF5F6F9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                )
            ),
            child: Icon(Icons.favorite,
              size: getProportionateScreenWidth(9),
              color: widget.product.isFavourite
                  ? Color(0xFFFF4848)
                  : Color(0xFFD8DEE4),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(10),
            right: getProportionateScreenWidth(30),
          ),
          child: Text(
            pressed ? widget.product.fullDescription : widget.product.description,
            style: TextStyle(fontSize: getProportionateScreenWidth(7)),
          ),
        ),
        if (pressed == false)
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(10),
            vertical: 10,
          ),
          child: GestureDetector(
            onTap: () {
              setState(() {
                pressed = true;
              });
            },
            child: Row(
              children: [
                Text("See More Detail",
                  style: TextStyle(
                      color: Constants.kPrimaryColor,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: Constants.kPrimaryColor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}