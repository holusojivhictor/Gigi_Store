import 'package:flutter/material.dart';
import 'package:gigi_store/models/chat_users.dart';
import 'package:gigi_store/models/message_manager.dart';
import 'package:gigi_store/screens/chats/components/contact_card.dart';
import 'package:gigi_store/screens/messaging/components/message_page.dart';
import 'package:provider/provider.dart';

class UserProfiles extends StatelessWidget {
  const UserProfiles({Key? key}) : super(key: key);
  static String routeName = "user_profiles";

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MessageManager>(
      create: (context) => MessageManager(),
      child: Builder(builder: buildButton),
    );
  }

  Widget buildButton(BuildContext context) {
    final manager = Provider.of<MessageManager>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ...List.generate(
              demoUsers.length, (index) => Column(
              children: [
                ContactCard(
                  chatUsers: demoUsers[index],
                  press: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => MessagePage(
                          onCreate: (item) {
                            manager.addItem(item);
                            // Navigator.pop(context);
                          },
                          onUpdate: (item) {},
                        )),
                    );
                  },
                ),
                const Divider(height: 6),
              ],
            ),
            ),
            MaterialButton(
              child: const Text("Explore"),
              textColor: Colors.white,
              color: Colors.black,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => MessagePage(
                      onCreate: (item) {
                        manager.addItem(item);
                        // Navigator.pop(context);
                      },
                      onUpdate: (item) {},
                    )),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}