import 'package:flutter/material.dart';
import 'package:gigi_store/constants.dart';
import 'package:gigi_store/models/Products.dart';
import 'package:gigi_store/screens/details/components/body.dart';

import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details_screen";
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Constants.white,
      appBar: CustomAppBar(rating: arguments.product.rating),
      body: Body(product: arguments.product),
    );
  }
}


class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}