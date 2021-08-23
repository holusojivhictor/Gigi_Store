import 'package:flutter/material.dart';
import 'package:gigi_store/models/products.dart';

import '../constants.dart';
import '../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    this.width = 60,
    this.aspectRatio = 1.02,
    required this.product,
  });

  final double width, aspectRatio;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(10)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: Column(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(product.price,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(7),
                    fontWeight: FontWeight.w600,
                    color: Constants.kPrimaryColor,
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {},
                  child: Container(
                    width: getProportionateScreenWidth(13),
                    height: getProportionateScreenWidth(13),
                    decoration: BoxDecoration(
                      color: product.isFavourite
                          ? Constants.kPrimaryColor.withOpacity(0.15)
                          : Constants.kSecondaryColor.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.favorite,
                      size: getProportionateScreenWidth(7),
                      color: product.isFavourite
                          ? Color(0xFFFF4848)
                          : Color(0xFFDBDEE4),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}