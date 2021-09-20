import 'package:firebase_auth/firebase_auth.dart';
import 'package:twitter_login/twitter_login.dart';

class Resource{

  final Status status;
  Resource({required this.status});
}

enum Status {
  Success,
  Error,
  Cancelled
}

class FirebaseTwitterService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<Resource?> signInWithTwitter() async {
    final twitterLogin = TwitterLogin(
      apiKey: "<vO5F6rLiLlWUlNYVxheRHXn9R>",
      apiSecretKey: "<o03O9njH4ChvyKUWqDGTRDbLm0HwvHaP2SFaHAeD6bOEZW55pc>",
      redirectURI: "gigi-store://",
    );
    final authResult = await twitterLogin.login();

    switch (authResult.status) {
      case TwitterLoginStatus.loggedIn:
        final AuthCredential twitterAuthCredential =
        TwitterAuthProvider.credential(
            accessToken: authResult.authToken!,
            secret: authResult.authTokenSecret!);

        final userCredential =
        await _auth.signInWithCredential(twitterAuthCredential);
        return Resource(status: Status.Success);
      case TwitterLoginStatus.cancelledByUser:
        return Resource(status: Status.Success);
      case TwitterLoginStatus.error:
        return Resource(status: Status.Error);
      default:
        return null;
    }
  }
}