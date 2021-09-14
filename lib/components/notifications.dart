import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gigi_store/models/Products.dart';
import 'package:gigi_store/screens/details/details_screen.dart';

import '../size_config.dart';
import 'notification_card.dart';

class NotifElements {
  final String image, text, subtitle;

  const NotifElements({required this.image, required this.subtitle, required this.text});
}

class Notifications extends StatefulWidget {
  static String routeName = "/notifications_screen";

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(40)),
            ...List.generate(
              notificationProducts.length,
              (index) => Column(
                children: [
                  Dismissible(
                    direction: DismissDirection.endToStart,
                    key: Key(notificationProducts[index].toString()),
                    background: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFE6E6),
                      ),
                      child: Row(
                        children: [
                          Spacer(),
                          Icon(Icons.delete),
                        ],
                      ),
                    ),
                    onDismissed: (direction) {
                        setState(() {
                          notificationProducts.removeAt(index);
                        });
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(10)),
                      child: NotificationCard(
                        text: notificationProducts[index].notifTitle,
                        subtitle: notificationProducts[index].description,
                        image: notificationProducts[index].images[0],
                        press: () {
                          Navigator.pushNamed(context, DetailsScreen.routeName,
                            arguments: ProductDetailsArguments(
                                product: notificationProducts[index]),
                          );
                        },
                      ),
                    ),
                  ),
                  const Divider(thickness: 1),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}