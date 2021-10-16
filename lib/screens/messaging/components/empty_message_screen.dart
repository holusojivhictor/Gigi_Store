import 'package:flutter/material.dart';
import 'package:gigi_store/constants.dart';
import 'package:gigi_store/models/tab_manager.dart';
import 'package:provider/provider.dart';

class EmptyMessageScreen extends StatelessWidget {
  const EmptyMessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Icon(Icons.message, size: 60),
            ),
            const SizedBox(height: 15),
            Text("Inbox Empty", style: Theme.of(context).textTheme.headline6),
            const SizedBox(height: 15),
            const Text(
              'New here?\n'
                  'Tap the message button to started!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 15),
            MaterialButton(
              color: Constants.kPrimaryColor,
              textColor: Colors.white,
              child: const Text("Set up profile"),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              onPressed: () {
                Provider.of<TabManager>(context, listen: false).goToProfile(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}