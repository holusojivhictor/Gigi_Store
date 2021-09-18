import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:gigi_store/authentication/email_password_auth/components/auth_state.dart';
import 'package:gigi_store/routes.dart';
import 'package:gigi_store/screens/chats/components/message_body.dart';
import 'package:gigi_store/screens/splash/onboarding.dart';
import 'package:gigi_store/theme.dart';
import 'package:provider/provider.dart';

// import 'authentication/email_password_auth/email_password_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ChangeNotifierProvider(
      create: (context) => MessageState(),
      builder: (context, _) => GigiStore(),
    ),
  );
}

class GigiStore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gigi Store',
      theme: theme(context),
      // home: Homepage(),
      initialRoute: OnBoarding.routeName,
      routes: routes,
    );
  }
}

/*
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gigi Store"),
      ),
      body: Consumer<ApplicationState>(
        builder: (context, appState, _) => EmailAuthentication(
          email: appState.email,
          loginState: appState.loginState,
          startLoginFlow: appState.startLoginFlow,
          signInWithEmailAndPassword: appState.signInWithEmailAndPassword,
          cancelRegistration: appState.cancelRegistration,
          registerAccount: appState.registerAccount,
          signOut: appState.signOut,
        ),
      ),
    );
  }
}*/
