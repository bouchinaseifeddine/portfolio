import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';

abstract class AppStyles {
  static TextStyle styleMedium26(context) {
    return const TextStyle(
      color: Colors.white,
      fontSize: 26,
      fontFamily: kPoppins,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold32(context) {
    return const TextStyle(
      color: Colors.white,
      fontSize: 32,
      fontFamily: kPoppins,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold24(context) {
    return const TextStyle(
      color: Colors.white,
      fontSize: 24,
      fontFamily: kPoppins,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleBold15(context) {
    return const TextStyle(
      color: Colors.white,
      fontSize: 15,
      fontFamily: kPoppins,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleNormal15(context) {
    return const TextStyle(
      color: kPrimaryColor,
      fontSize: 15,
      fontFamily: kPoppins,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleLight15(context) {
    return const TextStyle(
      color: kLightGrayColor,
      fontSize: 15,
      fontFamily: kPoppins,
      fontWeight: FontWeight.w300,
    );
  }
}
