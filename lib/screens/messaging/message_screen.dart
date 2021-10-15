import 'package:flutter/material.dart';
import 'package:gigi_store/components/custom_bottom_nav_bar.dart';
import 'package:gigi_store/enums.dart';
import 'package:gigi_store/screens/messaging/components/empty_message_screen.dart';

class MessageScreen extends StatelessWidget {
  static String routeName = 'message_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => EmptyMessageScreen()));
        },
        child: Icon(Icons.message),
      ),
    );
  }
}