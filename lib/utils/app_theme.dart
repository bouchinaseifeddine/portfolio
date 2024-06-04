import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';

class AppTheme {
  static final ThemeData darkTheme = ThemeData(
    inputDecorationTheme: InputDecorationTheme(
      // labelStyle: TextStyle(
      //   color: primaryColor,
      //   fontWeight: FontWeight.w600,
      //   fontSize: 16,
      // ),

      contentPadding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),

      hintStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: kLightGrayColor,
      ),
      errorStyle: const TextStyle(fontSize: 12, color: Colors.redAccent),
      enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 0, color: klightWhiteColor),
          borderRadius: BorderRadius.circular(10)),
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 0.7, color: kPrimaryColor),
          borderRadius: BorderRadius.circular(10)),
      errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 0.7, color: Colors.redAccent),
          borderRadius: BorderRadius.circular(10)),
    ),
  );
}
