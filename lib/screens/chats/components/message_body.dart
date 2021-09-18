import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'messages.dart';

enum ApplicationLoginState {
  loggedOut,
  loggedIn,
}

class MessageState extends ChangeNotifier {
  MessageState() {
    init();
  }
  Future<void> init() async {
    await Firebase.initializeApp();

    FirebaseAuth.instance.userChanges().listen((User? user) {
      if (user != null) {
        _loginState = ApplicationLoginState.loggedIn;
        _messageBoardSubscription = FirebaseFirestore.instance
            .collection('board')
            .orderBy('timestamp', descending: true)
            .snapshots()
            .listen((snapshot) {
          _messageBoards = [];
          snapshot.docs.forEach((document) {
            _messageBoards.add(
              MessageBoard(
                name: document.data()['name'],
                message: document.data()['text'],
              ),
            );
          });
          notifyListeners();
        });
      } else {
        _loginState = ApplicationLoginState.loggedOut;
        _messageBoards = [];
        _messageBoardSubscription?.cancel();
      }
      notifyListeners();
    });
  }

  ApplicationLoginState _loginState = ApplicationLoginState.loggedOut;
  ApplicationLoginState get loginState => _loginState;

  StreamSubscription<QuerySnapshot>? _messageBoardSubscription;
  List<MessageBoard> _messageBoards = [];
  List<MessageBoard> get messageBoards => _messageBoards;

  Future<DocumentReference> addMessageToBoard(String message) {
    if (_loginState != ApplicationLoginState.loggedIn) {
      throw Exception('Must be logged in');
    }

    return FirebaseFirestore.instance.collection('board').add(<String, dynamic>{
      'text': message,
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'name': FirebaseAuth.instance.currentUser!.displayName,
      'userId': FirebaseAuth.instance.currentUser!.uid,
    });
  }
}

class MessageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Consumer<MessageState>(
          builder: (context, appState, _) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (appState.loginState == ApplicationLoginState.loggedIn) ...[
                Messages(
                  addMessage: (String message) =>
                      appState.addMessageToBoard(message),
                  messages: appState.messageBoards,
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}