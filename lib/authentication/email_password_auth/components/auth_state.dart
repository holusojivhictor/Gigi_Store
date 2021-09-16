import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gigi_store/screens/login_success/login_success_screen.dart';
import 'package:gigi_store/screens/sign_in/sign_in.dart';
import 'package:gigi_store/screens/sign_up/sign_up_screen.dart';
import 'package:gigi_store/screens/splash/onboarding.dart';

enum ApplicationLoginState {
  loggedOut,
  loggedIn,
  emailAddress,
  register,
}

class EmailAuthentication extends StatelessWidget {
  const EmailAuthentication({
    required this.loginState,
    required this.email,
    required this.cancelRegistration,
    required this.registerAccount,
    required this.signInWithEmailAndPassword,
    required this.signOut,
    required this.startLoginFlow,
});

  final ApplicationLoginState loginState;
  final String? email;
  final void Function() startLoginFlow;
  final void Function(String email, String password, void Function(Exception e) error) signInWithEmailAndPassword;
  final void Function() cancelRegistration;
  final void Function(String email, String displayName, String password, void Function(Exception e) error) registerAccount;
  final void Function() signOut;

  @override
  Widget build(BuildContext context) {
    switch (loginState) {
      case ApplicationLoginState.loggedOut:
        return OnBoarding();
      case ApplicationLoginState.emailAddress:
        return SignInScreen();
      case ApplicationLoginState.register:
        return SignUpScreen();
      case ApplicationLoginState.loggedIn:
        return LogInSuccessScreen();
      default:
        return Row(
          children: [
            Text("Internal error, this shouldn't happen..."),
          ],
        );
    }
  }
}