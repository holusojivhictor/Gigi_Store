import 'package:flutter/material.dart';
import 'package:gigi_store/models/Products.dart';
import 'package:gigi_store/screens/details/components/body.dart';

import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details_screen";
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(rating: arguments.product.rating),
      body: Body(product: arguments.product),
    );
  }
}


//Quick note, we also use our products here so we need to create an arguments class cos we are using routes
class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}