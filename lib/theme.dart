import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

ThemeData theme(BuildContext context) {
  return ThemeData(
    appBarTheme: appBarTheme(),
    scaffoldBackgroundColor: Constants.white,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: textTheme(context),
    inputDecorationTheme: inputDecorationTheme(),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.indigo).copyWith(secondary: Constants.kPrimaryLightColor),
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(color: Constants.kTextColor),
      gapPadding: 10,
    );
  return InputDecorationTheme(
    //floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(
      horizontal: 45,
      vertical: 20,
    ),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme(BuildContext context) => GoogleFonts.latoTextTheme(Theme.of(context).textTheme);

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Constants.white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Constants.black),
    textTheme: TextTheme(headline6: TextStyle(color: Colors.black54, fontSize: 19)),
  );
}