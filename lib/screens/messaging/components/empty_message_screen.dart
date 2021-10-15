import 'package:flutter/material.dart';

class EmptyMessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Inbox Empty", style: Theme.of(context).textTheme.headline6),
            const SizedBox(height: 15),
            const Text(
              'New here?\n'
                  'Tap the message button to started!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}