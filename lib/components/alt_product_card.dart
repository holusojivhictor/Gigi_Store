import 'package:flutter/material.dart';
import 'package:gigi_store/constants.dart';
import 'package:gigi_store/models/Products.dart';
import 'package:gigi_store/size_config.dart';

class AltProductCard extends StatelessWidget {
  final double height, aspectRatio;
  final Product product;
  final GestureTapCallback press;
  final GestureTapCallback pressMenu;

  const AltProductCard({
    this.height = 110,
    this.aspectRatio = 1,
    required this.product,
    required this.press,
    required this.pressMenu,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: getProportionateScreenWidth(7),
        bottom: getProportionateScreenWidth(5),
      ),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          height: getProportionateScreenHeight(height),
          child: Row(
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
              const SizedBox(width: 10),
              SizedBox(
                width: 220,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(product.title,
                      style: TextStyle(color: Constants.black, fontSize: getProportionateScreenWidth(6.5)),
                      maxLines: 2,
                    ),
                    SizedBox(height: 3),
                    Row(
                      children: [
                        Text(product.condition,
                          style: TextStyle(color: Constants.black, fontSize: getProportionateScreenWidth(5)),
                        ),
                        const SizedBox(width: 3),
                        Icon(Icons.circle, color: Colors.grey, size: 5),
                        const SizedBox(width: 3),
                        Text(product.manufacturer,
                          style: TextStyle(color: Constants.black, fontSize: getProportionateScreenWidth(5)),
                        ),
                      ],
                    ),
                    SizedBox(height: 2),
                    Row(
                      children: [
                        Text("${product.rating}",
                          style: TextStyle(color: Constants.black, fontSize: getProportionateScreenWidth(5)),
                          maxLines: 2,
                        ),
                        const SizedBox(width: 3),
                        Icon(Icons.favorite, size: 10),
                      ],
                    ),
                    SizedBox(height: 2),
                    Text("\$${product.price}",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(7),
                        fontWeight: FontWeight.w600,
                        color: Constants.kPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}