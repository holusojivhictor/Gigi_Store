import 'package:flutter/widgets.dart';
import 'package:gigi_store/components/notifications.dart';
import 'package:gigi_store/screens/cart/cart_screen.dart';
import 'package:gigi_store/screens/chats/chats_screen.dart';
import 'package:gigi_store/screens/chats/components/chat_page.dart';
import 'package:gigi_store/screens/chats/components/contacts.dart';
import 'package:gigi_store/screens/complete_profile/complete_profile_screen.dart';
import 'package:gigi_store/screens/details/details_screen.dart';
import 'package:gigi_store/screens/favorites/favorites.dart';
import 'package:gigi_store/screens/forgot_password/forgot_password_screen.dart';
import 'package:gigi_store/screens/home/home_screen.dart';
import 'package:gigi_store/screens/login_success/login_success_screen.dart';
import 'package:gigi_store/screens/messaging/components/user_profiles.dart';
import 'package:gigi_store/screens/messaging/message_screen.dart';
import 'package:gigi_store/screens/otp_screen/otp_screen.dart';
import 'package:gigi_store/screens/profile/profile_screen.dart';
import 'package:gigi_store/screens/sign_in/sign_in.dart';
import 'package:gigi_store/screens/sign_up/sign_up_screen.dart';
import 'package:gigi_store/screens/splash/onboarding.dart';

final Map<String, WidgetBuilder> routes = {
  OnBoarding.routeName: (context) => OnBoarding(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  LogInSuccessScreen.routeName: (context) => LogInSuccessScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  ChatsScreen.routeName: (context) => ChatsScreen(),
  Notifications.routeName: (context) => Notifications(),
  Favorites.routeName: (context) => Favorites(),
  ChatPage.routeName: (context) => ChatPage(),
  Contacts.routeName: (context) => Contacts(),
  MessageScreen.routeName: (context) => MessageScreen(),
  UserProfiles.routeName: (context) => UserProfiles(),
};
