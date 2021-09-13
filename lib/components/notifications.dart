import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class Notifications extends StatefulWidget {
  static String routeName = "/notifications_screen";

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> elements = [
      {"image": "assets/images/goku_action_figure_1.png",
        "text": "SELLER OFFER: US \$49.99",
        "subtitle" : "Wireless Controller for PS4 gives you what you want in your gaming experience "
            "from precision control to sharing and receiving this and the other thing",
      },
      {"image": "assets/images/huawei_mate_40_black_1.png",
        "text": "WATCHED ITEM REMINDER",
        "subtitle" : "Wireless Controller for PS4 gives you what you want in your gaming experience "
            "from precision control to sharing and receiving this and the other thing",
      },
      {"image": "assets/images/ps4_console_white_1.png",
        "text": "SELLER OFFER: US \$59.99",
        "subtitle" : "Wireless Controller for PS4 gives you what you want in your gaming experience "
            "from precision control to sharing and receiving this and the other thing",
      },
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(40)),
            ...List.generate(elements.length, (index) => Column(
              children: [
                buildNotif(elements, index),
                const Divider(thickness: 1),
              ],
            ),
            ),
          ],
        ),
      ),
    );
  }

  Dismissible buildNotif(List<Map<String, dynamic>> elements, int index) {
    return Dismissible(
      direction: DismissDirection.endToStart,
      key: Key(elements[index][index].toString()),
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
          elements.remove(elements[index][index].toString());
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        child: NotificationCard(
          text: elements[index]["text"],
          subtitle: elements[index]["subtitle"],
          image: elements[index]["image"],
          press: () {},
        ),
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final String text, subtitle, image;
  final GestureTapCallback press;
  NotificationCard({required this.text, required this.image, required this.subtitle, required this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 75,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Constants.kSecondaryColor.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image.asset(image, fit: BoxFit.contain),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(text,
                        style: TextStyle(color: Constants.black, fontSize: getProportionateScreenWidth(7)),
                      ),
                      Text(subtitle,
                        style: TextStyle(color: Colors.black54, fontSize: getProportionateScreenWidth(5.5)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}