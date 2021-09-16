import 'package:flutter/material.dart';
import 'package:gigi_store/models/Products.dart';

import '../constants.dart';
import '../size_config.dart';

class FavoriteCard extends StatelessWidget {
  final double width, aspectRatio;
  final Product product;
  final GestureTapCallback press;

  const FavoriteCard({
    required this.press,
    required this.product,
    this.width = 60,
    this.aspectRatio = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(5)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(width),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: aspectRatio,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                  decoration: BoxDecoration(
                    color: Constants.kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(product.images[0]),
                ),
              ),
              const SizedBox(height: 5),
              Text(product.title,
                style: TextStyle(color: Constants.black, fontSize: getProportionateScreenWidth(7)),
                maxLines: 2,
              ),
              SizedBox(height: 1),
              Text("\$${product.price}",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(6),
                  fontWeight: FontWeight.w600,
                  color: Constants.kPrimaryColor,
                ),
              ),
              SizedBox(height: 1),
              Text("${product.quantitySold} sold",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}