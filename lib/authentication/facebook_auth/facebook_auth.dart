import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:gigi_store/screens/login_success/login_success_screen.dart';

class FacebookLoginState {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future facebookLogIn({required BuildContext context}) async {
    try {
      final LoginResult facebookLoginResult = await FacebookAuth.instance.login();
      final userData = await FacebookAuth.instance.getUserData();

      final String token = facebookLoginResult.accessToken!.token;

      final AuthCredential facebookAuthCredential = FacebookAuthProvider.credential(token);
      await _auth.signInWithCredential(facebookAuthCredential);

      await FirebaseFirestore.instance.collection('users').add({
        'email': userData['email'],
        'imageUrl': userData['picture']['data']['url'],
        'name': userData['name'],
      });

      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (_) => LogInSuccessScreen()), (route) => false);
    } on FirebaseAuthException catch (e) {
      var content = '';
      switch (e.code) {
        case 'account-exists-with-different-credential':
          content = 'This account exists with a different sign in provider';
          break;
        case 'invalid-credential':
          content = 'Unknown error has occurred';
          break;
        case 'operation-not-allowed':
          content = 'This operation is not allowed';
          break;
        case 'user-disabled':
          content = 'The user you tried to log in is disabled';
          break;
        case 'user-not-found':
          content = 'The user you tried to log into was not found';
          break;
      }

      showDialog(context: context, builder: (context) => AlertDialog(
        title: Text("Log in with Facebook failed"),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();},
            child: Text("Ok"),
          ),
        ],
      ));
    }
  }
}
